class List < ApplicationRecord

  has_many :babies

  before_create :generate_public_id
  validates :public_id, uniqueness: true

  def generate_public_id
    self.public_id = SecureRandom.alphanumeric(12)
  end
end
