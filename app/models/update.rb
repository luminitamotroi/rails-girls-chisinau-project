class Update < ActiveRecord::Base
  belongs_to :user
  belongs_to :case
  validates :title, presence: true, allow_blank: false
  validates :domain, presence: true, allow_blank: false
  validates :body, presence: true, allow_blank: false
end