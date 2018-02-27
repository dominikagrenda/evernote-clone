class Notepad < ApplicationRecord
  has_many :notes

  validates :title, presence: true,
              length: { maximum: 50}
  validates :text, presence: true
end
