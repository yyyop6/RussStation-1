/turf/open/floor/plating/asteroid/planet
	name = "sand"
	turf_type = /turf/open/floor/plating/asteroid/planet //Because caves do whacky shit to revert to normal
	baseturfs = /turf/open/floor/plating/asteroid/planet
	environment_type = "asteroid"
	floor_variance = 20 //probability floor has a different icon state
	attachment_holes = TRUE
	initial_gas_mix = OPENTURF_DEFAULT_ATMOS

/turf/open/floor/plating/asteroid/airless/cave/planet
	mob_spawn_list = list(/mob/living/simple_animal/hostile/asteroid/goliath/beast/random = 50, /obj/structure/spawner/lavaland/goliath = 3, \
		/mob/living/simple_animal/hostile/asteroid/basilisk/watcher/random = 40, /obj/structure/spawner/lavaland = 2, \
		/mob/living/simple_animal/hostile/asteroid/hivelord/legion/random = 30, /obj/structure/spawner/lavaland/legion = 3, \
		SPAWN_MEGAFAUNA = 6, /mob/living/simple_animal/hostile/asteroid/goldgrub = 10, )

	data_having_type = /turf/open/floor/plating/asteroid/airless/cave/planet/has_data
	turf_type = /turf/open/floor/plating/asteroid/planet
	initial_gas_mix = OPENTURF_DEFAULT_ATMOS

/turf/open/floor/plating/asteroid/airless/cave/planet/has_data //subtype for producing a tunnel with given data
	has_data = TRUE
