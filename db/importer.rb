class Importer
  def self.create_list
#    file = File.open("BirdList_test.csv")
    file = File.open("BirdList.csv")
    list = BirdList.new(:name => "Southern African")

    while (line = file.gets)
      puts line
      elements = line.split(",")
      bird_entry = BirdEntry.new()
      bird_entry.bird_id = value(elements[0])
      bird_entry.name = value(elements[1])
      bird_entry.seen = true if elements[2] && elements[2].strip == 'a'

      place = value(elements[3])
      date = value(elements[4])
      if (place || date)
        sighting = Sighting.new(:place => place, :date => date)
        bird_entry.add_sighting(sighting)
      end

      list.add_entry(bird_entry)
    end
    list.save

    file.close
  end

  def self.value(element)
    element.strip if element && !element.empty?
  end
end
