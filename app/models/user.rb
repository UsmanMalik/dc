class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :fcm_users
  has_many :tasks
  has_many :groups
  has_one :app_user


  before_save :assign_user_type
  after_create :add_entry_to_app_user_table



  enum user_type: [:super_admin, :client_admin, :app_user]


  def assign_user_type
    # self.user_type = :client_admin
  end
  
  def add_entry_to_app_user_table
    if self.user_type = :app_user
     # AppUser.create(user_id: current_user.id, status: AppUser.statuses["invited"])
    end
    
  end
  
  def self.app_user?
    (:app_user).include?(self.user_type) 
  end

  def self.client_admin?
    (:client_admin).include?(self.user_type) 
  end

  def self.super_admin?
    (:super_admin).include?(self.user_type) 
  end

      
end
