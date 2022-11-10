
class Client < ActiveRecord::Base

    has_many :projects, through: :tasks
    has_many :tasks

end