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
password_digest: BCrypt::Password.create("123"),
zip_code: "29403"
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
    zip_code: "95404",
    is_approved: true,
    bio: "At URJ Camp Newman, we’re building a foundation for a vibrant Jewish life. Guided by experienced staff and Jewish professionals, we offer 25 traditional and specialty overnight summer sessions from 1 to 8 weeks at the beautiful bay-side campus of Cal Maritime – with outdoor adventure at our Porter Creek home! Our camp empowers children and teens to better themselves, their communities and the world."
)


b2 = Business.create(
    user_id: user1.id,
    img_url: "https://lh3.googleusercontent.com/proxy/n1oGyFgE-EgTVqF04K-M9wW3l82MjHf5tY40GUAHJ_Q0bQmXacIE_nFPUePvFVklWin7tPQEyb8yTbzpib0VdbuOUSnI2QdlsMdxqpim3AanNBYo_BNDBbUDe9ZooLxt5sCpHS9cWsq8fQJNF9WFvZ92t-_2BVh6URWi3EFbFyM",
    name: "Zoeys Daycare",
    address: "120 Cannon Street Charleston South Carolina 29403",
    city: "Charleston",
    state: "South Carolina",
    zip_code: "95404",
    is_approved: true,
    bio: "Great Child care in the heart of Charleston"
)

b3 = Business.create(

    user_id: user1.id,
    img_url: "https://cdn.website.thryv.com/b645b356da934154ad893e0d61dd37c6/dms3rep/multi/363042-callout-1-d579.jpg",
    name: "Happy Kids",
    address: "28 woolfe Street Charleston South Carolina",
    city: "Charleston",
    state: "South Carolina",
    zip_code: "29403",
    is_approved: true,
    bio: "At URJ Camp Newman, we’re building a foundation for a vibrant Jewish life. Guided by experienced staff and Jewish professionals, we offer 25 traditional and specialty overnight summer sessions from 1 to 8 weeks at the beautiful bay-side campus of Cal Maritime – with outdoor adventure at our Porter Creek home! Our camp empowers children and teens to better themselves, their communities and the world."
)

b4 = Business.create(

    user_id: user1.id,
    img_url: "https://www.kittyhawk.com/wp-content/uploads/2016/07/groupbeachdrills.jpg",
    name: "Sol Surfers Surf Camp",
    address: "800 E Ashley Ave, Folly Beach, SC 29439",
    city: "Folly Beach",
    state: "South Carolina",
    zip_code: "29439",
    is_approved: true,
    bio: "With over thirty-five years of surfing experience, Kai Dilling is dedicated to helping students of all ages and abilities safely learn to appreciate an activity that can become a healthy, relaxing love of a lifetime. Kai is a native of the area and has a BS Degree in Education from the College of Charleston and taught Middle School Science for 10 years. He is presently teaching surfing at the College of Charleston in the School of Education, Health, and Human Performance department. He is a certified NASM personal trainer and yoga instructor. Since 2000, Sol Surfers Surf Camp, LLC has provided a responsible and educational program that centers on safety and ocean knowledge and fun. Part of the Billabong Camps program, Sol Surfers has garnered world-wide acclaim."
)


b5 = Business.create(

    user_id: user1.id,
    img_url: "https://thenypost.files.wordpress.com/2020/02/daycare.jpg?quality=90&amp;strip=all&amp;w=1200",
    name: "Mommy Daycare",
    address: "891 Avenue Z, Brooklyn, NY 11235",
    city: "Brooklyn",
    state: "NY",
    zip_code: "11235",
    is_approved: true,
    bio: "If you are looking for a safe and happy place for your child then come in for a visit. We have two Group Family Day Care programs that you can visit and explore.We care for children 3 months and up to 5 years of age. Our goal is to provide a fun and safe learning environment, while encouraging social, emotional and physical development. Each child receives quality care in a warm loving environment with lots of affection."
)


