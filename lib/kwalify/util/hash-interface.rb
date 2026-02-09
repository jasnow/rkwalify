###
### $Rev$$
### $Release: 1.4.0-preview1 $
### copyright(c) 2005-2010 kuwata-lab all rights reserved.
###

require 'kwalify/util/hashlike'

module Kwalify

  ##
  ## OBSOLETE: use Hash::Util::HashLike instead.
  ##
  module HashInterface
    include Kwalify::Util::HashLike
  end

end
