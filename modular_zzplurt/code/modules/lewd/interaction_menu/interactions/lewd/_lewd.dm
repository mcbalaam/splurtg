/datum/interaction/lewd
	lewd = TRUE
	color = "pink"
	category = INTERACTION_CAT_LEWD

/datum/interaction/lewd/proc/climax_together(mob/living/carbon/human/user, mob/living/carbon/human/target)
	var/datum/component/interactable/user_i = user.GetComponent(/datum/component/interactable)
	var/datum/component/interactable/target_i = target.GetComponent(/datum/component/interactable)

	if(user_i)
		user_i.set_pleasure(0)
		user_i.set_arousal(0)
	if(target_i)
		target_i.set_pleasure(0)
		target_i.set_arousal(0)
