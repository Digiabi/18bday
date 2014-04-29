class Kid < ActiveRecord::Base

  mount_uploader :photo, PhotoUploader
  belongs_to :user

  validates :username, presence: true
  validates :first_name, presence: true
  validates :birthday, presence: true
  validates :gender, presence: true
  validates :username,uniqueness: true
end
