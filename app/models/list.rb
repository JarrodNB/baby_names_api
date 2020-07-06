class List < ApplicationRecord

  has_many :babies

  before_create :generate_public_id

  def generate_public_id
    self.public_id = SecureRandom.urlsafe_base64(12)
  end
end
