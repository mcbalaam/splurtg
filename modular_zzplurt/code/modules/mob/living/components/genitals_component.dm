/datum/component/genitals
	var/list/genitalia = list(
		"vagina" = null,
		"anus" = null,
		"nipples" = null,
		"penis" = null
	)

/datum/component/genitals/Initialize()
	if(!ismob(parent))
		return COMPONENT_INCOMPATIBLE
