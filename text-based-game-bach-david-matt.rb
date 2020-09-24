def dotdot    
    2.times do        
    puts "."    
    end
end

def sleeping    
    print "..."    
    4.times do        
        print 'z'        
        sleep 0.3        
        print 'Z'        
        sleep 0.3    
    end    
    print "..."
end

p "Welcome to Wasteland Adventure! This is a text-based game. In order to proceeed to the next scenario you must type in one of the provided responses in the prompt. Be careful, your decision will decide. YOUR. FATE. If you understand, please type 'okay'."

user_input = gets.downcase.chomp
if user_input == 'okay' || user_input == 'ok'
    puts "Welcome to the Wasteland!"
else
    print "Welcome to the Wasteland anyways!"
end

sleeping

puts' '.chomp

p "You hear someone yelling 'wake up!' You finally wake up. Groggily, upon looking around you realize you have no idea where you are. You can't even remember your own name!! To get out and investigate type 'get up' or you can go back to sleep by typing 'continue sleeping'."

user_input = gets.downcase.chomp
while user_input != "get up" && user_input != "wake up" && user_input != "continue sleeping" && user_input != "sleep" 
    puts "That is not a valid input. Please try again."
    user_input = gets.downcase.chomp
end
if user_input == "get up" || user_input == "wake up"
    puts "You get out of bed and begin looking around the room."
elsif user_input == "continue sleeping" || user_input == "sleep"
    puts "Someone pulls you out of bed anyways. Don't be so lazy."  
else
    puts "Try again"
    user_input = gets.downcase.chomp
end

p "You stumble to your feet and notice a doorway that is open. To go through the door type 'go through' or you can choose to stay put by typing 'stay put'."

user_input = gets.downcase.chomp
while user_input != "go through" && user_input != "go thru" && user_input != "stay put" && user_input != "stay" 
    puts "That is not a valid input. Please try again."
    user_input = gets.downcase.chomp
end
if user_input == "go through" || user_input == "go thru"
    puts "You walk through the doorway."
elsif user_input == "stay put" || user_input == "stay"
    puts "A humanoid like creature comes in and pulls you through the door."  
else
    puts "Try again"
    user_input = gets.downcase.chomp
end

p "You step outside and you immediately notice you are surrounded by ruins. The drought resistant plant life has flourished and has grown over all man made constructs. You finally take notice of the humanoid next to you. To your shock it can speak! 'Hey buddy! Glad you are finally awake! Are you ready to start our plan we discussed?' Type 'lead the way' to follow this individual or type 'ignore' to go about your merry way."


user_input = gets.downcase.chomp
while !["lead the way", "ignore", "yes", "no"].include?user_input do
    puts "That is not a valid input. Please try again."
    user_input = gets.downcase.chomp
end
if ["lead the way", "yes"].include?user_input
    puts "You and your new companion head out into the wasteland."
elsif ["ignore", "no"].include?user_input
    puts "'RUDE! I'm tagging along with you anyways.'"
end

p "After walking a little ways the two come upon a pair of bikes and a empty van which mode of transportation will you choose?"

user_input = gets.downcase.chomp
while !["Bike", "van"].include?user_input
    puts "CHOOSE ONE!!"
end

user_input1 = "bike"
user_input2 = "van"

if ["bike"].include?user_input
    puts "You take the bike, so you and your friend pedal away safely."
    
    
elsif ["van"].include?user_input
    puts "You chose the van and as you start it up the engine turning causes monsters to scream in the distance. You floor it out of there and look in the rear view mirror. To your horror you see the owner of the van running after you as the monsters close in."
    
end

if user_input1
    puts "Because you took the bikes you arrive at the facility right before nightfall and discuss going inside"
    puts "What do you want to do? Type 'go inside, or keep moving'"
elsif user_input2
    puts "Because you took the van you came across an abandoned facility while it is still daylight. You and your companion discuss going inside"
    puts "What do you want to do?"
end 

user_input = gets.downcase.chomp
