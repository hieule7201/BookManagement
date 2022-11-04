json.extract! bookmanage, :id, :student_id, :fullname, :class_name, :book_id, :book_name, :author_name, :source_name, :bm_number, :first_day, :last_day, :day_number, :note, :created_at, :updated_at
json.url bookmanage_url(bookmanage, format: :json)
