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
  {name: "Math 1A", grade: "A", season_id: nil},
  {name: "Comp Sci 100", grade: "B", season_id: nil},
  {name: "English", grade: "A+", season_id: nil},
  {name: "History", grade: "A-", season_id: nil}
])
User.create!([
  {name: "amrit", gpa: nil},
  {name: "deep", gpa: nil},
  {name: "John", gpa: nil}
])
