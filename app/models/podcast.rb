class Podcast < ApplicationRecord
  has_and_belongs_to_many :age_groups
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :durations
end
