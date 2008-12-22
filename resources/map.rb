module Blog
  module Resources
    class Map
      include Waves::Resources::Mixin
      
      on( true ) { "I am Blog!" }
      
    end
  end
end