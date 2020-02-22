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
  data.each do |trait_type, trait_data|
    trait_type.each do |specific_trait, names_array|
      names_array.map do |name|
        pigeon_list[name][trait_type].push(trait.to_s)
      end
    end
  end
  pigeon_list
end


  
