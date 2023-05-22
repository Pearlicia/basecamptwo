class Usercomment < ApplicationRecord
  belongs_to :user
  belongs_to :message
  belongs_to :parent, class_name: 'Usercomment', optional: true
  has_many :usercomments, foreign_key: :parent_id
end