b6 = Business.create(


    img_url: "https://18vi1n40obrku6xfb34e3uj4dx-wpengine.netdna-ssl.com/wp-content/uploads/2017/03/drop-in-child-care.jpg",
    name: "Mommy Daycare",
    address: "891 Avenue Z, Brooklyn, NY 11235",
    city: "Brooklyn",
    state: "NY",
    zip_code: "11235",
    is_approved: true,
    bio: "Mommy day care is the day care that parents love. We have been opporating for over 24 years in Brooklyn"
)

b7 = Business.create(


    img_url: "https://www.jweekly.com/wp-content/uploads/2020/03/CAMPStawonga-cabins1WEB.jpg",
    name: "Camp Tawonga",
    address: "31201 Mather Rd, Groveland, CA 95321",
    city: "Groveland",
    state: "CA",
    zip_code: "95321",
    is_approved: true,
    bio: "Camp Tawonga, we’re building a foundation for a vibrant Jewish life. Guided by experienced staff and Jewish professionals, we offer 25 traditional and specialty overnight summer sessions from 1 to 8 weeks at the beautiful bay-side campus of Cal Maritime – with outdoor adventure at our Porter Creek home! Our camp empowers children and teens to better themselves, their communities and the world."
)

b8 = Business.create(


    img_url: "https://3toh891af6rf1cn1po1ecevj-wpengine.netdna-ssl.com/wp-content/uploads/2019/11/DeerRunCamps_Youth_9889-1024x683.jpg",
    name: "YMCA Camp High Harbour",
    address: "40 Old Sandtown Rd SE, Cartersville, GA 30121",
    city: "Cartersville",
    state: "GA",
    zip_code: "30121",
    is_approved: true,
    bio: "We are currently planning on operating sessions 4-9 at both Lake Burton and Lake Allatoona, utilizing new health and safety protocols and enhanced camp procedures. We are awaiting further guidance from the Governor and the CDC and will communicate further details soon."
)

b8 = Business.create(


    img_url: "https://3toh891af6rf1cn1po1ecevj-wpengine.netdna-ssl.com/wp-content/uploads/2019/11/DeerRunCamps_Youth_9889-1024x683.jpg",
    name: "YMCA Camp High Harbour",
    address: "40 Old Sandtown Rd SE, Cartersville, GA 30121",
    city: "Cartersville",
    state: "GA",
    zip_code: "30121",
    is_approved: true,
    bio: "We are currently planning on operating sessions 4-9 at both Lake Burton and Lake Allatoona, utilizing new health and safety protocols and enhanced camp procedures. We are awaiting further guidance from the Governor and the CDC and will communicate further details soon."
)


puts ("Created Businesses")

attribute1 = Trait.create(
    name: "swimming",
)



attribute2 = Trait.create(
    name: "sailing",
)

attribute3 = Trait.create(
    name: "basketball",
)


attribute4 = Trait.create(
    name: "soccer",
)

attribute5 = Trait.create(
    name: "surfing",
)

BusinessTrait.create(
    business_id: b1.id,
    trait_id: attribute1.id
)

BusinessTrait.create(
    business_id: b6.id,
    trait_id: attribute2.id
)

BusinessTrait.create(
    business_id: b2.id,
    trait_id: attribute4.id
)
BusinessTrait.create(
    business_id: b2.id,
    trait_id: attribute3.id
)


BusinessTrait.create(
    business_id: b3.id,
    trait_id: attribute4.id
)
BusinessTrait.create(
    business_id: b4.id,
    trait_id: attribute5.id
)


BusinessTrait.create(
    business_id: b4.id,
    trait_id: attribute2.id
)

BusinessTrait.create(
    business_id: b4.id,
    trait_id: attribute3.id
)

BusinessTrait.create(
    business_id: b7.id,
    trait_id: attribute1.id
)

BusinessTrait.create(
    business_id: b6.id,
    trait_id: attribute2.id
)

BusinessTrait.create(
    business_id: b5.id,
    trait_id: attribute3.id
)

BusinessTrait.create(
    business_id: b5.id,
    trait_id: attribute1.id
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



