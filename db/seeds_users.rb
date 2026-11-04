WifiNetwork.create!([
  {ssid: "MY COMPANY", password: "Hello there123!!", firmware_updates: false}
])
Uupdate.create!([
  {schedule_restart: "2026-11-03T01:43:19Z"}
])
Logindetail.create!([
  {email: "pam.cooke@urcompany.com", password: "hellotherethisismypasswordoops"},
  {email: "pam.cooke@urcompany.com", password: "mypasdwordhahaha1!"}
])
Employee.create!([
  {fullname: "josie jacobs", email: "josie.jacobs@yourcompany.com", password: "ArianaGrande1", pic: "josie.jpg", dob: "27/08/92", company: "YourCompany", city: "London", gender: "f", description: "", iscyberto: nil},
  {fullname: "rob king", email: "rob.king@urcompany.com", password: "", pic: "rob.jpg", dob: "26/01/91", company: "YourCompany", city: "London", gender: "m", description: "", iscyberto: false},
  {fullname: "liam kening", email: "liam.killen@urcompany.com", password: "", pic: "liam.jpg", dob: "26/01/90", company: "YourCompany", city: "London", gender: "m", description: "", iscyberto: nil},
  {fullname: "pam cooke", email: "pam.cooke@urcompany.com", password: "", pic: "pam.jpg", dob: "26/01/90", company: "YourCompany", city: "London", gender: "f", description: "", iscyberto: false},
  {fullname: "cyberto", email: "", password: "", pic: "cyberto.jpg", dob: "5/6/95", company: "U models", city: "London", gender: "m", description: "hello friend just a totally innocent profile where i'm trying to make friends , nothing at all devious i promise can't wait to chat and see what you all share likes ", iscyberto: nil},
  {fullname: "teddy winward", email: nil, password: nil, pic: "teddywinward.jpg", dob: "22/11/91", company: "YourCompany", city: "London", gender: "m", description: nil, iscyberto: nil},
  {fullname: "romerto smith", email: "romerto.smith@legit.company.com", password: "", pic: "romerto.jpg", dob: "5/6/95", company: "u models", city: "london", gender: "m", description: "", iscyberto: true}
])
Email.create!([
  {from: "contact@legit-address-travel-co.com", to: "josie.jacobs@yourcompany.com", subject: "CARIBEAN SALES 20% off", content: "Dear customer, \r\n40% OFF Sitewide*\r\nOffer is valid on your flight + all-inclusive vacation package of 4+ nights. Book by 10/8/2026 at 6:00 p.m. CT for travel through 6/30/2027.\r\n<a class=\"notlegitlink\" href=\"https://legit-domain.com/20-off-sales\">carribean sales click here</a>\r\nYour sincerely\r\nthe TravelCompany team", attachment: "caribeansale.jpg"},
  {from: "liam.killen@urcompany.com", to: "josie.jacobs@yourcompany.com", subject: "hello", content: "hi josie,\r\nafter careful consideration i am delighted to inform you that your budget for influencer campaign for 800 has been approved: please find attached full details regarding budget. best of luck with it", attachment: nil},
  {from: "romerto.smith@legit.company.com", to: "pam.cooke@urcompany.com", subject: "immediate action required ", content: " thank you for choosing pay buddy we have noticed errors to sned money to your employees, please follow the link below and enter your login details to rectify this issue your sincerely the team\r\n<a href=\"/logindetails/new\" class=\"othernotlegitlink\">click here</a>", attachment: nil},
  {from: " rob.king@urcompany.com", to: "pam.cooke@urcompany.com", subject: "product invoice ", content: "hi,\r\nattached you can find  the product invoice", attachment: "productinvoice.xlsx"},
  {from: "pam.cooke@urcompany.com", to: "josie.jacobs@urcompany.com", subject: "social media compaign", content: "hi josie, i was just wondering if you had any updates on the influencers for your new company\r\n\r\n", attachment: nil}
])
Company.create!([
  {name: "YourCompany", location: "London", established: "1998", pic: "yourcompany.jpg", description: ""}
])
Uupdatehasemail.create!([
  {email_id: 4, uupdate_id: 1}
])
Post.create!([
  {employee_id: 7, content: "hello friends,\r\njust a totally innocent profile where I'm trying to make friends, nothing at all devious I promise, can't wait to chat and see what you all share ", pic: nil},
  {employee_id: 1, content: "ugh has onyone ever used a payroll software called paybuddy, my hr manager hhas got the idea to set us up onthis abysmal software and it's so annoying omd, she honestly drives me mad sometimes\r\n\r\n", pic: nil},
  {employee_id: 1, content: "omg yaaass can't wait until i see my absolute queen and favourite pop singer kimmy p in concert next week , this'll be like my 10th time lol #obsessed", pic: nil},
  {employee_id: 1, content: "i am looking forward to listening to Ariana Grande's concert", pic: nil},
  {employee_id: 1, content: "i am looking forward to listening to Ariana Grande's concert\r\n\r\n", pic: nil},
  {employee_id: 1, content: "i am looking forward to listening to Ariana Grande's concert\r\n\r\n", pic: nil},
  {employee_id: 1, content: "i am looking forward to listening to Ariana Grande's concert\r\n\r\n", pic: nil},
  {employee_id: 1, content: "i am looking forward to listening to Ariana Grande's concert\r\n\r\n", pic: nil},
  {employee_id: 1, content: "i am looking forward to listening to Ariana Grande's concert\r\n\r\n", pic: nil},
  {employee_id: 1, content: "i am looking forward to listening to Ariana Grande's concert\r\n\r\n", pic: nil},
  {employee_id: 1, content: "i am looking forward to listening to Ariana Grande's concert\r\n\r\n", pic: nil},
  {employee_id: 1, content: "i am looking forward to listening to Rihanna's concert\r\n\r\n", pic: nil},
  {employee_id: 1, content: "i am looking forward to listening to the concert of my fav pop singer Rihanna #excited\r\n\r\n", pic: nil},
  {employee_id: 1, content: "hello there", pic: nil},
  {employee_id: 1, content: "hry", pic: nil},
  {employee_id: 1, content: "hi", pic: nil},
  {employee_id: 1, content: "i am a fan of the pop singer rihanna", pic: nil},
  {employee_id: 1, content: "i am such a fan of ariana grande in concert", pic: nil},
  {employee_id: 1, content: "i am such a fan of ariana grande in concert and on youtube omg", pic: nil},
  {employee_id: 1, content: "i'm a amazed at ariana's playing on youtube and in real\r\n", pic: nil},
  {employee_id: 1, content: "ariana grande is an amazing singer omg", pic: nil},
  {employee_id: 1, content: "Ariana Grande is my fav singer of all times i swear xD", pic: nil},
  {employee_id: 1, content: "when could the next time i watch her concert? Ariana Grande is my fav singer of all times i swear xD\r\n\r\n", pic: nil}
])
Friendrequest.create!([
  {employee_id: 1, friend_id: 5},
  {employee_id: 1, friend_id: 5},
  {employee_id: 1, friend_id: 5},
  {employee_id: 1, friend_id: 1},
  {employee_id: 1, friend_id: 5},
  {employee_id: 1, friend_id: 7}
])
Employeefriend.create!([
  {employee_id: 2, friend_id: 1},
  {employee_id: 3, friend_id: 1},
  {employee_id: 4, friend_id: 1},
  {employee_id: 6, friend_id: 1},
  {employee_id: 3, friend_id: 2},
  {employee_id: 4, friend_id: 2},
  {employee_id: 6, friend_id: 2},
  {employee_id: 4, friend_id: 3},
  {employee_id: 6, friend_id: 3},
  {employee_id: 6, friend_id: 4}
])
Companymessage.create!([
  {company_id: 1, employee_id: 5, content: "dear customers of yourcompany, your personal details are now on sale on the dark web, good luck! love from you pal, cyber to", pic: nil}
])
Carboncopy.create!([
  {email_id: 2, employee_id: 1},
  {email_id: 2, employee_id: 2},
  {email_id: 2, employee_id: 3},
  {email_id: 2, employee_id: 4},
  {email_id: 2, employee_id: 6}
])
Uupdate.const_get('HABTM_Emails').create!([
  {email_id: 4, uupdate_id: 1}
])
