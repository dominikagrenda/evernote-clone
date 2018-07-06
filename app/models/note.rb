class Note < ApplicationRecord
  belongs_to :notepad

  validates :notepad, presence: true
  validates :title, presence: true,
            length: { maximum: 20},
            uniqueness: true
  validates :text, presence: true

  mount_uploaders :pictures, PictureUploader

end
