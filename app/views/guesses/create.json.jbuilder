json.guess @guess, :id, :user_id, :image_id, :field
json.image @guess.image, :id, :answer
json.is_answer false
