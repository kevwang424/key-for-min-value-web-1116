# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)

  return nil if name_hash.empty?

  min_value = 1.0/0.0         #this represents infinity. we dont know min value in the hash so set as infinity
  min_key = ""                #defaults as string since you cannot default as symbol
  name_hash.each do |key,value|
    if value < min_value
      min_value = value
      min_key = key.to_s     #changes to string because i cannot just simply reassign
    end
  end
  min_key.to_sym            #convert back to symbol so i get the right answer

end
