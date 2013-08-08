class CreateGreetings < ActiveRecord::Migration
  def change
    create_table :greetings do |t|
      t.text :message
      t.string :author

      t.timestamps
    end
  end
end
