class AddCommentToProblemsSolutions < ActiveRecord::Migration[5.2]
  def change
    add_column :problems_solutions, :comment, :text
  end
end
