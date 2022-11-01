
class Project < ActiveRecord::Base

    belongs_to :client
    belongs_to :task
    
end