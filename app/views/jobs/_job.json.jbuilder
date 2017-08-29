json.extract! job, :id, :job_link, :job_name, :company_name, :job_description, :created_at, :updated_at
json.url job_url(job, format: :json)
