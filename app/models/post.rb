class Post < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 2000 } # tweets are capped at 2000 chars.
  default_scope -> { order(created_at: :desc) } # newest tweets / posts first
end
