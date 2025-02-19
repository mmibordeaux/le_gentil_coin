class User < ApplicationRecord
  has_many :offers
  has_and_belongs_to_many :offers_favorites,
                          class_name: 'Offer'

  def to_s
    pseudonym
  end
end
