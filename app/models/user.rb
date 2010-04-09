class User < ActiveRecord::Base
  belongs_to :role
  acts_as_authorization_subject
  acts_as_authentic do |config|
 config.logged_in_timeout = 10.minutes
end

   def admin?
    has_role? :admin
  end
end

