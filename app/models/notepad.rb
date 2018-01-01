class Notepad < ApplicationRecord
  has_many :notes dependent: :destroy
end
