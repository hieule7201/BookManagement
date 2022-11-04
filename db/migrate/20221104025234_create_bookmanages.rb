class CreateBookmanages < ActiveRecord::Migration[7.0]
  def change
    create_table :bookmanages do |t|
      t.string :student_id
      t.string :fullname
      t.string :class_name
      t.string :book_id
      t.string :book_name
      t.string :author_name
      t.string :source_name
      t.string :bm_number
      t.string :first_day
      t.string :last_day
      t.string :day_number
      t.string :note

      t.timestamps
    end
  end
end
