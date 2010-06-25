require 'rubygems'
require 'active_support/inflector'

module Medieval
  class Battalion
    class << self
      def creature_name
        %w(Dragon Cyclop Wyvern Stud Dwarf Aardvark Buffalo Ant Anteater Antelope Ape Armadillo Donkey Baboon Badger Bat Bear Beaver Bee Bison Boar Bush Butterfly Camel Cat Cattle Chamois Cheetah Chicken Chimpanzee Cobra Cockroach Cormorant Coyote Crab Crane Crocodile Crow Deer Dog Dogfish Dolphin Dove Dragonfly Duck Dugong Eagle Echidna Eel Eland Elephant Elk Falcon Ferret Finch Fly Fox Frog Gaur Gazelle Gerbil Giant Panda Giraffe Gnu Goat Goose Gorilla Guanaco Guinea Gull Hamster Hare Hawk Hedgehog Heron Hippopotamus Hornet Horse Hyena Jackal Jaguar Jellyfish Kangaroo Komodo Kouprey Kudu Lark Lemur Leopard Lion Llama Loris Louse Lobster Lyrebird Magpie Mallard Manatee Meerkat Mink Mole Monkey Moose Mouse Mosquito Mule Nightingale Okapi Oryx Ostrich Otter Owl Ox Oyster Panther Partridge Peafowl Pelican Pig Pigeon Pony Porcupine Quelea Rabbit Raccoon Rail Ram Rat Raven RedDeer RedPanda Reindeer Rhinoceros Salamander Sealion Seal Seastar Shark Sheep Shrew Skunk Snail Snake Spider Squid Squirrel Swan Tapir Tarsier Tiger Toad Turkey Turtle Vicuna Walrus Wasp WaterBuffalo Weasel Whale Wolf Worm Yak Zebra).rand.pluralize
      end
      
      def ability
        ["Agreeable", "Amused", "Brave", "Calm", "Charming", "Cheerful", "Comfortable", "Cooperative", "Courageous", "Crazy" "Delightful", "Determined", "Eager", "Elated", "Enchanting", "Encouraging", "Energetic", "Enthusiastic", "Excited", "Exuberant", "Fair", "Faithful", "Fantastic", "Fast", "Fine", "Friendly", "Funny", "Gentle", "Glorious", "Good", "Great" "Happy", "Healthy", "Helpful", "Hilarious", "Jolly", "Joyous", "Kind", "Lively", "Lovely", "Lucky", "Nice", "Obedient", "Perfect", "Pleasant", "Poor", "Proud", "Relieved", "Silly", "Smiling", "Splendid", "Successful", "Thankful", "Thoughtful", "Victorious", "Vivacious", "Witty", "Wonderful", "Zealous", "Zany", "Glamorous", "Gleaming", "Gorgeous", "Graceful", "Grotesque", "Handsome", "Homely", "Light", "Long", "Magnificent", "Misty", "Motionless", "Muddy", "Old-fashioned", "Plain", "Poised", "Precious", "Quaint", "Shiny", "Smoggy", "Sparkling", "Spotless", "Stormy", "Strange", "Ugly", "Ugliest", "Unsightly", "Unusual", "Wide-eyedadorable", "Adventurous", "Aggressive", "Alert", "Attractive", "Average", "Beautiful", "Blue-eyed", "Bloody", "Blushing", "Bright", "Clean", "Clear", "Cloudy", "Colorful", "Crowded", "Cute", "Dark", "Drab", "Distinct", "Dull", "Elegant", "Excited", "Fancy", "Filthy", "Big", "Colossal", "Fat", "Gigantic", "Great", "Huge", "Immense", "Large", "Little", "Mammoth", "Massive", "Miniature", "Petite", "Puny", "Scrawny", "Short", "Small", "Tall", "Teeny", "Teeny-tiny", "Tinybroad", "Chubby", "Crooked", "Curved", "Deep", "Flat", "High", "Hollow", "Low", "Narrow", "Round", "Shallow", "Skinny", "Square", "Steep", "Straight", "Wide"].rand
          
      end
      
      def ability2
        %w( White Yellow Red Green Blue Black Orange Purple).rand       
      end



    end  
    
    FORMATS = [
      Proc.new { ["The", ability2, ability, creature_name]}, 
      Proc.new { ["The", ability2, creature_name]},
      Proc.new { ["The", ability , creature_name]}    
    ]
    
    
  end
end

