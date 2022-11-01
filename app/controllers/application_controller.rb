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
    find_project.to_json(include: [client: {only: [:name]}, task: {only: [:description, :due_date]}])
  end


  post "/projects" do 
    project = Project.new(params)
    if project.save 
      project.to_json
    end
  end

  patch "/projects/:id" do 
    find_project
    @project.update(params)
    @project.to_json(include: [:task, :client])
  end

  delete "/projects/:id" do 
    find_project
    if @project
      @project.destroy
      @project.to_json
    end
  end


  #Task requests 
  get "/tasks" do 
    tasks = Task.all.to_json
  end

  get "/tasks/:id" do 
    find_task.to_json(include: [:projects, :client])
  end

  post "/tasks" do 
    tasks = Task.new(params)
    if tasks.save
      tasks.to_json
    end
  end

  patch "/tasks/:id" do 
    find_task
    if @task.update
      @task.to_json
      #error message else
    end
  end

  delete "/tasks/:id" do 
    find_task 
    if @task 
      @task.destroy
      @task.to_json
    end
  end 




  #Client requests 

  get "/clients" do 
    clients = Client.all.to_json(include: [:tasks])
  end


  #DRY Methods
  private 
    def find_project 
      @project = Project.find_by_id(params[:id])
    end

    def find_task 
      @task = Task.find_by_id(params[:id])
    end


end


