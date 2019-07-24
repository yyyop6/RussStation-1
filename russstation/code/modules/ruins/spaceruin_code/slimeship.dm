/obj/item/circuitboard/computer/russ/slimeship
	build_path = /obj/machinery/computer/shuttle/russ/slimeship

/obj/machinery/computer/shuttle/russ/slimeship
	name = "Slime Ship Shuttle Console"
	desc = "Used to control the Slime Ship."
	circuit = /obj/item/circuitboard/computer/russ/slimeship
	shuttleId = "slimeship"
	possible_destinations = "whiteship_away;whiteship_home;whiteship_z4;whiteship_lavaland;slimeship_custom"

/obj/machinery/computer/camera_advanced/shuttle_docker/russ/Initialize()
	. = ..()
	GLOB.jam_on_wardec += src

/obj/machinery/computer/camera_advanced/shuttle_docker/russ/Destroy()
	GLOB.jam_on_wardec -= src
	return ..()

/obj/machinery/computer/camera_advanced/shuttle_docker/russ/slimeship
	name = "Slime Ship Navigation Computer"
	desc = "Used to designate a precise transit location for the Slime Ship."
	shuttleId = "slimeship"
	lock_override = NONE
	shuttlePortId = "slimeship_custom"
	jumpto_ports = list("whiteship_away" = 1, "whiteship_home" = 1, "whiteship_z4" = 1)
	view_range = 18
	x_offset = -16
	y_offset = 0
	designate_time = 100
