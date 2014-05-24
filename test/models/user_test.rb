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

end
