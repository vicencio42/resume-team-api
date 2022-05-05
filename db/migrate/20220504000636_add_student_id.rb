class AddStudentId < ActiveRecord::Migration[7.0]
  def change
    add_column :capstones, :student_id, :integer
    add_column :educations, :student_id, :integer
    add_column :experiences, :student_id, :integer
    add_column :skills, :student_id, :integer
    
    remove_column :students, :personal_blig, :string
    add_column :students, :personal_blog, :string

  end
end
