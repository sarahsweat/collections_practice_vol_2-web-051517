# your code goes here
def begins_with_r(array)
  flag = true
  array.each do |element|
    if element[0] != "r"
      flag = false
    end
  end
  flag
end

def contain_a(array)
  container = []
  array.each do |element|
    if element.include?("a")
      container << element
    end
  end
  container
end

def first_wa(array)
  first = nil

  array.each do |element|
    if element.match(/wa/)
      first = element
      break
    end
  end
  first
end

def remove_non_strings(array)
  hold = []
  array.each do |element|
    if element.is_a?(String)
      hold << element
    end
  end
  hold
end

def count_elements(array)
  array.each do |original_hash|
    original_hash[:count] = 0
    name = original_hash[:name]
    array.each do |hash|
      if hash[:name] == name
        original_hash[:count] += 1
      end
    end
  end.uniq
end


def merge_data(keys, values)
  hold = []
  keys.each do |person_name|
    name = person_name[:first_name]
    values.each do |person_data|
      if person_data[name]
        merged_person = person_data[name]
        merged_person[:first_name] = name
        hold << merged_person
      end
    end
  end
  hold
end

def find_cool(array)
  hold = []
  array.each do |element|
    if element[:temperature] == "cool" 
      hold << element 
    end
  end
  hold
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |name, location_hash|
    location = location_hash[:location]
    if organized_schools[location]
      organized_schools[location] << name
    else
      organized_schools[location] = []
      organized_schools[location] << name
    end
  end
  organized_schools
end