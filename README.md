## Using Tux

We've got a full Sinatra application with a single `User` class set up. We've already created the migration for you, but make sure you actually run the migration to create the user table.

Next, it's time to use Tux. In terminal in the directory of this walk-through enter `tux`. You should see something like this:

<img src="https://curriculum-content.s3.amazonaws.com/web-development/Sinatra/Tux.png">

The tux console has now loaded. Regular terminal commands won't work at this point, but you can use Ruby and ActiveRecord methods.

### Create

Just like in our controller action, we can create a user.

```ruby
user = User.create(:name => "Trisha", :email => "trisha@test.com", :fav_icecream => "mint chocolate chip")
```

Or:

```ruby
user = User.new
user.name = "Beth"
user.email = "beth@beth.com"
user.fav_icecream = "rocky road"
user.save
```

### Edit

We can edit a user that's already been saved to the database. Let's edit the first user.

```ruby
user = User.first
user.name = "Trisha Yearwood"
user.save
```

### Delete

Now let's delete the first user:

```ruby
user = User.first
user.delete
```

### Search for Specific Users

All the `find` methods work in Tux too!

```ruby
user = User.find_by_id(2)
user = User.find_by(:name => "Beth")
user = User.first
user = User.last
```

Once you're done, just exit Tux by entering `exit`.

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/sinatra-activerecord-using-tux' title='Using Tux in Sinatra with ActiveRecord'>Using Tux in Sinatra with ActiveRecord</a> on Learn.co and start learning to code for free.</p>
