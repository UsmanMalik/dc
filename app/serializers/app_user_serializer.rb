class AppUserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_id, :client_admin_id, :status, :auth_token
  belongs_to :user
end
