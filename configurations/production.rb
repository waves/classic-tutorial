module Blog

  module Configurations

    class Production < Default

      database :host => 'localhost', :adapter => 'mysql', :database => 'blog',
        :user => 'root', :password => ''

      reloadable []

      log :level => :error,
        :output => ( :log / "waves.#{$$}" ),
        :rotation => :weekly

      host '0.0.0.0'

      port 80

      application do
        use ::Rack::Static, :urls => [ '/css/', '/javascript/', '/favicon.ico' ], :root => 'public'
        run ::Waves::Dispatchers::Default.new
      end
      
      server Waves::Servers::Mongrel

    end
  end
end
