# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord

  def filmography
    my_id = self.id
    matching_movies = Movie.where(director_id: my_id)
    return matching_movies
  end

  # There are 3 of 1 to many associations:
  # - One => Many

  # - Director => Movie
  # - Movie => Character
  # - Actor => Character

  # Try define:
  # - Director#filmography
  # - Movie#directors
  # - Movie#characters
  # - Character#movie
  # - Actor#characters
  # - Character#actor

end
