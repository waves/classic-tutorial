module Blog
  module Resources
    class Map
      include Waves::Resources::Mixin
      
      on( :get, [ ] ) { redirect "/entries" }
      
      on( :get, [ 'entries' ] ) do
        view( :entry ).list( :entries => [] )
      end
      
    end
  end
end