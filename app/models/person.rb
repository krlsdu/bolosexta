class Person < ActiveRecord::Base
  has_many :meeting
  attr_encrypted :cellphone, key: Rails.application.secrets.secret_key_base
  validates :cellphone, presence: true
end
