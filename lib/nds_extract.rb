$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
gross_index =0
total_gross = 0


while gross_index < director_data[:movies].length do
    total_gross += director_data[:movies][gross_index][:worldwide_gross]
gross_index +=1
  end

  return total_gross


end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
outer_index = 0
result = { }



while outer_index < nds.length do

total_gross1 = 0
result[nds[outer_index][:name]] = gross_for_director(nds[outer_index])

outer_index +=1
end
puts result
result

end
