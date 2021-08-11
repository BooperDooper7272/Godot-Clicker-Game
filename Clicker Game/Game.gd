extends Control

var score = 0
var add = 1
var addpersec = 1


func _on_Timer_timeout():
	score += addpersec #After the Timer resets, add the add per second to the score.

func _process(_delta):
	$Score.text = str(score) #Change the text to the current score every frame.

var CPSRequirement = 5 #Clicks required to upgrade Clicks Per Second
var CPCRequirement = 5 #Clicks required to upgrade Clicks Per Click

func _on_Button2_pressed():
	if score >= CPCRequirement:
		score -= CPCRequirement
		CPCRequirement = CPCRequirement * 2
		add = add * 2 #Multiply CPC.
		$VBoxContainer/Button2.text = str("2X CPC [", CPCRequirement, "]") #Combine multiple strings to show the required clicks.
		$Label3.text = str("CPC:", add)


func _on_Click_pressed():
	score += add


func _on_Button_pressed():
	if score >= CPSRequirement:
		score -= CPSRequirement
		CPSRequirement = CPSRequirement * 2
		addpersec = addpersec * 2 #Multiply CPS.
		$VBoxContainer/Button.text = str("2X CPS [", CPSRequirement, "]") #Combine multiple strings to show the required clicks.
		$Label2.text = str("CPS:", addpersec)
