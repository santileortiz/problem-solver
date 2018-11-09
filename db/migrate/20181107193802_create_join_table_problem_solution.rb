class CreateJoinTableProblemSolution < ActiveRecord::Migration[5.2]
  def change
    create_join_table :problems, :solutions do |t|
      # t.index [:problem_id, :solution_id]
      # t.index [:solution_id, :problem_id]
    end
  end
end
