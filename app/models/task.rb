class Task < ApplicationRecord
	has_many :usertasks, dependent: :destroy
  	has_many :users, through: :usertasks 
end
