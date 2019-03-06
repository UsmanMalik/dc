class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :fcm_users
  before_save :assign_user_type


  enum user_type: [:super_admin, :client_admin, :app_user]

  def assign_user_type
    self.user_type = :client_admin
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
