class CreateJoinTableUsersOffers < ActiveRecord::Migration[8.0]
  def change
    create_table :offers_users do |t|
      t.belongs_to :user
      t.belongs_to :offer
    end
  end
end
