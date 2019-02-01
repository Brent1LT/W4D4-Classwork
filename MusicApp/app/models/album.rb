class Album < ApplicationRecord
  validates :title, presence: true, uniqueness: true 
  validates :yr, presence: true 

  belongs_to :band,
  foreign_key: :band_id,
  class_name: 'Band'
end
