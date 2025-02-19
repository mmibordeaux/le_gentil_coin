class Offer < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :users

  def to_s
    name
  end
end
