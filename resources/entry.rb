module Blog
  module Resources
    class Entry < Default
      
      on( :get, [ 'entries' ] ) do
        entries = controller.all
        view.list( :entries => entries )
      end
      
    end
  end
end
