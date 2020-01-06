$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def gross_for_director(director_data)
  i = 0
  gross = 0
  while i < director_data[:movies].length do
    gross += director_data[:movies][i][:worldwide_gross]
    i += 1
  end
  return gross
end

def directors_totals(nds)
  result = {}
  i = 0
  while i < nds.length do
    result[nds[i][:name]] = gross_for_director(nds[i])
    i += 1
  end
  return result
end
