class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
	has_many :usertasks, dependent: :destroy
  	has_many :tasks, through: :usertasks 
  	devise	:database_authenticatable, :registerable,
        	:recoverable, :rememberable, :trackable, :validatable
end
