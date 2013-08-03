class InterviewSession < ActiveRecord::Base
  attr_accessible :id, :eventtime, :eventdate, :room_key, :room_id, :isValid
end
