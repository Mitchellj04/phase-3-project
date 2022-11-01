class Projects < ApplicationController

    get "/projects" do 
        Project.all.to_json(include: [tasks: {only: [:id, :description, :hours, :pay, :due_date]}])
    end

end