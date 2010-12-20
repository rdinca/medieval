require 'medieval/attributes'

module Medieval
  class Battalion
    extend Attributes
    class << self
      def name
        FORMATS.rand.call.join(' ')
      end


protected      

      def creature_name
        super.pluralize
      end

    end  
    
    FORMATS = [
      Proc.new { ["The", name_of_order, formation_name, "of", ability, colour, creature_name]}, 
      Proc.new { ["The", name_of_order, formation_name, "of", ability, colour, creature_name]}, 
      Proc.new { ["The", name_of_order, formation_name, "of", ability, creature_name]}, 
      Proc.new { ["The", name_of_order, formation_name, "of", colour, creature_name]},  
      #Proc.new { ["The", ability, colour, creature_name]},                  
      #Proc.new { ["The", colour, creature_name]},
      #Proc.new { ["The", ability , creature_name]}    
      # removed some less interesting formats 
    ]

  end
end

