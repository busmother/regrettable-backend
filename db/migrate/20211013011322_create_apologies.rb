class CreateApologies < ActiveRecord::Migration[6.1]
  def change
    create_table :apologies do |t|
      t.string :body
      t.integer :user_id
      t.integer :incident_id
      t.timestamps
    end
  end
end
