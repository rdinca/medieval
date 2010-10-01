module Medieval  
  class Realm
    extend Attributes
    class << self
      def name
        FORMATS.rand.call.join('')
      end
 
protected     
      alias main_name creature_name
      
      def suffix
        %w(oin yar oyd aire atya uti aro yal iha).rand
      end 
      
      def land_name
        %w(Land County Shire Realm).rand
      end    
      
    end
    
    FORMATS = [
      Proc.new {[ability, main_name, land_name]},
      Proc.new {[main_name, land_name]}          
    ]
end
  
end
