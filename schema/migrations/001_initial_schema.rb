class InitialSchema < Sequel::Migration

  def up
    create_table :entries do
      primary_key :id
      string :name
      string :title
      text :content
      timestamp :updated_on
    end
    
    create_table :comments do
      primary_key :id
      foreign_key :entry_id, :table => :entries
      string :name
      string :email
      text :content
      timestamp :updated_on
    end
  end

  def down
    drop_table :entries
    drop_table :comments
  end

end
