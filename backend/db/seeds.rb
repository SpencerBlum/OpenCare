# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Business.destroy_all
Review.destroy_all

user1 = User.create(

first_name: "spencer",
last_name: "blam",
email: "spencer@gmail.com",
is_business: true,
img_url: "https://likewise-stage.azureedge.net/uploads/3eb6cf23-895b-45e9-b92c-5fb1b457dd04/bill-gates-profile-pic.jpg",
password_digest: BCrypt::Password.create("123")
)

user2 = User.create(

first_name: "gene",
last_name: "camp",
email: "gene@gmail.com",
is_business: false,
img_url: "https://di2ponv0v5otw.cloudfront.net/posts/2018/02/02/5a7534732ab8c5a1a0ef5484/m_5a75347d1dffdaf18a89fa7c.jpg",
password_digest: BCrypt::Password.create("123")
)

user3 = User.create(

first_name: "bryan",
last_name: "rohunda",
email: "bryan@gmail.com",
is_business: false,
img_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRI2oAGth8WZ1UQS4cNmO5qv6yQ9dtPZRfpNpbUWAb-TBwFPJfM&usqp=CAU",
password_digest: BCrypt::Password.create("123")
)

b1 = Business.create(

    user_id: user1.id, 
    img_url: "https://www.pressdemocrat.com/csp/mediapool/sites/dt.common.streams.StreamServer.cls?STREAMOID=zDPjXvg_28mtCGWAyRRwBc$daE2N3K4ZzOUsqbU5sYtATCRnSFCvkAoTCu2m3KzsWCsjLu883Ygn4B49Lvm9bPe2QeMKQdVeZmXF$9l$4uCZ8QDXhaHEp3rvzXRJFdy0KqPHLoMevcTLo3h8xh70Y6N_U_CryOsw6FTOdKL_jpQ-&CONTENTTYPE=image/jpeg",
    name: "URJ Camp Newman",
    address: "4088 Porter Creek Road",
    city: "Santa Rosa",
    state: "california",
    zip_code: 95404,
    is_approved: true,
    bio: "At URJ Camp Newman, we’re building a foundation for a vibrant Jewish life. Guided by experienced staff and Jewish professionals, we offer 25 traditional and specialty overnight summer sessions from 1 to 8 weeks at the beautiful bay-side campus of Cal Maritime – with outdoor adventure at our Porter Creek home! Our camp empowers children and teens to better themselves, their communities and the world."
)


b2 = Business.create(

    user_id: user1.id, 
    img_url: "https://www.pressdemocrat.com/csp/mediapool/sites/dt.common.streams.StreamServer.cls?STREAMOID=zDPjXvg_28mtCGWAyRRwBc$daE2N3K4ZzOUsqbU5sYtATCRnSFCvkAoTCu2m3KzsWCsjLu883Ygn4B49Lvm9bPe2QeMKQdVeZmXF$9l$4uCZ8QDXhaHEp3rvzXRJFdy0KqPHLoMevcTLo3h8xh70Y6N_U_CryOsw6FTOdKL_jpQ-&CONTENTTYPE=image/jpeg",
    name: "Zoeys Daycare",
    address: "120 Cannon Street",
    city: "Charleston",
    state: "South Carolina",
    zip_code: 95404,
    is_approved: true,
    bio: "At URJ Camp Newman, we’re building a foundation for a vibrant Jewish life. Guided by experienced staff and Jewish professionals, we offer 25 traditional and specialty overnight summer sessions from 1 to 8 weeks at the beautiful bay-side campus of Cal Maritime – with outdoor adventure at our Porter Creek home! Our camp empowers children and teens to better themselves, their communities and the world."
)

b3 = Business.create(
    user_id: user1.id, 
    img_url: "https://www.pressdemocrat.com/csp/mediapool/sites/dt.common.streams.StreamServer.cls?STREAMOID=zDPjXvg_28mtCGWAyRRwBc$daE2N3K4ZzOUsqbU5sYtATCRnSFCvkAoTCu2m3KzsWCsjLu883Ygn4B49Lvm9bPe2QeMKQdVeZmXF$9l$4uCZ8QDXhaHEp3rvzXRJFdy0KqPHLoMevcTLo3h8xh70Y6N_U_CryOsw6FTOdKL_jpQ-&CONTENTTYPE=image/jpeg",
    name: "Happy Kids",
    address: "120 Cannon Street",
    city: "Charleston",
    state: "South Carolina",
    zip_code: 95404,
    is_approved: true,
    bio: "At URJ Camp Newman, we’re building a foundation for a vibrant Jewish life. Guided by experienced staff and Jewish professionals, we offer 25 traditional and specialty overnight summer sessions from 1 to 8 weeks at the beautiful bay-side campus of Cal Maritime – with outdoor adventure at our Porter Creek home! Our camp empowers children and teens to better themselves, their communities and the world."
)

b4 = Business.create(

    
    img_url: "https://www.pressdemocrat.com/csp/mediapool/sites/dt.common.streams.StreamServer.cls?STREAMOID=zDPjXvg_28mtCGWAyRRwBc$daE2N3K4ZzOUsqbU5sYtATCRnSFCvkAoTCu2m3KzsWCsjLu883Ygn4B49Lvm9bPe2QeMKQdVeZmXF$9l$4uCZ8QDXhaHEp3rvzXRJFdy0KqPHLoMevcTLo3h8xh70Y6N_U_CryOsw6FTOdKL_jpQ-&CONTENTTYPE=image/jpeg",
    name: "Camp Kessam",
    address: "120 Cannon Street",
    city: "Charleston",
    state: "South Carolina",
    zip_code: 95404,
    is_approved: true,
    bio: "At URJ Camp Newman, we’re building a foundation for a vibrant Jewish life. Guided by experienced staff and Jewish professionals, we offer 25 traditional and specialty overnight summer sessions from 1 to 8 weeks at the beautiful bay-side campus of Cal Maritime – with outdoor adventure at our Porter Creek home! Our camp empowers children and teens to better themselves, their communities and the world."
)








review1 = Review.create(
    user_id: user1.id,
    business_id: b1.id,
    message: "Love this camp so much",
    rating: 5

)

review2 = Review.create(
    user_id: user2.id,
    business_id: b1.id,
    message: "Had an amazing expience and met so many people",
    rating: 5
)

attributes1 = BusinessAttribute.create(
    all_day: true,
    business_id: b1.id
)

monday = Hour.create(
    business_id: b1.id,
    day: "monday",
    open_time: "7:00AM",
    close_time: "8:00PM"
)

Tuesday = Hour.create(
    business_id: b1.id,
    day: "tuesday",
    open_time: "7:00AM",
    close_time: "9:00PM"
)

follow1 = Follow.create(
    user_id: user1.id,
    business_id: b1.id
)



puts "Done"



