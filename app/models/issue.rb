class Issue < ApplicationRecord
  has_many :category_issues
  has_many :categories, through: :category_issues

  validates :title, presence: true, length: {minimum: 5}
  validates :description, presence: true, length: {maximum: 150,
    too_long: "%{count} characters is the maximum allowed" }
  validates :solution, presence: true
  #validates :category_ids, acceptance: true
end
