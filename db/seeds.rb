10.times do 
    User.create(
        username: Faker::Internet.username,
        email: Faker::Internet.email,
        password: "password"
    )
end

topics = Topic.create([
    {name: "Personal Development", user_id: 1},
    {name: "Personal Development", user_id: 2},
    {name: "Personal Development", user_id: 3},
    {name: "Personal Development", user_id: 4},
    {name: "Personal Development", user_id: 5},
    {name: "Personal Development", user_id: 6},
    {name: "Personal Development", user_id: 7},
    {name: "Personal Development", user_id: 8},
    {name: "Personal Development", user_id: 9},
    {name: "Personal Development", user_id: 10},

    {name: "Finance", user_id: 1}, 
    {name: "Finance", user_id: 2},
    {name: "Finance", user_id: 3},
    {name: "Finance", user_id: 4},
    {name: "Finance", user_id: 5},
    {name: "Finance", user_id: 6},
    {name: "Finance", user_id: 7},
    {name: "Finance", user_id: 8},
    {name: "Finance", user_id: 9},
    {name: "Finance", user_id: 10},

    {name: "Travel", user_id: 1},
    {name: "Travel", user_id: 2},
    {name: "Travel", user_id: 3},
    {name: "Travel", user_id: 4},
    {name: "Travel", user_id: 5},
    {name: "Travel", user_id: 6},
    {name: "Travel", user_id: 7},
    {name: "Travel", user_id: 8},
    {name: "Travel", user_id: 9},
    {name: "Travel", user_id: 10},

    {name: "Lifestyle", user_id: 1},
    {name: "Lifestyle", user_id: 2},
    {name: "Lifestyle", user_id: 3},
    {name: "Lifestyle", user_id: 4},
    {name: "Lifestyle", user_id: 5},
    {name: "Lifestyle", user_id: 6},
    {name: "Lifestyle", user_id: 7},
    {name: "Lifestyle", user_id: 8},
    {name: "Lifestyle", user_id: 9},
    {name: "Lifestyle", user_id: 10},

    {name: "Career", user_id: 1},
    {name: "Career", user_id: 2},
    {name: "Career", user_id: 3},
    {name: "Career", user_id: 4},
    {name: "Career", user_id: 5},
    {name: "Career", user_id: 6},
    {name: "Career", user_id: 7},
    {name: "Career", user_id: 8},
    {name: "Career", user_id: 9},
    {name: "Career", user_id: 10},

    {name: "Friends & Family", user_id: 1},
    {name: "Friends & Family", user_id: 2},
    {name: "Friends & Family", user_id: 3},
    {name: "Friends & Family", user_id: 4},
    {name: "Friends & Family", user_id: 5},
    {name: "Friends & Family", user_id: 6},
    {name: "Friends & Family", user_id: 7},
    {name: "Friends & Family", user_id: 8},
    {name: "Friends & Family", user_id: 9},
    {name: "Friends & Family", user_id: 10},

    {name: "Giving Back/Legacy", user_id: 1},
    {name: "Giving Back/Legacy", user_id: 2}, 
    {name: "Giving Back/Legacy", user_id: 3},
    {name: "Giving Back/Legacy", user_id: 4},
    {name: "Giving Back/Legacy", user_id: 5},
    {name: "Giving Back/Legacy", user_id: 6},
    {name: "Giving Back/Legacy", user_id: 7},
    {name: "Giving Back/Legacy", user_id: 8},
    {name: "Giving Back/Legacy", user_id: 9},
    {name: "Giving Back/Legacy", user_id: 10},

    {name: "Hobbies & Passions", user_id: 1},
    {name: "Hobbies & Passions", user_id: 2},
    {name: "Hobbies & Passions", user_id: 3},
    {name: "Hobbies & Passions", user_id: 4},
    {name: "Hobbies & Passions", user_id: 5},
    {name: "Hobbies & Passions", user_id: 6},
    {name: "Hobbies & Passions", user_id: 7},
    {name: "Hobbies & Passions", user_id: 8},
    {name: "Hobbies & Passions", user_id: 9},
    {name: "Hobbies & Passions", user_id: 10},

    {name: "Adventure", user_id: 1},
    {name: "Adventure", user_id: 2},
    {name: "Adventure", user_id: 3},
    {name: "Adventure", user_id: 4},
    {name: "Adventure", user_id: 5},
    {name: "Adventure", user_id: 6},
    {name: "Adventure", user_id: 7},
    {name: "Adventure", user_id: 8},
    {name: "Adventure", user_id: 9},
    {name: "Adventure", user_id: 10}
])

Topic.where(:name => "Personal Development").all.each do | topic |
    Goal.create([
        {goal_name: "Read more", topic: topic}, 
        {goal_name: "Define your core values", topic: topic}, 
        {goal_name: "Attend seminars", topic: topic}, 
        {goal_name: "develop a power hour", topic: topic}, 
        {goal_name: "find a mentor", topic: topic}, 
        {goal_name: "learn continuously", topic: topic}, 
        {goal_name: "Develop a positive attitude", topic: topic}, 
        {goal_name: "Strengthen communication skills", topic: topic}, 
        {goal_name: "write your life purpose", topic: topic}, 
        {goal_name: "Discover your inner strength", topic: topic}
    ])
end 

