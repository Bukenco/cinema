# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

modules = GameModule.create!([
                                { name: "module_1",
                                  description: "module 1 description",
                                  module_type_id: ModuleType.find_by_id_name(:hands_on)&.id,
                                  module_difficulty_type_id: ModuleDifficultyType.find_by_id_name(:a)&.id
                                },
                                { name: "module_2",
                                  description: "module 2 description",
                                  module_type_id: ModuleType.find_by_id_name(:theory)&.id,
                                  module_difficulty_type_id: ModuleDifficultyType.find_by_id_name(:a)&.id
                                },
                                { name: "module_3",
                                  description: "module 3 description",
                                  module_type_id: ModuleType.find_by_id_name(:practice)&.id,
                                  module_difficulty_type_id: ModuleDifficultyType.find_by_id_name(:a)&.id
                                },
                                { name: "module_4",
                                  description: "module 4 description",
                                  module_type_id: ModuleType.find_by_id_name(:hands_on)&.id,
                                  module_difficulty_type_id: ModuleDifficultyType.find_by_id_name(:b)&.id
                                },
                                { name: "module_5",
                                  description: "module 5 description",
                                  module_type_id: ModuleType.find_by_id_name(:theory)&.id,
                                  module_difficulty_type_id: ModuleDifficultyType.find_by_id_name(:b)&.id
                                },
                                { name: "module_6",
                                  description: "module 6 description",
                                  module_type_id: ModuleType.find_by_id_name(:practice)&.id,
                                  module_difficulty_type_id: ModuleDifficultyType.find_by_id_name(:b)&.id
                                },
                                { name: "module_7",
                                  description: "module 7 description",
                                  module_type_id: ModuleType.find_by_id_name(:hands_on)&.id,
                                  module_difficulty_type_id: ModuleDifficultyType.find_by_id_name(:c)&.id
                                },
                                { name: "module_8",
                                  description: "module 8 description",
                                  module_type_id: ModuleType.find_by_id_name(:theory)&.id,
                                  module_difficulty_type_id: ModuleDifficultyType.find_by_id_name(:c)&.id
                                },
                                { name: "module_9",
                                  description: "module 9 description",
                                  module_type_id: ModuleType.find_by_id_name(:practice)&.id,
                                  module_difficulty_type_id: ModuleDifficultyType.find_by_id_name(:c)&.id
                                },
                            ])

courses = GameCourse.create!([
                                {
                                    name: "Course 1",
                                    description: "course 1 description",
                                    course_category_id: CourseCategory.find_by_id_name(:category_a)&.id
                                },
                                {
                                    name: "Course 2",
                                    description: "course 2 description",
                                    course_category_id: CourseCategory.find_by_id_name(:category_a)&.id
                                },
                                {
                                    name: "Course 3",
                                    description: "course 3 description",
                                    course_category_id: CourseCategory.find_by_id_name(:category_b)&.id
                                },
                                {
                                    name: "Course 4",
                                    description: "course 4 description",
                                    course_category_id: CourseCategory.find_by_id_name(:category_b)&.id
                                },
                                {
                                    name: "Course 5",
                                    description: "course 5 description",
                                    course_category_id: CourseCategory.find_by_id_name(:category_c)&.id
                                }
                            ])

course_modules = GameCourseModule.create!([
                                             {
                                                 game_course_id: courses.first.id,
                                                 game_module_id: modules.first.id
                                             },
                                             {
                                                 game_course_id: courses.first.id,
                                                 game_module_id: modules.second.id
                                             },
                                             {
                                                 game_course_id: courses.first.id,
                                                 game_module_id: modules.third.id
                                             },
                                             {
                                                 game_course_id: courses.second.id,
                                                 game_module_id: modules.fourth.id
                                             },
                                             {
                                                 game_course_id: courses.second.id,
                                                 game_module_id: modules.fifth.id
                                             },
                                             {
                                                 game_course_id: courses.second.id,
                                                 game_module_id: modules[5].id
                                             },
                                             {
                                                 game_course_id: courses.third.id,
                                                 game_module_id: modules[6].id
                                             },
                                             {
                                                 game_course_id: courses.third.id,
                                                 game_module_id: modules[7].id
                                             },
                                             {
                                                 game_course_id: courses.third.id,
                                                 game_module_id: modules[8].id
                                             },
                                             {
                                                 game_course_id: courses.fourth.id,
                                                 game_module_id: modules[3].id
                                             },
                                             {
                                                 game_course_id: courses.fourth.id,
                                                 game_module_id: modules[4].id
                                             },
                                             {
                                                 game_course_id: courses.fourth.id,
                                                 game_module_id: modules[5].id
                                             },
                                             {
                                                 game_course_id: courses.fifth.id,
                                                 game_module_id: modules[1].id
                                             },
                                             {
                                                 game_course_id: courses.fifth.id,
                                                 game_module_id: modules[6].id
                                             },
                                             {
                                                 game_course_id: courses.fifth.id,
                                                 game_module_id: modules[8].id
                                             }
                                         ])

