class Issue < ApplicationRecord
  has_many :category_issues
  has_many :categories, through: :category_issues
end
