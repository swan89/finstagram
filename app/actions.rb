def humanized_time_ago(time_ago_in_minutes)
    if time_ago_in_minutes >= 60
        "#{time_ago_in_minutes / 60} hours ago"
    else
        "#{time_ago_in_minutes} minutes ago"
    end
end

get '/' do
     @post_fish = {
        username: "fishRfriends",
        avatar_url: "https:////c3.staticflickr.com/7/6154/buddyicons/59687764@N04.jpg?1316579694#59687764@N04",
        photo_url: "https://c2.staticflickr.com/8/7114/7561597888_8537b58e59_b.jpg",
        humanized_time_ago: humanized_time_ago(15),
        like_count: 0,
        comment_count: 1,
        comments: [{
            username: "fishRfriends",
            text: "Boston Aquarium 2011"
        }]
    }
    
    @post_birds = {
        username: "fishRfriends",
        avatar_url: "https:////c3.staticflickr.com/7/6154/buddyicons/59687764@N04.jpg?1316579694#59687764@N04",
        photo_url: "https://c1.staticflickr.com/9/8189/8133094828_b81d53e14c_b.jpg",
        humanized_time_ago: humanized_time_ago(65),
        like_count: 0,
        comment_count: 1,
        comments: [{
            username: "fishRfriends",
            text: "#notfish"
        }]
    }
    
    @post_star = {
        username: "fishRfriends",
        avatar_url: "https:////c3.staticflickr.com/7/6154/buddyicons/59687764@N04.jpg?1316579694#59687764@N04",
        photo_url: "https://c1.staticflickr.com/7/6057/6237130979_aeb92f4511_b.jpg",
        humanized_time_ago: humanized_time_ago(70),
        like_count: 0,
        comment_count: 1,
        comments: [{
            username: "fishRfriends",
            text: "Salt Spring Island"
        }]
    }
    
    @posts = [@post_fish, @post_birds, @post_star]
    
    erb (:index)
end