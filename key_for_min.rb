# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
    min = Float::INFINITY
    returnItem = nil
    name_hash.each do |item, price|
        if price < min 
            min = price
            returnItem = item;
        end
    end
    returnItem
end