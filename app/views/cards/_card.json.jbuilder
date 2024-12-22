json.extract! card, :id, :card_text, :card_flag, :created_at, :updated_at
json.url card_url(card, format: :json)
