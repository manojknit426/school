json.array!(@schooldata) do |schooldatum|
  json.extract! schooldatum, :id, :Schoolcode, :schoolname, :branchname, :fromstd, :tostd, :boardcode, :registerunder, :schoolownershiptype, :yearofestb, :website, :email, :phone, :pictlink, :isactive
  json.url schooldatum_url(schooldatum, format: :json)
end
