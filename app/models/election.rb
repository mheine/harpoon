class Election < ActiveRecord::Base
  validates :name, :occurs_on, :published_on, :description, presence: true
end
