play 55
sleep 1
play 33
sleep 0.3
sample :loop_amen, start: 0.6, finish: 0.4
sample :loop_amen, start: 0.5, finish: 0.7, rate: 0.2
sample :loop_amen, start: 0.5, finish: 0.8, rate: -0.2, attack: 0.3, release: 1

loop do
  sample :ambi_dark_woosh
  sleep 0.2
  use_synth :dpulse
  sleep 1
  sample :loop_amen, rate: 0.5
  sleep 0.010
  5.times do
    sample :drum_heavy_kick
    3.times do
      sample :ambi_drone, rate: 2
      sleep 0.55
    end
    sample :elec_snare
    5.times do
      sample :drum_tom_mid_soft
      sleep 0.125
    end
  end
  play rrand(50, 95)
  15.times do
    play 50, release: 0.1, cutoff: rrand(60, 120)
    sleep 0.125
  end
  10.times do
    choose([62, 61, 63, 65])
    sample :ambi_choir, rate: 0.5
    sleep 0.5
    sample :ambi_piano, rate: 0.7
    sleep 1.125
  end
end

