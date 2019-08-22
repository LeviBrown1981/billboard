class Song < ApplicationRecord
  belongs_to :levi_list
  belongs_to :artist
end

  def artist_name
    unless artist.nil?
      artist.name
    end
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
  end
end