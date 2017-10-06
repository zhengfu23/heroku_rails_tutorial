require './scene.rb'
require './central_corridor.rb'
require './laser_weapon_armory.rb'
require './the_bridge.rb'
require './escape_pod.rb'
require './death.rb'
require './finished.rb'

class Map
  @scenes = {
    central_corridor: CentralCorridor.new,
    laser_weapon_armory: LaserWeaponArmory.new,
    the_bridge: TheBridge.new,
    escape_pod: EscapePod.new,
    death: Death.new,
    finished: Finished.new
  }

  def initialize(start_scene)
    @start_scene = start_scene
  end

  def next_scene(scene_name)
    val = @scenes[scene_name]
    return val
  end

  def opening_scene
    return next_scene(opening_scene)
  end
end