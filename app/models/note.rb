class Note < ApplicationRecord
  belongs_to :notepad

  validates :notepad, presence: true
  validates :title, presence: true,
              length: { maximum: 50}
  validates :text, presence: true
end
