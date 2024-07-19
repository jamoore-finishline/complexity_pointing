class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :role
  has_many :votes
  has_many :comments

  validates :name, presence: true
  validates :role_id, presence: true

  def developer?
    role.name == 'Developer'
  end

  def qa?
    role.name == 'QA'
  end

  def admin?
    role.name == 'Admin'
  end
end
