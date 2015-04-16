class Card < ActiveRecord::Base
belongs_to :deck
has_one :conjugation
has_many :guesses

def previous
	Card.where(["id < ?", id]).order('id').last
end

def next
	Card.where(["id > ?", id]).order('id').first
end

end
