ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  fixtures :all

  # Add more helper methods to be used by all tests here...
  def dump_data
  	@user = User.create(name: "John")
  	@course = Course.create(name: "Computer Science")
  	@user.course = @course

  	@course.seasons = [@winter, @fall, @spring]
  end

  def seasons1
  	@spring = Season.create(name: "Spring")
  	@math3 = Subject.create(name: "Math 3A", grade: "A")
  	@eng = Subject.create(name: "English", grade: "B")
  	@his = Subject.create(name: "Histroy", grade: "B+")
  	@spring.subjects = [@math3, @eng, @his]
  end

  def seasons2
  	@fall = Season.create(name: "Fall")
  	@com_sci2 = Subject.create(name: "Comp Sci 2A", grade: "B+")
  	@mgm2 = Subject.create(name: "Management 2A", grade: "B")
  	@math2 = Subject.create(name: "Math 2A", grade: "B-")
  	@fall.subjects = [@com_sci2, @mgm2, @math2]
  end

  def seasons3
  	@winter = Season.create(name: "Winter")
  	@com_sci1 = Subject.create(name: "Comp Sci 1A", grade: 100 )
  	@mgm1 = Subject.create(name: "Management 1A", grade: 85 )
  	@math1 = Subject.create(name: "Math 1A", grade: 65)
  	@winter.subjects = [@com_sci1, @mgm1, @math1]
  end



end
