class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/projects" do 
    project = Project.all.to_json(include: [task: {only: [:id, :description, :hours, :pay, :due_date]}, client: {only: [:name, :contact, :manager]}])
  end

  get "/projects/:id" do 
    project = Project.find_by_id(params["id"])
    project = Project.to_json
  end


end
