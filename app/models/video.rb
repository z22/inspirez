class Video < ActiveRecord::Base

  # validates_format_of :url, :with => /\Ahttps:\/\/www\.youtube\.com\/watch\?v=([a-zA-Z0-9_&#]*)\z/


# scopes
  scope :sorted, lambda { order("videos.position ASC") }
  scope :newest_first, lambda { order("videos.created_at DESC")}


end
