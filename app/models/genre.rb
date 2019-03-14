class Genre < ActiveRecord::Base
  has_many :songs_genres
  has_many :songs, through: :songs_genres
  has_many :artists, through: :songs

  def self.slug
    @slug = name.downcase.strip.gsub(' ', '-')
  end
end
