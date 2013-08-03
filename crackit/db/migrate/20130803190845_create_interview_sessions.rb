class CreateInterviewSessions < ActiveRecord::Migration
  def change
    create_table :interview_sessions do |t|
		t.datetime :eventdate
		t.datetime :eventtime
		t.string   :room_key
		t.string   :room_id
		t.boolean :isValid
		t.timestamps
    end
  end
end
