class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :job_link
      t.string :job_name
      t.string :company_name
      t.string :job_description

      t.timestamps
    end
  end
end
