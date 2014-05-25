require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  # test "should get index" do
  #   get :index
  #   assert_response :success
  # end

  test "should get show" do
  	dump_data
    get :show, id: @user.id

    # assert_response :success
  end

  def dump_data
  	@user = User.create(name: "John")
  	@course = Course.create(name: "Computer Science")
  	@user.course = @course

  	@winter = Season.create(name: "Winter")
  	@fall = Season.create(name: "Fall")
  	@spring = Season.create(name: "Spring")

  	@course.seasons = [@winter, @fall, @spring]

  	@com_sci1 = Subject.create(name: "Comp Sci 1A", grade: )
  	@mgm1 = Subject.create(name: "Management 1A", grade: )
  	@math1 = Subject.create(name: "Math 1A", grade: )

  	@winter.subjects = [@com_sci1, @mgm1, @math1]

  	@com_sci2 = Subject.create(name: "Comp Sci 2A", grade: "B+")
  	@mgm2 = Subject.create(name: "Management 2A", grade: "B")
  	@math2 = Subject.create(name: "Math 2A", grade: "B-")

  	@fall.subjects = [@com_sci2, @mgm2, @math2]

  	@math3 = Subject.create(name: "Math 3A", grade: "A")
  	@eng = Subject.create(name: "English", grade: "B")
  	@his = Subject.create(name: "Histroy", grade: "B+")

  	@spring.subjects = [@math3, @eng, @his]
  end

end
