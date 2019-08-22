class Artist < ApplicationRecord
  has_many :songs
  has_many :levi_lists, through :songs
end
