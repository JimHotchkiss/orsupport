class CategoryIssues < ActiveRecord::Migration[5.1]
  def change
    create_table :category_issues do |t|
      t.string :name
      t.integer :category_id
      t.integer :issue_id

      t.timestamps
    end 
  end
end
