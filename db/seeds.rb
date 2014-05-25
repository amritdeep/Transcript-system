Course.create!([
  {name: "Computer Science", user_id: 1},
  {name: "Information Management", user_id: 3}
])
Season.create!([
  {name: "Winter", course_id: 1},
  {name: "Fall", course_id: 1},
  {name: "Spring", course_id: 1}
])
Subject.create!([
  {name: "Math 1A", grade: 88.6, season_id: nil, user_id: nil},
  {name: "Comp Sci 100", grade: 52.0, season_id: nil, user_id: nil},
  {name: "English", grade: 42.67, season_id: nil, user_id: nil},
  {name: "History", grade: 17.0, season_id: nil, user_id: nil}
])
User.create!([
  {name: "amrit", gpa: nil},
  {name: "deep", gpa: nil},
  {name: "John", gpa: nil}
])
