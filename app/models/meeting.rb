class Meeting < ActiveRecord::Base
  belongs_to :cake
  belongs_to :person
  validates :cake_id, presence: true
  validates :person_id, presence: true
end
