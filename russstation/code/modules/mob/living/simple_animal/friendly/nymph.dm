/mob/living/simple_animal/friendly/nymph
	name = "diona nymph"
	desc = "A strange plant-like creature"
	icon = 'russstation/icons/mob/nymph.dmi'
	icon_state = "nymph"
	icon_living = "nymph"
	icon_dead = "nymph_dead"

	turns_per_move = 4
	response_help_continuous = "pets"
	response_help_simple = "pet"
	response_disarm_continuous = "gently pushes aside"
	response_disarm_simple = "gently push aside"
	response_harm_continuous = "kicks"
	response_harm_simple = "kick"
	speak_emote = list("chirrups")

	maxHealth = 50
	health = 50
	harm_intent_damage = 3
	unsuitable_atmos_damage = 0
	minbodytemp = TCMB
	maxbodytemp = T0C + 40

	friendly_verb_continuous = "nudges"
	friendly_verb_simple = "nudge"
	
	density = FALSE
	movement_type = GROUND
	pass_flags = PASSTABLE | PASSMOB
	ventcrawler = VENTCRAWLER_ALWAYS
	mob_size = MOB_SIZE_TINY
	mob_biotypes = MOB_ORGANIC|MOB_BUG
	gold_core_spawnable = FRIENDLY_SPAWN
	
	verb_say = "chirrups"
	verb_ask = "chirrups inquisitively"
	verb_exclaim = "chirrups intensely"
	verb_yell = "chirrups intensely"


/mob/living/simple_animal/friendly/nymph/Initialize()
	. = ..()
	verbs += /mob/living/proc/lay_down

/mob/living/simple_animal/friendly/nymph/update_mobility()
	..()
	if(client && stat != DEAD)
		if (resting)
			icon_state = "[icon_living]_sleep"
		else
			icon_state = "[icon_living]"
	regenerate_icons()
