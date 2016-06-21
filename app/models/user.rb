class User < ActiveRecord::Base
  include Encryption
  attr_encrypted :ssn, :key => :encryption_key
end
