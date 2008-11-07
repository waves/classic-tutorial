require 'foundations/classic'
require 'layers/orm/providers/sequel'

module Blog
  include Waves::Foundations::Classic
  include Waves::Layers::ORM::Sequel
end