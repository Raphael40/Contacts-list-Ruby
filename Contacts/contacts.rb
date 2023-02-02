require 'pstore'

data = PStore.new("contact_list.pstore")

  data.transaction do 
     data["contacts"] ||= {}
    
     data.commit
 end


run = true
while(run) do
    
    puts "Press 1 to add a new contact, 2 to retrieve a contacts birthday, 3 to list all contacts, 4 to exit"
    key = gets.chomp.to_i
    
    if key == 1
        #Add key value pair (name and bday) to pstore
        puts "what is your first name?"
        first_name = gets.chomp 
        puts "What is your date of birth?"
        dob = gets.chomp

        data.transaction do 
            #data[first_name] = dob
            data["contacts"][first_name] = dob 
            
            data.commit
        end

    elsif key == 2
        puts "Whose birthday would you like to display"
        dob_request = gets.chomp

        
        data.transaction do
            if data["contacts"][dob_request] == nil
                puts "contact not found"
            else 
                puts "#{dob_request}'s date of birth is: #{data["contacts"][dob_request]}"
            end 
        end

    elsif key == 3
        puts "The contact list is as follows: "
        data.transaction do
            puts data["contacts"]
        end
    elsif key == 4 
        puts "Shutting down"
        run = false
    else 
        puts "this option does not exist"
    end
end