module Medieval  

  class Realm
    class << self
      def name
        main_name + land_name
      end
      
      def main_name
        %w(Dragon Cyclop Wyvern Stud Dwarf Aardvark Buffalo Ant Anteater Antelope Ape Armadillo Donkey Baboon Badger Bat Bear Beaver Bee Bison Boar Bush Butterfly Camel Cat Cattle Chamois Cheetah Chicken Chimpanzee Cobra Cockroach Cormorant Coyote Crab Crane Crocodile Crow Deer Dog Dogfish Dolphin Dove Dragonfly Duck Dugong Eagle Echidna Eel Eland Elephant Elk Falcon Ferret Finch Fly Fox Frog Gaur Gazelle Gerbil Giant Panda Giraffe Gnu Goat Goose Gorilla Guanaco Guinea Gull Hamster Hare Hawk Hedgehog Heron Hippopotamus Hornet Horse Hyena Jackal Jaguar Jellyfish Kangaroo Komodo Kouprey Kudu Lark Lemur Leopard Lion Llama Loris Louse Lobster Lyrebird Magpie Mallard Manatee Meerkat Mink Mole Monkey Moose Mouse Mosquito Mule Nightingale Okapi Oryx Ostrich Otter Owl Ox Oyster Panther Partridge Peafowl Pelican Pig Pigeon Pony Porcupine Quelea Rabbit Raccoon Rail Ram Rat Raven RedDeer RedPanda Reindeer Rhinoceros Salamander Sealion Seal Seastar Shark Sheep Shrew Skunk Snail Snake Spider Squid Squirrel Swan Tapir Tarsier Tiger Toad Turkey Turtle Vicuna Walrus Wasp WaterBuffalo Weasel Whale Wolf Worm Yak Zebra).rand.slice(0..-(rand(3)+1))
      end 
      
      def land_name
        %w(land county shire realm).rand
      end    
      
    end
  end
  
end
