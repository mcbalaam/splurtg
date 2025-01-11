/mob/living/carbon/human/get_heat_protection_flags(temperature)
	. = ..()
	// SPLURT EDIT - Extra inventory
	if(w_underwear)
		if(w_underwear.max_heat_protection_temperature && w_underwear.max_heat_protection_temperature >= temperature)
			. |= w_underwear.heat_protection
	if(w_socks)
		if(w_socks.max_heat_protection_temperature && w_socks.max_heat_protection_temperature >= temperature)
			. |= w_socks.heat_protection
	if(w_shirt)
		if(w_shirt.max_heat_protection_temperature && w_shirt.max_heat_protection_temperature >= temperature)
			. |= w_shirt.heat_protection
	if(w_bra)
		if(w_bra.max_heat_protection_temperature && w_bra.max_heat_protection_temperature >= temperature)
			. |= w_bra.heat_protection
	if(wrists)
		if(wrists.max_heat_protection_temperature && wrists.max_heat_protection_temperature >= temperature)
			. |= wrists.heat_protection
	//

/mob/living/carbon/human/handle_arousal()
	var/datum/component/interactable/I = GetComponent(/datum/component/interactable)
	if(!I)
		return

	if(I.get_arousal() > 0)
		I.set_arousal(I.get_arousal() - 1)
	if(I.get_pleasure() > 0)
		I.set_pleasure(I.get_pleasure() - 1)
