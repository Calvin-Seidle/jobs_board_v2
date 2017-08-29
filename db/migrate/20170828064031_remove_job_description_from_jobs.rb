class RemoveJobDescriptionFromJobs < ActiveRecord::Migration[5.1]
  def change
    remove_column :jobs, :job_description, :string
  end
end
