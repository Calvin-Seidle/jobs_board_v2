class CreateUserJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :user_jobs do |t|
      t.references :user, foreign_key: true
      t.references :job, foreign_key: true
      t.references :result, foreign_key: true
      t.references :requirement, foreign_key: true
      t.boolean :applied
      t.boolean :interview
      t.boolean :shortlist
      t.boolean :final
      t.string :reason

      t.timestamps
    end
  end
end
