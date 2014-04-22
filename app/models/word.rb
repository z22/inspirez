class Word < ActiveRecord::Base

# scopes
  scope :sorted, lambda { order("words.position ASC") }
  scope :newest_first, lambda { order("words.created_at DESC")}

end
