require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  test "should have seasons" do
  	@course = Course.create(name: "Computer Science")
  	@seasons = Season.new(name: "Fall")
  	assert @seasons.save
  	@course.seasons = [@seasons]
  	assert_includes(@course.seasons, @seasons)
  end

end
