class AddDueDateToStudyItems < ActiveRecord::Migration[6.0]
  def change
    add_column :study_items, :due_date, :date
  end
end
