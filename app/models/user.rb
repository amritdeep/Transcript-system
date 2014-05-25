class User < ActiveRecord::Base
	has_one :course
	has_many :subjects

	def gpa_cal(subjects)
		grade_val = subjects.collect { |sub| sub.grade }
		total_grade = grade_val.inject{|sum, x| sum + x}
		self.gpa = total_grade / subjects.length
	end
end
