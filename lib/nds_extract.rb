$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  i=0
  gross_total = 0
  mov_length = director_data[:movies].length
  #setting var's
    while i < mov_length do
    gross_total += director_data[:movies][i][:worldwide_gross]
    i += 1
    end
return gross_total
end
############################
def directors_totals(nds)

  while name_i < nds.length do
      insert_name = nds[name_i][:name]

        result[insert_name] + gross_for_director(director_data)
end
  result = {}
return result
end


# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

#
# name_i = 0
# names = ""
# insert_name = ""
# result = {
# }
#       while name_i < nds.length do
#       insert_name = nds[name_i][:name]
#
#             second_count = 0
#             each_total = 0
#             while second_count < nds[name_i][:movies].length do
#                 each_total += nds[name_i][:movies][second_count][:worldwide_gross]
#                 second_count += 1
#             end
#
#             name_i +=1
# result[insert_name] = each_total
#       end
#
# pp result
#   return result
# end
