class Note < ApplicationRecord
  validates :title, presence: true,
              length: { maximum: 50}
  validates :text, presence: true
end
