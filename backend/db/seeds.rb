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
    website: "https://campnewman.org/",
    state: "california",
    zip_code: "95404",
    avg_review: 5.0,
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

# b8 = Business.create(


#     img_url: "https://3toh891af6rf1cn1po1ecevj-wpengine.netdna-ssl.com/wp-content/uploads/2019/11/DeerRunCamps_Youth_9889-1024x683.jpg",
#     name: "YMCA Camp High Harbour",
#     address: "40 Old Sandtown Rd SE, Cartersville, GA 30121",
#     city: "Cartersville",
#     state: "GA",
#     zip_code: "30121",
#     is_approved: true,
#     bio: "We are currently planning on operating sessions 4-9 at both Lake Burton and Lake Allatoona, utilizing new health and safety protocols and enhanced camp procedures. We are awaiting further guidance from the Governor and the CDC and will communicate further details soon."
# )

b9 = Business.create(
    img_url: "https://scontent-mia3-1.xx.fbcdn.net/v/t31.0-8/19055035_1536866296335573_6923228035452517038_o.jpg?_nc_cat=106&_nc_sid=9267fe&_nc_ohc=HmMw2AJGZosAX9h_tPF&_nc_ht=scontent-mia3-1.xx&oh=aaabee4254b7b30c649af3e814a0430f&oe=5EF64DED",
    name: "Camp Vinson Valley",
    address: "103 W Heritage St GA 31008",
    city: "Cartersville",
    state: "GA",
    zip_code: "31008",
    is_approved: true,
    bio: "A summer day camp with sports, hiking, archery, and canoeing. Camp Vinson Valley is a ministry of Byron United Methodist Church."
)

 at9 = Trait.create(
    name: "archery"
)

b10 = Business.create(
  img_url: "https://www.google.com/maps/uv?hl=en&pb=!1s0x88602d17580c4bd1%3A0x7c46b6fff245f30f!3m1!7e115!4s%2F%2Fgeo0.ggpht.com%2Fcbk%3Fpanoid%3DcI-29eDUHR9-oMRt56GTcw%26output%3Dthumbnail%26cb_client%3Dsearch.gws-prod.gps%26thumb%3D2%26yaw%3D75.06187%26pitch%3D0%26thumbfov%3D100%26w%3D130%26h%3D87!5scamp%20in%20alabama%20-%20Google%20Search!15sCgIgAQ&imagekey=!1e10!2sAF1QipMSFRknBdUT0JpYYHIaQtfAg4m3EwZOgv4DN3Ow",
  name: "Camp Skyline Ranch",
  address: "4888 AL-117",
  city: "Mestone",
  state: "AL",
  zip_code: "35984",
  is_approved: true,
  bio: "Camp Skyline is a residential, summer camp in northern Alabama for girls. We offer four 2-week sessions for girls going into grades 1 - 11, as well as three 1-week mini-sessions for girls going into grades 1 – 3. We are a Christian camp and seek to do everything for the glory of God and the encouragement of our campers."
)
attribute10 = Trait.create(
    name: "horseback riding",
)
b11 = Business.create(
  img_url: "https://www.google.com/maps/uv?hl=en&pb=!1s0x886772e8b24cf49d%3A0xf1063724d8283fc!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipN1JthFR_UkKn4xpyylAC2mO7AMXXVFDuOtqhJG%3Dw86-h87-n-k-no!5scamp%20in%20tennessee%20-%20Google%20Search!15sCgIgAQ&imagekey=!1e10!2sAF1QipNC9NYjQVieuB_LFWNMPC5_-9Sz1_5yN10T0UND#",
  name: "Cedar Lake Camp",
  address: "235 Conatser Ln",
  city: "Livingston",
  state: "TN",
  zip_code: "38570",
  is_approved: true,
  bio: "We also have lots of fun, and many return again and again to enjoy the simple pleasures of life here in a traditional camp setting. Our campers have a blast participating in the many camp activities we offer, such as swimming, ziplining, canoeing, archery, hiking, fishing, crafts, skits, games, and testing their skills on the challenge course."
)
attribute11 = Trait.create(
    name: "zipline",
)
b12 = Business.create(
  img_url: "https://www.google.com/maps/uv?hl=en&pb=!1s0x52b6c1c5acb1b355:0xc0c028998f0bf8f8!3m1!7e115!4shttps://lh5.googleusercontent.com/p/AF1QipOhoABGcP2gtEg0DJ7rXkTXX6zPTIZbofY7rpvy%3Dw260-h175-n-k-no!5scamp+in+minnesota+-+Google+Search&imagekey=!1e10!2sAF1QipOhoABGcP2gtEg0DJ7rXkTXX6zPTIZbofY7rpvy",
  name: "Camp Lincoln for Boys and Camp Lake Hubert for Girls",
  address: "23416 Camp Lincoln Rd",
  city: 'Lake Hubert',
  state: 'MN',
  zip_code: '56459',
  is_approved: true,
  bio: "For over 110 years, Camp Lincoln for Boys and Camp Lake Hubert for Girls have excelled in providing one of the best sleep-away adventures in the United States. Our brother-sister camps are located on opposite sides of Lake Hubert. With top of the line activities and instruction, our family-run camps offer the perfect playground for skill-building, fostering emotional growth, and just having a blast. "
)
b13 = Business.create(
  img_url: "https://www.visitutah.com/media/15896245/web2000_renderings-for-woodward-winter-20190412-view-2.jpg?quality=86",
  name: "Woodward Park City Summer Camp",
  address: "3863 Kilby Rd",
  city: "Park City",
  state: "UT",
  zip_code: "84098",
  is_approved: true,
  bio: "Multi-day summer camp programs provide fun, recreation, and skill progression for kids 6 and older, of any ability level. Choose a 5 or 10-day camp program"

)

