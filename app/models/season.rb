class Season < ActiveRecord::Base
  belongs_to :course
  has_many :subjects
end
