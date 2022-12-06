# Ruby is too stronk for me
UNIQ_LENGTH = 14

data = File.read("input.txt").chars.each_cons(UNIQ_LENGTH).to_a.map {|w| w.uniq.length == w.length}

puts data.find_index(true) + UNIQ_LENGTH