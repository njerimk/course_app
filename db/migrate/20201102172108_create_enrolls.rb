class CreateEnrolls < ActiveRecord::Migration[6.0]
  def change
    create_table :enrolls do |t|
      t.integer :student_id
      t.integer :course_id

      t.timestamps
    end
  end
end
