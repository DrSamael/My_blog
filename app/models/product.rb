class Product < ApplicationRecord

  has_many :pictures, as: :imageable

  scope :costs_more_than, ->(amount) { where("price > ?", amount) if amount.present? }
  # default_scope { where(description: nil) }

  enum status: [:shipped, :being_packaged, :complete, :cancelled]

  # def self.costs_more_than(amount)
  #   where("price > ?", amount) if amount.present?
  # end

  def i_am_name
    "I am #{name}"
  end

end
