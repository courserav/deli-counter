# Write your code here.
katz_deli = []

def line(deli_line)
    if deli_line[0] == nil
        puts "The line is currently empty."
    else
        line_message = "The line is currently: "
        deli_line.each_with_index {|name, index| line_message += "#{index + 1}. #{name} "}
        puts "#{line_message.chop}"
    end
end

def take_a_number(deli_line, new_person)
    deli_line << new_person
    puts "Welcome, #{new_person}. You are number #{deli_line.find_index(new_person) + 1} in line."  
    return deli_line
end

def now_serving(deli_line)
    if deli_line[0] == nil
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{deli_line.shift}."
        return deli_line
    end
end

katz_deli = ["luis", "enrique","vera"]
katz_deli = now_serving(katz_deli)
puts "#{katz_deli}"