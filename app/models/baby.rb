class Baby < ApplicationRecord

  belongs_to :list

  validates :name, uniqueness: { scope: :list_id, message: "Name must be unique." }
  validates :name, format: {with: /\A[A-Za-z]+ ?[A-Za-z]*\z/, message: "Name format is invalid."}

  def name=(name)
    write_attribute(:name, name.try(:strip))
  end

end
