
Course.create(name: "Rose City GC")
Course.create(name: "Heron Lakes")
Course.create(name: "Pebble Beach")


Hole.create(number: 1, yards: 346, par: 4, score: 3, course_id: 1)
Hole.create(number: 2, yards: 362, par: 4, score: 5, course_id: 1)
Hole.create(number: 3, yards: 484, par: 5, score: 3, course_id: 1)
Hole.create(number: 4, yards: 323, par: 4, score: 3, course_id: 1)
Hole.create(number: 5, yards: 157, par: 3, score: 3, course_id: 1)
Hole.create(number: 6, yards: 395, par: 4, score: 3, course_id: 1)
Hole.create(number: 7, yards: 334, par: 4, score: 6, course_id: 1)
Hole.create(number: 8, yards: 195, par: 3, score: 5, course_id: 1)
Hole.create(number: 9, yards: 397, par: 4, score: 4, course_id: 1)
Hole.create(number: 10, yards: 456, par: 5, score: 3, course_id: 1)
Hole.create(number: 11, yards: 448, par: 5, score: 3, course_id: 1)
Hole.create(number: 12, yards: 186, par: 3, score: 4, course_id: 1)
Hole.create(number: 13, yards: 363, par: 4, score: 5, course_id: 1)
Hole.create(number: 14, yards: 323, par: 4, score: 5, course_id: 1)
Hole.create(number: 15, yards: 122, par: 3, score: 3, course_id: 1)
Hole.create(number: 16, yards: 462, par: 5, score: 3, course_id: 1)
Hole.create(number: 17, yards: 385, par: 4, score: 3, course_id: 1)
Hole.create(number: 18, yards: 426, par: 4, score: 3, course_id: 1)

Hole.create(number: 1, yards: 351, par: 4, score: rand(3..6), course_id: 2)
Hole.create(number: 2, yards: 461, par: 5, score: rand(3..6), course_id: 2)
Hole.create(number: 3, yards: 286, par: 4, score: rand(3..6), course_id: 2)
Hole.create(number: 4, yards: 126, par: 3, score: rand(3..6), course_id: 2)
Hole.create(number: 5, yards: 503, par: 5, score: rand(3..6), course_id: 2)
Hole.create(number: 6, yards: 161, par: 3, score: rand(3..6), course_id: 2)
Hole.create(number: 7, yards: 343, par: 4, score: rand(3..6), course_id: 2)
Hole.create(number: 8, yards: 413, par: 4, score: rand(3..6), course_id: 2)
Hole.create(number: 9, yards: 366, par: 4, score: rand(3..6), course_id: 2)
Hole.create(number: 10, yards: 367, par: 4, score: rand(3..6), course_id: 2)
Hole.create(number: 11, yards: 166, par: 3, score: rand(3..6), course_id: 2)
Hole.create(number: 12, yards: 467, par: 5, score: rand(3..6), course_id: 2)
Hole.create(number: 13, yards: 408, par: 4, score: rand(3..6), course_id: 2)
Hole.create(number: 14, yards: 300, par: 4, score: rand(3..6), course_id: 2)
Hole.create(number: 15, yards: 149, par: 3, score: rand(3..6), course_id: 2)
Hole.create(number: 16, yards: 325, par: 4, score: rand(3..6), course_id: 2)
Hole.create(number: 17, yards: 474, par: 5, score: rand(3..6), course_id: 2)
Hole.create(number: 18, yards: 364, par: 4, score: rand(3..6), course_id: 2)

counter = 1
while counter < 19 do
    Hole.create(number: counter, yards: rand(200-600), par: rand(3...5), course_id: 3)
    counter += 1
end


# Foursome.create(teeTime: Time.new())

2.times do
    Foursome.create(teeTime: Time.new())
end

4.times do 
    Golfer.create(initials: Faker::Name.initials, foursome_id: 1)
end