b8 = Business.create(
    img_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTG_u34CrovxC6lIiAzFAWuiI30srjW2V4_EIH2gtadzljkxXku&usqp=CAU", 
    name: "East Cobb Sports Camp",
    address: "71 Sherwood Lane SE, GA 30067",
    city: "Marietta",
    state: "GA",
    zip_code: "30067",
    is_approved: true,
    bio: "Join us for a week-long athletic adventure! East Cobb Sports Camp offers so many activities it's impossible not to find something your child won't like. We offer activities and sports such as flag-football, tennis, soccer, volleyball, baseball/softball, kickball, basketball, lacrosse, four square and many more! There will also be supervised swimming and other fun activities such as tag, relays, art activities, and more! Register today to reserve your child's spot!",
)
b8 = Business.create(
    img_url: "https://www.fcacamps.org/assets/sportscamp_slidein-300x300.jpg",
    name: "FCA Camp",
    address: "8701 Leeds Road, MO 30067",
    city: "Kanas City",
    state: "MO",
    zip_code: "64129",
    is_approved: true,
    bio: "Sports Camps are for athletes and coaches who want to develop their athletic skills. Outstanding instruction, skill development and intense competition prepare the camper for future athlete competition. Sports Camps include Sport-Specific camps in which the camper selects one sport for the entire camp experience, and Multi-Sport camps in which the camper is trained in a specific sport and competes in a variety of sports as a Huddle",
)
b8 = Business.create(
    img_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTHrSK5MkrDs27ZIuEki0L9R_j6CFfOk3KHcxJQNyM-H3VmcVtX&usqp=CAU",
    name: "Planet Bravo",
    address: "2919 W. Burbank Blvd, Suite A Burbank, CA 91505",
    city: "Burbank",
    state: "CA",
    zip_code: "91505",
    is_approved: true,
    bio: "PB @ Home is truly a unique and fun social and learning experience for kids! This is not school, and it's not just a course. This online camp is an ON-and-OFF computer six-hour day (for a whole week) filled with thematic challenges, projects, games, music, laughs, prizes, and much more - just like our in-person camp, except from the comfort of your home. You pick the area of study, and awesome camp counselors entertain and educate all day!",
    )
b8 = Business.create(
    img_url: "https://clients-content.mindbodyonline.com/studios/YOUNGCHEFSACADEMYMARIETTA1/reservations/75.jpg?osv=637147045795011056",
    name: "Young Chefs® Academy Summer Culinary Sessions",
    address: "1595 Peachtree Parkway, Suite 122 Cumming, GA 30041",
    city: "Cumming",
    state: "GA",
    zip_code: "30041",
    is_approved: true,
    bio: "Summer is heating up at Young Chefs Academy! If you are looking to find a rewarding summer activity, YCA is the place to be to help beat the boredom blues…and learn a life-long skill in a fun, safe setting!",
    )
    b8 = Business.create(
    img_url: "https://campaign.goddardschool.com/dma/img/slider-1.jpg",
    name: "Goddard School",
    address: "3115 Parkbrooke Circle Woodstock, GA 30189",
    city: "Woodstock",
    state: "GA",
    zip_code: "30189",
    is_approved: true,
    bio:"Our summer camp curriculum incorporates STEAM learning (science, technology, engineering, arts and mathematics) into exciting and fun experiences for your child every day! The founding principle of our curriculum is that children experience the most genuine learning when they are having fun. We have integrated this philosophy into every aspect of our summer camp to foster play-based learning opportunities both inside and outside the classroom.",
    )

attribute13 = Trait.create(
    name: "skateboarding",
)

attribute12 = Trait.create(
    name: "rock climbing",
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

30.times do
    BusinessTrait.create(business_id: Business.all.sample.id, trait_id: Trait.all.sample.id)
 end

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



