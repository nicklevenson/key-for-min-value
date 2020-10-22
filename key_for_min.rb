# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

# def key_for_min_value(name_hash)
#     min = Float::INFINITY
#     returnItem = nil
#     name_hash.each do |item, price|
#         if price < min 
#             min = price
#             returnItem = item;
#         end
#     end
#     returnItem
# end

def key_for_min_value(name_hash)
    if name_hash == {}
        nil
    end

    integers = []
    name_hash.collect do |name, number| 
        integers << number
        integers = integers.sort do |a, b|
                a <=> b
        end
    end
    name_hash.each do |name, number|
        if number == integers[0]
            return name
        else nil
        end
    end
end
