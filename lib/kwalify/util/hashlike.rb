###
### $Rev$
### $Release 1.4.0-beta $
### copyright(c) 2005-2010 kuwata-lab all rights reserved.
###

module Kwalify

  module Util

    ##
    ## add hash-like methods
    ##
    module HashLike

      def [](key)
        instance_variable_get("@#{key}")
      end

      def []=(key, val)
        instance_variable_set("@#{key}", val)
      end

      #--
      #def keys()
      #  instance_variables().collect { |name| name[1, name.length-1] }
      #end
      #++

      def key?(key)
        instance_variables().include?("@#{key}")
      end
      if Object.method_defined?('instance_variable_defined?')
        def key?(key)
          instance_variable_defined?("@#{key}")
        end
      end

      def each   # not necessary
        instance_variables().each do |name|
          key = name[1, name.length-1]
          val = instance_variable_get(name)
          yield(key, val)
        end
      end

    end

  end

end