Topic.where(:name => "Finance").all.each do | topic |
    Goal.create([
        {goal_name: "Learn personal finance 101", topic: topic}, 
        {goal_name: "Learn to manage your money", topic: topic}, 
        {goal_name: "Develop a budget", topic: topic}, 
        {goal_name: "Develop an excellent credit rating", topic: topic}, 
        {goal_name: "Track and develop your networth", topic: topic}, 
        {goal_name: "invest 10% of your income", topic: topic}, 
        {goal_name: "Find a financial advisor/mentor", topic: topic}, 
        {goal_name: "Own/invest in real estate", topic: topic}, 
        {goal_name: "Increase your income", topic: topic}, 
        {goal_name:"Plan your retirement", topic: topic}
    ])
end

Topic.where(:name => "Travel").all.each do | topic |
    Goal.create([
        {goal_name: "Take a staycation", topic: topic}, 
        {goal_name: "Travel within your own state", topic: topic}, 
        {goal_name: "Visit all 50 states", topic: topic}, 
        {goal_name: "Attend a major spoting event", topic: topic}, 
        {goal_name: "Attend a major cultural event", topic: topic}, 
        {goal_name: "Visit one of the 7 wonders", topic: topic}, 
        {goal_name: "Go camping/glamping", topic: topic}, 
        {goal_name: "Travel the world", topic: topic}, 
        {goal_name: "Visit somewhere you've never been", topic: topic}, 
        {goal_name: "Travel first-class", topic: topic} 
    ])
end
    
Topic.where(:name => "Lifestyle").all.each do | topic |
    Goal.create([
        {goal_name: "Eat better food", topic: topic}, 
        {goal_name: "Declutter your life", topic: topic}, 
        {goal_name: "Buy less", topic: topic}, 
        {goal_name: "buy better quality", topic: topic}, 
        {goal_name: "lower carbon-footprint", topic: topic}, 
        {goal_name: "Strive for balance", topic: topic}, 
        {goal_name: "Maintain ideal body weight", topic: topic}, 
        {goal_name: "Develop a long-life mindset", topic: topic}, 
        {goal_name: "Complete an endurance event", topic: topic}, 
        {goal_name: "Move to a better neighborhood", topic: topic} 
    ])
end
    
Topic.where(:name => "Career").all.each do | topic |
    Goal.create([
        {goal_name: "Do a career assessment", topic: topic}, 
        {goal_name: "Continue eduaction", topic: topic},
        {goal_name: "Find or develop your passion", topic: topic}, 
        {goal_name: "Be a good employee", topic: topic}, 
        {goal_name: "Be a good leader", topic: topic}, 
        {goal_name: "Be an expert in something", topic: topic}, 
        {goal_name: "Become an authority", topic: topic}, 
        {goal_name: "Be your own boss", topic: topic}, 
        {goal_name: "Create multiple income sources", topic: topic},
        {goal_name: "Join a professional association", topic: topic}
    ])
end 

Topic.where(:name => "Friends & Family").all.each do | topic |
    Goal.create([
        {goal_name: "Choose food friends", topic: topic}, 
        {goal_name: "Find your life partner", topic: topic}, 
        {goal_name: "Weed out the negative people in your life", topic: topic}, 
        {goal_name: "Be a good Friend", topic: topic}, 
        {goal_name: "Plan family time/adventure", topic: topic}, 
        {goal_name: "Learn how to be a good parent", topic: topic}, 
        {goal_name: "Be there for your children", topic: topic}, 
        {goal_name: "Have regular family meetings", topic: topic}, 
        {goal_name: "Establish family traditions", topic: topic}, 
        {goal_name: "Plan quality time with friends", topic: topic}
    ])
end  

Topic.where(:name => "Giving Back/Legacy").all.each do | topic |
    Goal.create([
        {goal_name: "Donate to local charities", topic: topic}, 
        {goal_name: "Volunteer in your community", topic: topic}, 
        {goal_name: "Make a difference in the world", topic: topic}, 
        {goal_name: "Trace your ancestry", topic: topic}, 
        {goal_name: "Become a mentor", topic: topic}, 
        {goal_name: "Do something nice for others everyday", topic: topic}, 
        {goal_name: "Do something nice for your family", topic: topic}, 
        {goal_name: "Help a friend with a problem", topic: topic}, 
        {goal_name: "Volunteer at your local school", topic: topic}, 
        {goal_name: "Visit the elderly at a local nursing home", topic: topic}
    ])
end   
    
Topic.where(:name => "Hobbies & Passions").all.each do | topic |
    Goal.create([
        {goal_name: "Photography", topic: topic}, 
        {goal_name: "Arts and craft", topic: topic}, 
        {goal_name: "Gaming", topic: topic}, 
        {goal_name: "Cycling", topic: topic}, 
        {goal_name: "Music", topic: topic}, 
        {goal_name: "Dancing", topic: topic}, 
        {goal_name: "Yoga", topic: topic}, 
        {goal_name: "Gardening", topic: topic}, 
        {goal_name: "Water sports", topic: topic}, 
        {goal_name: "Hiking", topic: topic} 
    ])
end   

Topic.where(:name => "Adventure").all.each do | topic |
    Goal.create([
        {goal_name: "Family roadtrip", topic: topic}, 
        {goal_name: "Climb a mountain", topic: topic}, 
        {goal_name: "Visit a volcano", topic: topic}, 
        {goal_name: "Try something new", topic: topic}, 
        {goal_name: "Discover somewhere new in your city", topic: topic}, 
        {goal_name: "Attend a new cultural event", topic: topic}, 
        {goal_name: "Try new ethnic foods", topic: topic}, 
        {goal_name: "A yes day", topic: topic}, 
        {goal_name: "Do a scavenger hunt", topic: topic}, 
        {goal_name: "Train trip across country", topic: topic} 
    ])
end
