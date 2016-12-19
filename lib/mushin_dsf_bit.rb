require 'mushin'
require 'mushin_ext_tpb'
require 'mushin_ext_ssd'

require_relative 'BiT/version'

module BiT
  # Usage:
  # BiT::Domain.new do
  #  all do
  #    search          query: "opencourseware MIT" 
  #    download        magnet: "somebighash" 
  #  end 
  #
  #  server do
  #	seed            path: "somepathtofolder" 
  #  end 
  #
  #  query do
  #     seeded
  #	recently_deleted    
  #  end 
  # end

  class Domain
    # Define your BiT DSL here
    using Mushin::Domain

    context :all do # all websites
      construct :search do
	use ext: TPB::Ext                   , opts: {:max_results => :max_results}                  , params: {:query => :query}
	use ext: SSD::Ext                   , opts: {:path => :ssd_path, :cqrs => :cqrs_command}    , params: {:id => :ssd_query}
      end
    end

    context "query" do 
      construct "most_seeded_torrents" do
	use ext: SSD::Ext                   , opts: {:path => :ssd_path, :cqrs => :cqrs_query}      , params: {:id => :search_query}
      end
    end

  end
end
