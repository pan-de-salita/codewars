# frozen_string_literal: true

# stations is a list/array of distances (miles) from one station to the
# next along the Pony Express route.
#
# Implement the riders method/function, to return how many riders are
# necessary to get the mail from one end to the other.
#
# NOTE: Each rider travels as far as he can, but never more than 100 miles.

# iter 1
def riders(stations)
  riders = 1
  distance = 0

  stations.each do |station|
    distance += station
    if distance > 100
      riders += 1
      distance = station
    end
  end

  riders
end
