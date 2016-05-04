class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :bprofile
  validates :content, presence: true, length: {maximum: 140} # tweets are capped at 140 chars.
  default_scope -> { order(created_at: :desc) } # newest tweets / posts first
end
