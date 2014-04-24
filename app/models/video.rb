class Video < ActiveRecord::Base

  validates_format_of :url, :with => /^http:\/\/www\.youtube\.com\/watch\?v=([a-zA-Z0-9_-]*)/


# scopes
  scope :sorted, lambda { order("videos.position ASC") }
  scope :newest_first, lambda { order("videos.created_at DESC")}


end
