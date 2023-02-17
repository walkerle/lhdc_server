class CreateBarbers < ActiveRecord::Migration[6.1]
  def change
    create_table :barbers do |t|
      t.string :name
    
    end
    
  end
end
