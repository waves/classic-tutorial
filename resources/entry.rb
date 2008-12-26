module Blog
  module Resources
    class Entry < Default
      
      on( :get, [ 'entries' ] ) do
        entries = controller.all
        view.list( :entries => entries )
      end
      
      on( :post, [ 'entries' ] ) do
        entry = controller.create
        redirect "/entry/#{entry.name}"
      end
      
      on( :get, [ 'entry' ] ) do
        view.new
      end
      
      on( :get, [ 'entry', :name ] ) do
        entry = controller.find( captured.name )
        view.show( :entry => entry )
      end
      
      on :get, [ 'entry', :name ], :query => { :mode => 'edit' } do
        entry = controller.find( captured.name )
        view.edit( :entry => entry )
      end
      
      on :put, [ 'entry', :name ] do
        entry = controller.update( captured.name )
        redirect "/entry/#{entry.name}"
      end
      
      on :delete, [ 'entry', :name ] do
        controller.delete( captured.name )
      end
      
      on :post, :comment => [ 'entry', :name ] do
        entry = controller.find( captured.name )
        entry.add_comment( Models::Comment.create( query.comment.to_hash ) )
        redirect request.path
      end
      
    end
  end
end
