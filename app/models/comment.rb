class Comment < ApplicationRecord
  include Visible
  
  belongs_to :article

  validates :article_id, presence: true
  validates :commenter, presence: true
  validates :body, presence: true
end
