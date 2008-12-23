module Blog
  module Resources
    class Map
      include Waves::Resources::Mixin
      
      on( :get, [ ] ) { redirect "/entries" }
      
      on( :get, [ 'entries' ] ) do
        entries = controller( :entry ).all
        view( :entry ).list( :entries => entries )
      end
      
    end
  end
end