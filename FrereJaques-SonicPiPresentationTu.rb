#Frere Jacques
#By Mackenzie Heaps -Group Cherry Pi (Jacob Robbie and Brian L)
#start by defining a bpm if using this method
use_bpm 120


#define all the repeating patterns
#I defined all the notes on the Treble Cleft
#The notes on Sonic Pi resemble a keyboard
#therefore middle C is C4

define :intro do
  2.times do
    play_pattern_timed [:c4,:d4,:e4,:c4], [1,1,1,1]
  end
end

#each block consists of 5 lines
#define :name do
#x.times do, loops what follows x times
#play_pattern_timed [:note,...], [time,...]
#end the first end, ends the command to play
#end the second end, ends what is to be defined

define :verse2 do
  2.times do
    play_pattern_timed [:e4,:f4,:g4], [1,1,2]
  end
end
define :verse3 do
  2.times do
    play_pattern_timed [:g4,:a4,:g4,:f4,:e4,:c4], [0.5,0.5,0.5,0.5,1,1]
  end
end
define :verse4 do
  2.times do
    play_pattern_timed [:c4,:r,:c4],[1,1,2]
  end
end
#end of definitions for the treble cleft

#due to the simplicity I have been putting loops
#in my defined function, this can also be done
#in the thread that plays the music
#if we want something to play once
#without a loop use 1.times do, or add do
#to the end of a command to play
#IE play_pattern_timed [ ], [ ] do


#similarly to the treble cleft I define
#the bass here, the bass starts after 8 beats
#so I start by defining a long rest

define :rest do
  2.times do
    play_pattern_timed [:r],[4]
  end
end

define :bass2 do
  2.times do
    play_pattern_timed [:c3,:d3,:e3,:c3],[1,1,1,1]
  end
end
define :bass3 do
  2.times do
    play_pattern_timed [:e3,:f3,:g3], [1,1,2]
  end
end
define :bass4 do
  2.times do
    play_pattern_timed [:e3,:g3,:e3], [1,1,2]
  end
end

#end of defining bass notes


in_thread do
  use_synth :piano
  #there are a variety of synths to choose
  intro
  verse2
  verse3
  verse4
  #call the defined functions in order
end

#a second thread will play at the same time
#as the first thread
in_thread do
  use_synth :piano
  rest
  bass2
  bass3
  bass4
end

in_thread do
  3.times do
    rest
  end
  #a nested loop, a rest loops twice for 8 beats
  #I loop this 3 times for 24 beats
  
  2.times do
    play_pattern_timed [:r,:f3,:r], [1,1,2]
  end
end
#rather then defining something new I inserted
#a pattern directly into the thread
#this plays at the same time as the first 24