users = UserAccount.create!([
                                {
                                    first_name: "first name 1",
                                    last_name: "last name 2",
                                    username: "user_1"
                                },
                                {
                                    first_name: "first name 2",
                                    last_name: "last name 2",
                                    username: "user_2"
                                },
                                {
                                    first_name: "first name 3",
                                    last_name: "last name 3",
                                    username: "user_3"
                                },
                                {
                                    first_name: "first name 4",
                                    last_name: "last name 4",
                                    username: "user_4"
                                },
                                {
                                    first_name: "first name 5",
                                    last_name: "last name 5",
                                    username: "user_5"
                                },
                                {
                                    first_name: "first name 6",
                                    last_name: "last name 6",
                                    username: "user_6"
                                }
                            ])


user_course_module = UserCourseModule.create!([
                                                  {
                                                      user_account_id: users.first.id,
                                                      game_course_module_id: course_modules[0].id
                                                  },
                                                  {
                                                      user_account_id: users.first.id,
                                                      game_course_module_id: course_modules[1].id
                                                  },
                                                  {
                                                      user_account_id: users.first.id,
                                                      game_course_module_id: course_modules[2].id
                                                  },
                                                  {
                                                      user_account_id: users.first.id,
                                                      game_course_module_id: course_modules[3].id
                                                  },
                                                  {
                                                      user_account_id: users.first.id,
                                                      game_course_module_id: course_modules[4].id
                                                  },
                                                  {
                                                      user_account_id: users.first.id,
                                                      game_course_module_id: course_modules[5].id
                                                  },
                                                  {
                                                      user_account_id: users.first.id,
                                                      game_course_module_id: course_modules[6].id
                                                  },
                                                  {
                                                      user_account_id: users.first.id,
                                                      game_course_module_id: course_modules[7].id
                                                  },
                                                  {
                                                      user_account_id: users.first.id,
                                                      game_course_module_id: course_modules[8].id
                                                  },
                                                  {
                                                      user_account_id: users.first.id,
                                                      game_course_module_id: course_modules[9].id
                                                  },
                                                  {
                                                      user_account_id: users.first.id,
                                                      game_course_module_id: course_modules[10].id
                                                  },
                                                  {
                                                      user_account_id: users.first.id,
                                                      game_course_module_id: course_modules[11].id
                                                  },
                                                  {
                                                      user_account_id: users.first.id,
                                                      game_course_module_id: course_modules[12].id
                                                  },
                                                  {
                                                      user_account_id: users.first.id,
                                                      game_course_module_id: course_modules[13].id
                                                  },
                                                  {
                                                      user_account_id: users.first.id,
                                                      game_course_module_id: course_modules[14].id
                                                  },
                                                  {
                                                      user_account_id: users.second.id,
                                                      game_course_module_id: course_modules[0].id
                                                  },
                                                  {
                                                      user_account_id: users.second.id,
                                                      game_course_module_id: course_modules[1].id
                                                  },
                                                  {
                                                      user_account_id: users.second.id,
                                                      game_course_module_id: course_modules[2].id
                                                  },
                                                  {
                                                      user_account_id: users.second.id,
                                                      game_course_module_id: course_modules[3].id
                                                  },
                                                  {
                                                      user_account_id: users.second.id,
                                                      game_course_module_id: course_modules[4].id
                                                  },
                                                  {
                                                      user_account_id: users.second.id,
                                                      game_course_module_id: course_modules[5].id
                                                  },
                                                  {
                                                      user_account_id: users.second.id,
                                                      game_course_module_id: course_modules[6].id
                                                  },
                                                  {
                                                      user_account_id: users.second.id,
                                                      game_course_module_id: course_modules[7].id
                                                  },
                                                  {
                                                      user_account_id: users.second.id,
                                                      game_course_module_id: course_modules[8].id
                                                  },
                                                  {
                                                      user_account_id: users.second.id,
                                                      game_course_module_id: course_modules[9].id
                                                  },
                                                  {
                                                      user_account_id: users.second.id,
                                                      game_course_module_id: course_modules[10].id
                                                  },
                                                  {
                                                      user_account_id: users.third.id,
                                                      game_course_module_id: course_modules[3].id
                                                  },
                                                  {
                                                      user_account_id: users.third.id,
                                                      game_course_module_id: course_modules[4].id
                                                  },
                                                  {
                                                      user_account_id: users.third.id,
                                                      game_course_module_id: course_modules[5].id
                                                  },
                                                  {
                                                      user_account_id: users.third.id,
                                                      game_course_module_id: course_modules[6].id
                                                  },
                                                  {
                                                      user_account_id: users.third.id,
                                                      game_course_module_id: course_modules[7].id
                                                  },
                                                  {
                                                      user_account_id: users.third.id,
                                                      game_course_module_id: course_modules[8].id
                                                  },
                                                  {
                                                      user_account_id: users.third.id,
                                                      game_course_module_id: course_modules[9].id
                                                  },
                                                  {
                                                      user_account_id: users.third.id,
                                                      game_course_module_id: course_modules[10].id
                                                  },
                                                  {
                                                      user_account_id: users.third.id,
                                                      game_course_module_id: course_modules[11].id
                                                  },
                                                  {
                                                      user_account_id: users.third.id,
                                                      game_course_module_id: course_modules[12].id
                                                  },
                                                  {
                                                      user_account_id: users.third.id,
                                                      game_course_module_id: course_modules[13].id
                                                  },
                                                  {
                                                      user_account_id: users.third.id,
                                                      game_course_module_id: course_modules[14].id
                                                  },
                                                  {
                                                      user_account_id: users.fourth.id,
                                                      game_course_module_id: course_modules[0].id
                                                  },
                                                  {
                                                      user_account_id: users.fourth.id,
                                                      game_course_module_id: course_modules[3].id
                                                  },
                                                  {
                                                      user_account_id: users.fourth.id,
                                                      game_course_module_id: course_modules[6].id
                                                  },
                                                  {
                                                      user_account_id: users.fourth.id,
                                                      game_course_module_id: course_modules[7].id
                                                  },
                                                  {
                                                      user_account_id: users.fourth.id,
                                                      game_course_module_id: course_modules[8].id
                                                  },
                                                  {
                                                      user_account_id: users.fourth.id,
                                                      game_course_module_id: course_modules[9].id
                                                  },
                                                  {
                                                      user_account_id: users.fourth.id,
                                                      game_course_module_id: course_modules[10].id
                                                  },
                                                  {
                                                      user_account_id: users.fourth.id,
                                                      game_course_module_id: course_modules[11].id
                                                  },
                                                  {
                                                      user_account_id: users.fifth.id,
                                                      game_course_module_id: course_modules[0].id
                                                  },
                                                  {
                                                      user_account_id: users.fifth.id,
                                                      game_course_module_id: course_modules[1].id
                                                  },
                                                  {
                                                      user_account_id: users.fifth.id,
                                                      game_course_module_id: course_modules[2].id
                                                  },
                                                  {
                                                      user_account_id: users.fifth.id,
                                                      game_course_module_id: course_modules[3].id
                                                  },
                                                  {
                                                      user_account_id: users.fifth.id,
                                                      game_course_module_id: course_modules[4].id
                                                  },
                                                  {
                                                      user_account_id: users.fifth.id,
                                                      game_course_module_id: course_modules[5].id
                                                  },
                                                  {
                                                      user_account_id: users.fifth.id,
                                                      game_course_module_id: course_modules[6].id
                                                  },
                                                  {
                                                      user_account_id: users.fifth.id,
                                                      game_course_module_id: course_modules[7].id
                                                  },
                                                  {
                                                      user_account_id: users.fifth.id,
                                                      game_course_module_id: course_modules[8].id
                                                  },
                                                  {
                                                      user_account_id: users.fifth.id,
                                                      game_course_module_id: course_modules[9].id
                                                  },
                                                  {
                                                      user_account_id: users.fifth.id,
                                                      game_course_module_id: course_modules[10].id
                                                  },
                                                  {
                                                      user_account_id: users.fifth.id,
                                                      game_course_module_id: course_modules[11].id
                                                  },
                                                  {
                                                      user_account_id: users.fifth.id,
                                                      game_course_module_id: course_modules[12].id
                                                  },
                                                  {
                                                      user_account_id: users.fifth.id,
                                                      game_course_module_id: course_modules[13].id
                                                  },
                                                  {
                                                      user_account_id: users.fifth.id,
                                                      game_course_module_id: course_modules[14].id
                                                  },
                                                  {
                                                      user_account_id: users[5].id,
                                                      game_course_module_id: course_modules[3].id
                                                  },
                                                  {
                                                      user_account_id: users[5].id,
                                                      game_course_module_id: course_modules[4].id
                                                  },
                                                  {
                                                      user_account_id: users[5].id,
                                                      game_course_module_id: course_modules[5].id
                                                  }
                                              ])