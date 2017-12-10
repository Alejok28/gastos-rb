class Expense < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  scope :concepto, ->(c) { where("concept like ?", c) }
  scope :id,       ->(id) { where("category_id like ?", id) }
end
