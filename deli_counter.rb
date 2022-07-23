# Write your code here.
def line(customers)
    queue = "The line is currently:"
    unless customers.length == 0
        customers.each_with_index do |customer, index|
            queue << " #{index+1}. #{customer}"
        end
        puts queue
    else puts "The line is currently empty."
    end
end

def take_a_number (customers, new_customer)
    puts "Welcome, #{new_customer}. You are number #{customers.length + 1} in line."
    customers.push(new_customer)
end

def now_serving (customers)
    unless customers.length == 0
        puts "Currently serving #{customers.first}."
        customers.shift
    else puts "There is nobody waiting to be served!"
    end
end