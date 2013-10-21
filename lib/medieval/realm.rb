module Medieval
  class Realm
    extend Attributes

    class << self
      def name
        FORMATS.rand.call.join(' ')
      end

    protected
      def main_name
        occupation[0..-rand(occupation.size/2)] + creature_name[0..-rand(occupation.size/2)].downcase + realm_suffix
      end

=begin
      def suffix
        %w(oin yar oyd aire atya uti aro yal iha).rand
      end
=end
      def realm_prefix
        %w(North East West South New Lake Port Far Lost Low High Middle).rand
      end

      def realm_suffix
        %w(county realm ton land ville berg burgh borough bury view port mouth stad furt chester mouth fort haven side shire  sway).rand
      end


    end

    FORMATS = [
#      Proc.new {[ability, main_name, realm_suffix]},
      Proc.new {[main_name]},
#      Proc.new {[realm_prefix, ' ' , ability, main_name, realm_suffix]},
      Proc.new {[realm_prefix, main_name]}
    ]
  end
end

