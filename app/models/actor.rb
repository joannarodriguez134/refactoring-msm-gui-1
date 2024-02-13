# == Schema Information
#
# Table name: actors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null


# think of it like this an actor has many characters
class Actor < ApplicationRecord
  def characters
    ac_id = self.id

    matching_characters = Character.where(actor_id: ac_id)

    return matching_characters

    # could just do: Character.where(actor_id: self.id)
    # if its not on this Actor table, look at the Character table
  end
end
