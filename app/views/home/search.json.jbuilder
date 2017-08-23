json.users do 
	json.array!(@users) do |user|
		json.name user.name
		json.url user_path(user)
	end
end

json.jobs do 
	json.array!(@jobs) do |job|
		json.name job.job_name
		json.url job_path(job)
	end
end