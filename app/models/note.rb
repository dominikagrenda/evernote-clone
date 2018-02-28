class Note < ApplicationRecord
  has_one :notepads
  validates :title, presence: true,
              length: { maximum: 50}
  validates :text, presence: true
end
