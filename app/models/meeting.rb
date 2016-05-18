class Meeting < ActiveRecord::Base
  belongs_to :cake
  belongs_to :person
end
