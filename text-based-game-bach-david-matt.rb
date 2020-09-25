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

def name_call user_name
    puts "Your friend calls your name..."
    name_to_array = user_name.capitalize.split("")
    name_to_array.map do |character|
        print character
        sleep 0.3
    end
    3.times do
        print "."
        sleep 0.3
    end
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
while !["bike", "van"].include?user_input
    puts "CHOOSE ONE!!"
    user_input = gets.downcase.chomp
end

user_input1 = "bike"
user_input2 = "van"

if user_input == user_input1
    puts "You take the bike, so you and your friend pedal away safely."
    user_input = user_input1
elsif user_input == user_input2
    user_input = user_input2
    puts "You chose the van and as you start it up the engine turning causes monsters to scream in the distance. You floor it out of there and look in the rear view mirror. To your horror you see the owner of the van running after you as the monsters close in."
end

if user_input == "bike"
    puts "Because you took the bikes you arrive at the facility right before nightfall and discuss going inside"
    puts "What do you want to do? Type 'go inside', or 'keep moving'."
    user_input = gets.downcase.chomp
    while !["go inside", "keep moving"].include? user_input do
        puts "You need to choose a path. Unless you want to die here."
        user_input = gets.downcase.chomp
    end
    if user_input.include? "go inside"
        puts "You go inside and you notice it is a research facility."
        puts "Upon further investigation you find the cure for the disfigured humans."
        puts "You gave your companion the cure. The once disfigured creature upon injection of the green liquid reverts him into his original state. Your memory returns. The face in front of you is your best friend."
        puts "Congratulations! You survived. (True Ending)"
    elsif user_input.include? "keep moving"
        puts "You continue riding and it now turns to nightfall. You and your companion become surrounded by grotesque monsters."
        puts "You have to decide to save your companion or not. What will you do? Type 'save' or 'leave behind'."
        user_input = gets.downcase.chomp
        if user_input.include? "save"
            puts "You and your friend survive, but you are bitten in the process. Now you have transformed into a humanoid creature too."
            puts "Congratulations you survived. But you're both humanoid creatures... Try again. (Good Ending)"
        elsif user_input.include? "leave behind"
            puts "You survive but your companion has been devoured before your eyes. You look into his eyes. And you remember that he was your friend all along."
            puts "You suddenly remember your name... Its: "
            user_input = gets.downcase.chomp
            name_call(user_input)
            puts "You survived but you lost your best friend. Try again... (Bad Ending)"
        end
    end
elsif user_input == "van"
    puts "Because you took the van you came across an abandoned facility while it is still daylight. You and your companion discuss going inside"
    puts "What do you want to do? Type 'go inside', or 'keep moving'."
    user_input = gets.downcase.chomp
    while !["go inside", "keep moving"].include? user_input do 
        puts "You need to choose a path. Unless you want to die here."
        user_input = gets.downcase.chomp
    end
    if user_input.include? "go inside"
        puts "You go inside and you notice it is a research facility."
        puts "Upon further investigation you find the cure for the disfigured humans."
        puts "You gave your companion the cure. The once disfigured creature upon injection of the green liquid reverts him into his original state. Your memory returns. The face in front of you is your best friend."
        puts "Congratulations! You survived. (True Ending)"
    elsif user_input.include? "keep moving"
        puts "You continue driving on. You and your companion both survive. However, your companion remains disfigured."
        puts "Congratulations. You have survived, but your companion is still disfigured... Try again. (Good Ending)"
    end
end 

