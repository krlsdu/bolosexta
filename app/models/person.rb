class Person < ActiveRecord::Base
  attr_encrypted :cellphone, key: Rails.application.secrets.secret_key_base
end
