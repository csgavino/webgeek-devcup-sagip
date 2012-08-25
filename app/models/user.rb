class User < ActiveRecord::Base
  attr_accessible :contact, :email, :name, :password_digest
end
