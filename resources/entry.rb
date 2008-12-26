module Blog
  module Resources
    class Entry < Default
      
      on( :get, [ 'entries' ] ) do
        entries = controller.all
        view.list( :entries => entries )
      end
      
      on( :get, [ 'entry', :name ] ) do
        entry = controller.find( captured.name )
        view.show( :entry => entry )
      end
      
    end
  end
end
