p "Welcome to Wasteland Adventure! This is a text-based game. In order to proceeed to the next scenario you must type in one of the provided responses in the prompt. Be careful, your decision will decide. YOUR. FATE. If you understand, please type 'okay'."

user_input = gets.downcase.chomp
if user_input == 'okay' || user_input == 'ok'
    puts "Welcome to the Wasteland!"
else
    print "Welcome to the Wasteland anyways!"
end

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