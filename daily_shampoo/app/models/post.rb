class Post < ActiveRecord::Base
  belongs_to :user, :as => owner
  has_many :comments
  has_many :users, :through => comments, :as commentors

  mount_uploader :image, ImageUploader

end
