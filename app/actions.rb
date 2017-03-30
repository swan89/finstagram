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
    
    @post_hat = {
        username: "piedhong",
        avatar_url: "https:////c3.staticflickr.com/3/2091/buddyicons/24154092@N04.jpg?1271304991#24154092@N04",
        photo_url: "https://c2.staticflickr.com/6/5016/5495645821_540ec0a444_b.jpg",
        humanized_time_ago: humanized_time_ago(65),
        like_count: 0,
        comment_count: 1,
        comments: [{
            username: "piedhong",
            text: "rad hat, thanks swan"
        }]
    }
    
    @post_friends = {
        username: "Doctor DSD",
        avatar_url: "https:////c4.staticflickr.com/4/3052/buddyicons/23288606@N04.jpg?1248561163#23288606@N04",
        photo_url: "https://c1.staticflickr.com/9/8341/8250549289_7fd8649a26_b.jpg",
        humanized_time_ago: humanized_time_ago(70),
        like_count: 0,
        comment_count: 1,
        comments: [{
            username: "Doctor DSD",
            text: "party bros"
        }]
    }
    
    @posts = [@post_fish, @post_hat, @post_friends]
    
    erb (:index)
end