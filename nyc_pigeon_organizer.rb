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
      pigeon_list[name][color].push(color.to_s)
    end
 end
  pigeon_list
end


  
