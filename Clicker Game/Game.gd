extends Control

var score = 0
var add = 1
var addpersec = 1
var combo = 0


func _on_Timer_timeout():
	score += addpersec #After the Timer resets, add the add per second to the score.

func _process(_delta):
	$Score.text = str(score) #Change the text to the current score every frame.

var CPSRequirement = 20 #Clicks required to upgrade Clicks Per Second
var CPCRequirement = 20 #Clicks required to upgrade Clicks Per Click
var CPSRequirement2 = 150 #Clicks required to upgrade Clicks Per Second #2
var CPCRequirement2 = 150 #Clicks required to upgrade Clicks Per Click #2
var CPSRequirement3 = 1400 #Clicks required to upgrade Clicks Per Second #3
var CPCRequirement3 = 1400 #Clicks required to upgrade Clicks Per Click #3
var CPSRequirement4 = 12000 #Clicks required to upgrade Clicks Per Second #4
var CPCRequirement4 = 12000 #Clicks required to upgrade Clicks Per Click #4
var CPSRequirement5 = 200000 #Clicks required to upgrade Clicks Per Second #5
var CPCRequirement5 = 200000 #Clicks required to upgrade Clicks Per Click #5

func _on_CPC1_pressed():
	if score >= CPCRequirement:
		score -= CPCRequirement
		CPCRequirement = round(CPCRequirement * 1.4)
		add = add + 1 #Add CPC
		$VBoxContainer/CPC1.text = str("+1 CPC [", CPCRequirement, "]") #Combine multiple strings to show the required clicks.
		$Label3.text = str("CPC:", add)


func _on_Click_pressed():
	$ClickTimer.start()
	if combo < 25: # Make sure combo doesn't get too high
		combo += 1
	if combo >= 25: # Enable the other sparks when combo is over 25
		$ComboEffect3.emitting = true # More Sparks
	if combo > 15: # Enable the sparks when combo is over 15
		$ComboEffect2.emitting = true # Sparks
	if combo > 10: # Enable the effects when combo is over 10
		score += round(add * (combo / 10))
		$ComboEffect.emitting = true
	if combo <= 10: # No combo
		score += add


func _on_CPS1_pressed():
	if score >= CPSRequirement:
		score -= CPSRequirement
		CPSRequirement = round(CPSRequirement * 1.4)
		addpersec = addpersec + 1 #Add CPS.
		$VBoxContainer/CPS1.text = str("+1 CPS [", CPSRequirement, "]") #Combine multiple strings to show the required clicks.
		$Label2.text = str("CPS:", addpersec)


func _on_ClickTimer_timeout():
	combo = 0
	$ComboEffect.emitting = false # Effects
	$ComboEffect2.emitting = false # Sparks
	$ComboEffect3.emitting = false # More Sparks


func _on_CPS2_pressed():
	if score >= CPSRequirement2:
		score -= CPSRequirement2
		CPSRequirement2 = round(CPSRequirement2 * 1.3)
		addpersec = addpersec + 5 #Add CPS.
		$VBoxContainer/CPS2.text = str("+5 CPS [", CPSRequirement2, "]") #Combine multiple strings to show the required clicks.
		$Label2.text = str("CPS:", addpersec)


func _on_CPC2_pressed():
	if score >= CPCRequirement2:
		score -= CPCRequirement2
		CPCRequirement2 = round(CPCRequirement2 * 1.3)
		add = add + 5 #Add CPC
		$VBoxContainer/CPC2.text = str("+5 CPC [", CPCRequirement2, "]") #Combine multiple strings to show the required clicks.
		$Label3.text = str("CPC:", add)


func _on_CPS3_pressed():
	if score >= CPSRequirement3:
		score -= CPSRequirement3
		CPSRequirement3 = round(CPSRequirement3 * 1.2)
		addpersec = addpersec + 20 #Add CPS.
		$VBoxContainer/CPS3.text = str("+20 CPS [", CPSRequirement3, "]") #Combine multiple strings to show the required clicks.
		$Label2.text = str("CPS:", addpersec)


func _on_CPC3_pressed():
	if score >= CPCRequirement3:
		score -= CPCRequirement3
		CPCRequirement3 = round(CPCRequirement3 * 1.2)
		add = add + 20 #Add CPC
		$VBoxContainer/CPC3.text = str("+20 CPC [", CPCRequirement3, "]") #Combine multiple strings to show the required clicks.
		$Label3.text = str("CPC:", add)


func _on_CPS4_pressed():
	if score >= CPSRequirement4:
		score -= CPSRequirement4
		CPSRequirement4 = round(CPSRequirement4 * 1.1)
		addpersec = addpersec + 125 #Add CPS.
		$VBoxContainer/CPS4.text = str("+125 CPS [", CPSRequirement4, "]") #Combine multiple strings to show the required clicks.
		$Label2.text = str("CPS:", addpersec)


func _on_CPC4_pressed():
	if score >= CPCRequirement4:
		score -= CPCRequirement4
		CPCRequirement4 = round(CPCRequirement4 * 1.1)
		add = add + 125 #Add CPC
		$VBoxContainer/CPC4.text = str("+125 CPC [", CPCRequirement4, "]") #Combine multiple strings to show the required clicks.
		$Label3.text = str("CPC:", add)


func _on_CPS5_pressed():
	if score >= CPSRequirement5:
		score -= CPSRequirement5
		CPSRequirement5 = CPSRequirement5
		addpersec = addpersec + 500 #Add CPS.
		$VBoxContainer/CPS5.text = str("+500 CPS [", CPSRequirement5, "]") #Combine multiple strings to show the required clicks.
		$Label2.text = str("CPS:", addpersec)


func _on_CPC5_pressed():
	if score >= CPCRequirement5:
		score -= CPCRequirement5
		CPCRequirement5 = CPCRequirement5
		add = add + 500 #Add CPC
		$VBoxContainer/CPC5.text = str("+500 CPC [", CPCRequirement5, "]") #Combine multiple strings to show the required clicks.
		$Label3.text = str("CPC:", add)
