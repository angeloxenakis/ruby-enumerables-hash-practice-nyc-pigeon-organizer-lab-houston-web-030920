require 'pry'
require 'pp'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data[:color].each do |color, names_array| 
    names_array.map do |name|
      if !pigeon_list.include? name
        pigeon_list[name] = {
          :color => [],
          :gender => [],
          :lives => []
        }
      end 
    end 
  end
  data[:color].each do |color, names_array|
    names_array.map do |name|
      pigeon_list[name][:color].push(color.to_s)
    end
 end
   data[:gender].each do |gender, names_array|
    names_array.map do |name|
      pigeon_list[name][:gender].push(gender.to_s)
    end
 end
  data[:lives].each do |location, names_array|
    names_array.map do |name|
      pigeon_list[name][:lives].push(location)
    end
 end
  pigeon_list
end