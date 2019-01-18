```$ ```

```$ rails new tunr -T --skip-git -d postgresql```


# Many to Many Associations

This will tell you the many things you can generate:

```$ rails generate```

```$ rails generate model Song title:text artist_id:integer album_id:integer -p```

-p tests if the command is correct. p = pretend.

The above command makes your models and your migrations in your folders.

Create your database

```$ rails db:create```

```$ rails db:migrate```

and annotate!

NEXT MODEL!

```$ rails generate model Artist name:text image:text```

```$ rails db:migrate```

annotate!

NEXT MODEL!

```$ rails generate model Album name:text image:text```

```$ rails db:migrate```

annotate!

NEXT MODEL!

```$ rails generate model Mixtape name:text image:text user_id:integer```

REMEMBER THE USER_ID

```$ rails db:migrate```


....


## Generating Join Tables

```$ rails generate migration create_genres_songs genre_id:integer song_id:integer```

Go to your genres songs rb table and disable the id column

```ruby
:id => false
```

```$ rails db:migrate```


```$ rails generate migration create_mix_tapes_songs mixtape_id:integer song_id:integer```

disable the id column

```ruby
:id => false
```

```$ rails db:migrate```


Go to your models rb files and make your associations.

Now go to your seeds file and populate

Now:

```$ rails db:seed```

Check your rails console. so install pry-rails and bundle.

pry rails reload! command will reload your models

Now we can work on the server and our pages. Lets start with a pages route and pages controller


```$ rails generate controller Pages home -p```

```$ rails generate controller Users new -p```


```$ rails generate migration add_password_digest_to_users password_digest:text```

migrate

go the the user.rb

go the gemfile and uncomment bcrypt and bundle


```$ rails generate controller Session new```

```$ rails generate migration add_admin_to_users admin:boolean```

go to its migrate file and add ```:default => false```

and migrate!
