Manager.destroy_all
Client.destroy_all
Review.destroy_all

puts "start seeding"

Manager.create([
     {
         name: "Williams Emmanuel",
         age: 30,
         address: "Robert Robertson, 1234 NW Bobcat Lane",
         phone: "+254790940364",
         email: "williamsemmauel@gmail.com",
        #  venue_id: 2
     }
]) 

Client.create([
    {
      name: "Ibrahim mutua",
      age: 23,
      address: "P.O.Box 351, Mombasa",
      phone: "+254727421437",
      email: "ibrahimmutua@gmail.com",
    #   booking_id: 3
    },

    {
       name: "Henry kawira",
       age: 25,
       address: "P.O.Box 30, Kabarnet",
       phone: "+254726574868",
       email: "henrykawira@gmail.com",
    #    booking_id: 1
    },

    {
      name: "Pollax kibet",
      age: 23,
      address: "P.O.Box 10, Eldoret",
      phone: "+254746782645",
      email: "pollaxkibet@gmail.com",
    #   booking_id: 2
    }
])

Review.create([
    {
        description: "It is an awesome venue, we had a good time",
        client_id: 1,
        # venue_id: 2,
        ratings: 4
    },

    {
        description: "It is a nice place with enough space for hosting any event",
        client_id: 2,
        # venue_id: 1,
        ratings: 5
    },

    {
        description: "We had a really nice time, I would recommend this venue to anyone planning to host an event especially wedding or party",
        client_id: 3,
        # venue_id: 3,
        ratings: 5
    }
])














puts "done seeding"