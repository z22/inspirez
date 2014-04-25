class Video < ActiveRecord::Base

  # validates_format_of :url, :with => /\Ahttps:\/\/www\.youtube\.com\/watch\?v=([a-zA-Z0-9_&#]*)\z/
validates_uniqueness_of :url

# scopes
  scope :sorted, lambda { order("videos.position ASC") }
  scope :newest_first, lambda { order("videos.created_at DESC")}


end
