class Product < ApplicationRecord
  mount_uploaders :pictures, PictureUploader
  serialize :pictures, JSON
  validates_presence_of :pictures
end
