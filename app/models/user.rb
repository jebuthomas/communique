class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body



  before_create :assign_default_role


  def assign_default_role
  	self.role = STUDENT_ROLE if self.role.to_s.blank?
  end 

  def is_admin?
  	return self.role.to_s == ADMIN_ROLE
  end

  def is_faculty?
  	return self.role.to_s == FACULTY_ROLE
  end

  def is_student?
  	return self.role.to_s == STUDENT_ROLE
  end

end
