class Meeting < ActiveRecord::Base
  belongs_to :cake
  belongs_to :person
  validates :cake_id, presence: true
  validates :person_id, presence: true
  # validate :friday, on: [:create,:update]

  def friday
    errors.add(:date,"not is friday") unless date.friday?
  end
end
