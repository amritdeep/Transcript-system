class User < ActiveRecord::Base
	has_one :course
end
