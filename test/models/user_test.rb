require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should have one course" do
  	@user = User.new(name: "amrit")
  	assert @user.save

  	@course = Course.new(name: "Computer Science")
  	assert @course.save

  	@user.course = @course
  	assert_equal(@user, @course.user)
  end


  test "should calculate gpa" do
  	@user = User.create(name: "John")
  	@subject1 = Subject.create(name: "math", grade: 84.2)
  	@subject2 = Subject.create(name: "history", grade: 54.2)
  	@subject3 = Subject.create(name: "social", grade: 54.2)
  	@user.subjects = [@subject1, @subject2, @subject3]
  	@user.gpa_cal(@user.subjects)
  	binding.pry	
  end

end
