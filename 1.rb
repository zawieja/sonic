use_bpm 60
live_loop :bass do
  
  use_synth (ring :tb303, :blade, :tri).tick
  2.times do
    #play (scale :c3, :minor_pentatonic), release: 2
    sample :ambi_piano
    sleep 1
    sample :ambi_piano, beat_stretch: 2.5
    sleep 1
  end
  2.times do
    #play (scale :e3, :minor_pentatonic) , release: 1.5, pan: 0.3
    sample :ambi_piano, rate: 1
    sleep 2
  end
end

live_loop :amen do
  
  sample :loop_amen, beat_stretch: 2
  sleep 2
end

live_loop :drum do
  
  sample :drum_bass_hard, beat_stretch: 1
  sleep 1
end

live_loop :drum2 do
  
  with_fx :ping_pong do
    sample :drum_tom_hi_hard, beat_stretch: 1
    sleep 2
  end
end

define :ambioLoop do
  sample :loop_drone_g_97, beat_stretch: 4 , attack: 4
  sleep 4
  2.times do
    sample :loop_drone_g_97, beat_stretch: 4
    sleep 4
  end
  sample :loop_drone_g_97, beat_stretch: 4 , release: 4
end

define :robot do
  sample :mehackit_robot1
  sleep 1
  sample :mehackit_robot3
  sleep 1
  sample :mehackit_robot4
  sleep 1
  sample :mehackit_robot5
end


define :intro do
  sample :vinyl_scratch
  sleep 0.5
  sample :vinyl_scratch
  sleep 0.75
  sample :vinyl_rewind
  sleep 4
end

#intro
#robot
#ambioLoop
