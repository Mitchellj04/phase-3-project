
class Task < ActiveRecord::Base

    has_many :projects
    has_many :client, through: :projects 

end