json.extract! user_job, :id, :user_id, :job_id, :result_id, :requirement_id, :applied, :interview, :shortlist, :final, :reason, :created_at, :updated_at
json.url user_job_url(user_job, format: :json)
