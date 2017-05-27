class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :cases, dependent: :destroy
  has_many :updates, dependent: :destroy
  validates :name, presence: true, allow_blank: false
  
  def recent_updates
    updates.order(id: :desc).limit(20)
  end

  def recent_cases
    cases.order(id: :desc).limit(20)
  end
end
