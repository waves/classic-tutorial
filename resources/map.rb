module Blog
  module Resources
    class Map
      include Waves::Resources::Mixin
      
      on( :get, [ ] ) { redirect "/entries" }
      
      on( true, [ "entries" ] ) { to :entry }
      on( true, [ "entry" ] ) { to :entry }
      
      on( true, [ "entry", true ] ) { to :entry }
      
    end
  end
end