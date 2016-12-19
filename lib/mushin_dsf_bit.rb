require 'mushin'
require_relative 'BiT/version'


module BiT
  # Usage:
# BiT::Domain.new do
# # use your BiT DSL here 
# end
class Domain
# Define your BiT DSL here
      using Mushin::Domain
      context :change_me do
	construct :change_me do
	  use :change_me, opts: {}, params: {}
	  use :change_me, opts: {}, params: {}
	  use :change_me, opts: {}, params: {}
	end
      end
end

end
