
def conference_badges(badge)
  return badge
end

def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  index = 0
  newArray = []
  while index < attendees.size do
    newArray << badge_maker(attendees[index])
    index += 1
  end
  return newArray
end

def assign_rooms(attendees)
  assign_rooms = []
  roomIndex = 0
  while roomIndex < attendees.size do
    assign_rooms << "Hello, #{attendees[roomIndex]}! You'll be assigned to room #{roomIndex+1}!"
    roomIndex += 1
  end
  return assign_rooms
end

def printer(attendees)
  batch_badge_creator(attendees).each { |message| puts message }
  assign_rooms(attendees).each { |room_assignment| puts room_assignment }
end