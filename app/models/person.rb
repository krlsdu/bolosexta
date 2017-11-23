class Person < ActiveRecord::Base
  has_many :meeting, dependent: :delete_all
  attr_encrypted :cellphone, key: Rails.application.secrets.secret_key_base
  validates :cellphone, presence: true
end
