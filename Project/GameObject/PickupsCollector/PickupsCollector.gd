# PickupsCollector
# Written by: First

extends Node2D

class_name PickupsCollector

"""
	Enter desc here.
"""

#-------------------------------------------------
#      Classes
#-------------------------------------------------

#-------------------------------------------------
#      Signals
#-------------------------------------------------

#-------------------------------------------------
#      Constants
#-------------------------------------------------

#-------------------------------------------------
#      Properties
#-------------------------------------------------

#-------------------------------------------------
#      Notifications
#-------------------------------------------------

func _process(delta: float) -> void:
	pass

#-------------------------------------------------
#      Virtual Methods
#-------------------------------------------------

#-------------------------------------------------
#      Override Methods
#-------------------------------------------------

#-------------------------------------------------
#      Public Methods
#-------------------------------------------------

func _test_collect(area : Area2D):
	var pickups_object = area.get_owner()
	
	if pickups_object is Pickups:
		pickups_object.collect(self)

#-------------------------------------------------
#      Connections
#-------------------------------------------------

#-------------------------------------------------
#      Private Methods
#-------------------------------------------------

func _on_Area2D_area_entered(area: Area2D) -> void:
	_test_collect(area)

#-------------------------------------------------
#      Setters & Getters
#-------------------------------------------------



