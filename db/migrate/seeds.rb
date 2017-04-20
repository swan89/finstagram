User.create(username: "vindieselofficialIG", avatar_url: "http://static1.squarespace.com/static/51b3dc8ee4b051b96ceb10de/t/53ea1cf4e4b0162bed5718a5/1407851777865/vin-diesel-teases-marvels-inhumans-but-why", email:"thediesel@email.com", password: "123456")
Post.create(user_id: 1, photo_url:"https://s-media-cache-ak0.pinimg.com/originals/5d/fe/aa/5dfeaa6b81db682353a3530b6dedd195.jpg")
Comment.create(user_id: 1, post_id: 1, text: "haha lol")
Like.create(user_id: 1, post_id: 1)