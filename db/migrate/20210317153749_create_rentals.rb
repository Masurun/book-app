class CreateRentals < ActiveRecord::Migration[6.0]
  def change
    create_table :rentals do |t|
      t.string :title
      t.date :rental_date
      t.date :return_date
      t.references  :user,  foreign_key: true
      t.timestamps
    end
  end
end
