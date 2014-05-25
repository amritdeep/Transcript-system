require 'test_helper'

class SubjectTest < ActiveSupport::TestCase
	test "should calculate te grade" do
		@subject = Subject.create(name: "Computer", grade: 62.42)
		assert_equal(@subject.grade_cal(@subject.grade), "A+")
	end
end
