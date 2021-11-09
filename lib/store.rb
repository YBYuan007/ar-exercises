class Store < ActiveRecord::Base
  has_many :employees
  validates :name, presence: true, length: {minimum: 3}
  validates :annual_revenue,  numericality: {greater_than: 0 }
  validate :validate_gender
  def validate_gender 
    if !mens_apparel && !womens_apparel 
    errors.add(:messages,  "you must provide at least one gender apparel")
    end 
  end 
end


# Stores must always have a name that is a minimum of 3 characters
# Stores have an annual_revenue that is a number (integer) that must be 0 or more