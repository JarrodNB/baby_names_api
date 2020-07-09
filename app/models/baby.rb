class Baby < ApplicationRecord

  belongs_to :list

  validates :name, uniqueness: { scope: :list_id, message: "Name must be unique." }

  def name=(name)
    write_attribute(:name, name.try(:strip))
  end

end
