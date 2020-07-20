class Play < ApplicationRecord
  validates_presence_of :tick, :image_url
end
