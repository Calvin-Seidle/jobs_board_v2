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

json.requirements do 
	json.array!(@requirements) do |requirement|
		json.name requirement.requirement
		json.url requirement_path(requirement)
	end
end

json.requirements do 
	json.array!(@requirements) do |requirement|
		json.name requirement.requirement
		json.url requirement_path(requirement)
	end
end

json.companies do 
	json.array!(@companies) do |company|
		json.name company.company_name
		json.url job_path(company)
	end
end