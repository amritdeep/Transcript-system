require 'test_helper'

class SeasonTest < ActiveSupport::TestCase
	test "should have many subject" do
		@season = Season.create(name: "Winter")
		@subject1 = Subject.create(name: "Math")
		@subject2 = Subject.create(name: "English")
		@season.subjects = [@subject1, @subject2]
		assert_includes(@season.subjects, @subject1)
		assert_includes(@season.subjects, @subject2)
	end

end
