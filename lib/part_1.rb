def average(num_1, num_2)
  (num_1 + num_2) / 2.0
end

def average_array(arr)
  sum = 0.0
  arr.each { |num| sum += num }
  sum / arr.length
end

def repeat(str, num)
  new_str = ""
  num.times do 
    new_str += str
  end 
  new_str
end

def yell(str)
  str.upcase + "!"
end

def alternating_case(sentence)
  arr = sentence.split(" ")
  arr.each_with_index do |elem, idx|
    if idx % 2 == 0
        arr[idx] = elem.upcase
    else
        arr[idx] = elem.downcase
    end
  end
  arr.join(" ")
end