module Blog

  module Configurations

    class Development < Default

      database :adapter => 'sqlite', :database => 'blog'

      reloadable [ Blog ]
      log :level => :debug
      host '127.0.0.1'
      port 3000
      dependencies []

      application do
        use ::Rack::ShowExceptions
        use ::Rack::Static, :urls => [ '/css/', '/javascript/', '/favicon.ico' ], :root => 'public'
        run ::Waves::Dispatchers::Default.new
      end

      server Waves::Servers::Mongrel
    end

  end

end
