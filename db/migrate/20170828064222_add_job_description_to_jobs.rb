class AddJobDescriptionToJobs < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :job_description, :text
  end
end
