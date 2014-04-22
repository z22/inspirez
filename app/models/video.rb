class Video < ActiveRecord::Base




# scopes
  scope :sorted, lambda { order("videos.position ASC") }
  scope :newest_first, lambda { order("videos.created_at DESC")}


end
