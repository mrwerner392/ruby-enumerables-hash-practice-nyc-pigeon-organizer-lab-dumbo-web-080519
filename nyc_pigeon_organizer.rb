# reorganize data in a hash, changing the keys and values
def nyc_pigeon_organizer(data)
  new_data = {}
  data.keys.each do |item|
    data[item].keys.each do |item2|
      data[item][item2].each do |array_elem|
        if new_data[array_elem]
          if new_data[array_elem][item]
            new_data[array_elem][item].push(item2.to_s)
          else
            new_data[array_elem][item] = [item2.to_s]
          end
        else
          new_data[array_elem] = {item => [item2.to_s]}
        end
      end
    end
  end
  new_data
end
