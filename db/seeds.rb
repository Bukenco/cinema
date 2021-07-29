# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

movies = Movie.create!([
                           {
                               name: "The Fast and the Furious",
                               imdb_id: "tt0232500"
                           },
                           {
                               name: "2 Fast 2 Furious",
                               imdb_id: "tt0322259"
                           },
                           {
                               name: "The Fast and the Furious: Tokyo Drift",
                               imdb_id: "tt0463985"
                           },
                           {
                               name: "Fast & Furious",
                               imdb_id: "tt1013752"
                           },
                           {
                               name: "Fast Five",
                               imdb_id: "tt1596343"
                           },
                           {
                               name: "Fast & Furious 6",
                               imdb_id: "tt1905041"
                           },
                           {
                               name: "Furious 7",
                               imdb_id: "tt2820852"
                           },
                           {
                               name: "The Fate of the Furious",
                               imdb_id: "tt4630562"
                           }
                       ])

venues = Venue.create!([
                                {
                                    name: "Room A",
                                    id_name: "room_a"
                                },
                                {
                                    name: "Room B",
                                    id_name: "room_b"
                                }
                            ])

session_slots = SessionSlot.create!([
                                      {
                                          name: "Morning Session",
                                          start_date: "12:00",
                                          end_date: "14:50"
                                      },
                                      {
                                          name: "Afternoon Session",
                                          start_date: "15:00",
                                          end_date: "17:50"
                                      },
                                      {
                                          name: "Evening Session",
                                          start_date: "18:00",
                                          end_date: "20:50"
                                      },
                                      {
                                          name: "Night Session",
                                          start_date: "21:00",
                                          end_date: "22:50"
                                      }
                                  ])