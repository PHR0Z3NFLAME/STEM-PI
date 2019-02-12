#Gravity Falls Theme
#By Mackenzie -w/ Cherry Pi group (Jacob, Brian L and Robbie)

use_bpm 165

define :rest do
  1.times do
    play_pattern_timed [:r], [4]
  end
end


define:treb1 do
  1.times do
    play_pattern_timed [:d4,:e4],[3,1]
  end
end


define:treb2 do
  1.times do
    play_pattern_timed [:f4,:a4,:g4,:a4,:c4], [4,1.5,1.5,1,4]
  end
end


define :treb3 do
  1.times do
    play_pattern_timed [:f4,:a4,:g4,:a4,:c4], [4,1.5,1.5,1,4]
  end
end


define :treb4 do
  1.times do
    play_pattern_timed [:r,:f4,:f4,:f4], [1,1,1,1]
  end
end


define :treb5 do
  1.times do
    play_pattern_timed [:a4,:a4,:g4,:f4], [1,1,1,1]
  end
end


define :treb6 do
  1.times do
    play_pattern_timed [:r,:a4,:a4,:a4], [1,1,1,1]
  end
end


define :treb7 do
  1.times do
    play_pattern_timed [:g4,:a4,:g4,:f4], [1,1,1,1]
  end
end


define :treb8 do
  1.times do
    play_pattern_timed [:r,:cs5,:cs5,:cs5], [1,1,1,1]
  end
end


define :treb9 do
  1.times do
    play_pattern_timed [:r,:bb4,:bb4,:bb4], [1,1,1,1]
  end
end


define :treb10 do
  1.times do
    play_pattern_timed [:g4,:c5], [2,2]
  end
end


define :treb11 do
  1.times do
    play_pattern_timed [:a4,:cs5,:f5,:d5,:f5,:d5,:a4,:cs5,:e5,:cs5,:d5,:r,:d5,:r],[2,2,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,1,1,1,1]
  end
end

define :bass1 do
  2.times do
    play_pattern_timed [:d3,:c3,:a2,:d3], [0.5,0.5,0.5,0.5]
  end
end

define :bass2 do
  2.times do
    play_pattern_timed [:f3,:c3,:a2,:c3],[0.5,0.5,0.5,0.5]
  end
end

define :bass3 do
  3.times do
    play_pattern_timed [:e3,:db3,:a2,:db3], [0.5,0.5,0.5,0.5]
  end
end

define :bass4 do
  1.times do
    play_pattern_timed [:e3,:d3,:a2], [0.5,0.5,1]
  end
end

define :bass5 do
  2.times do
    play_pattern_timed [:d2,:a2,:d3,:a2], [0.5,0.5,0.5,0.5]
  end
end

define :bass6 do
  play_pattern_timed [:d2,:a2,:d3,:a2,:d2,:a2,:d3], [0.5,0.5,0.5,0.5,0.5,0.5,1] do
  end
end

define :bass7 do
  3.times do
    play_pattern_timed [:f2,:c3,:d3,:c3], [0.5,0.5,0.5,0.5]
  end
end

define :bass8 do
  1.times do
    play_pattern_timed [:d3,:c3], [1,1]
  end
end

define :bass9 do
  2.times do
    play_pattern_timed [:bb1,:f2,:bb2,:f2], [0.5,0.5,0.5,0.5]
  end
end

define :bass10 do
  1.times do
    play_pattern_timed [:bb1,:f2,:bb2,:f2,:bb1,:f2,:bb2], [0.5,0.5,0.5,0.5,0.5,0.5,1]
  end
end

define :bass11 do
  play_pattern_timed [:c2,:g2,:c3,:g2,:c2,:g2,:c3], [0.5,0.5,0.5,0.5,0.5,0.5,1] do
  end
end

define :bass12 do
  play_pattern_timed [:a2,:e3,:f3,:e3,:a2,:e3,:f3], [0.5,0.5,0.5,0.5,0.5,0.5,1] do
  end
end


define :bass15 do
  play_pattern_timed [:f2,:c3,:f3,:c3,:f3], [0.5,0.5,0.5,0.5,0.5,0.5,1] do
  end
end

define :bass19 do
  play_pattern_timed [:c2,:g2,:c3,:g2,:c2,:g2,:c3], [0.5,0.5,0.5,0.5,0.5,0.5,1] do
  end
end


define :bass20 do
  play_pattern_timed [:a1,:e2,:a2,:e2,:a1,:e2,:a2], [0.5,0.5,0.5,0.5,0.5,0.5,1] do
  end
end

define :bass22 do
  play_pattern_timed [:f2,:c3,:f3,:c3,:f2,:c3,:f3], [0.5,0.5,0.5,0.5,0.5,0.5,1] do
  end
end


define :bass24 do
  play_pattern_timed [:c1,:g2,:c3,:g2,:c3], [0.5,0.5,0.5,0.5,2] do
  end
end

define :bass25 do
  play_pattern_timed [:a1,:e2,:a2,:e2,:a2], [0.5,0.5,0.5,0.5,2] do
  end
end

define :bass26 do
  play_pattern_timed [:d2,:a2,:d3,:a2,:d3], [0.5,0.5,0.5,0.5,2] do
  end
end

define :bass27 do
  play_pattern_timed [:d3,:r,:d3,:r], [1,1,1,1] do
  end
end

in_thread do
  use_synth :piano
  4.times do
    rest
  end
  treb1
  treb2
  treb1
  treb3
  treb4
  treb5
  treb6
  treb7
  treb4
  treb5
  treb6
  treb8
  treb4
  treb5
  treb9
  treb10
  treb11
end

in_thread do
  use_synth :piano
  bass1
  bass2
  bass3
  bass4
  bass5
  bass6
  bass7
  bass8
  bass9
  bass10
  bass10
  bass11
  bass12
  bass6
  bass6
  bass15
  bass15
  bass10
  bass10
  bass11
  bass20
  bass6
  bass22
  bass10
  bass24
  bass25
  bass26
  bass27
end

in_thread do
  7.times do
    rest
  end
  play_pattern_timed [:r,:r,:f3,:e3], [1,1,1,1] do
    15.times do
      rest
    end
  end
  play_pattern_timed [:r,:c1], [2,2] do
    2.times do
      rest
    end
  end
  play_pattern_timed [:r,:d2], [1,1] do
  end
  
  in_thread do
    26.times do
      rest
    end
  end
  play_pattern_timed [:r,:d3], [1,1] do
  end
end