# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
# 1 to many
class Movie < ApplicationRecord

  def title_with_year
    return "#{self.title} (#{self.year})"
  end

  def director
    d_id = self.director_id
    matching = Director.where(id: d_id)
    the_director = matching.at(0)
    return the_director

    # can be used like this: 
    # @the_movie.the_director.name 
  end

  def characters
    my_id = self.id

    matching_characters = Character.where(movie_id: my_id)

    return matching_characters
    # were just returning the relationship
  end
end
