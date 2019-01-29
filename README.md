# PROJECT1

[Click here for live Heroku version](https://gaproject1.herokuapp.com/)

This is basically a simple database of historical thinkers, collecting the theories they have developed and the academic fields to which they have contributed.

The user can add a thinker to his/her favourites list, and through the thinker you can see the theories and fields that are associated to that particular thinker.

## Models

These are 5 models and below are their associations:

1.
```ruby
class Favourite < ApplicationRecord
  validates :thinker_id, uniqueness: { scope: :user_id,
  message: "Duplicate!" }
  belongs_to :user, :optional => true
  belongs_to :thinker, :optional => true
end

```

2.
```ruby
class Field < ApplicationRecord
  validates :name, :uniqueness => true
  has_and_belongs_to_many :theories
  has_many :thinkers, :through => :theories
end
```

3.
```ruby
class Theory < ApplicationRecord
  validates :name, :uniqueness => true
  belongs_to :thinker, :optional => true
  has_and_belongs_to_many :fields
end
```

4.
```ruby
class Thinker < ApplicationRecord
  validates :name, :uniqueness => true
  belongs_to :user, :optional => true
  has_many :theories
  has_many :fields, :through => :theories
  has_many :favourites
end # class
```

5.
```ruby
class User < ApplicationRecord
  has_secure_password

  validates :email, :presence => true, :uniqueness => true
  has_many :thinkers
  has_many :favourites
end
```

## Gems

The following gems that I included are:

```ruby
gem 'wikipedia-client'
gem 'httparty'
gem 'googlebooks'
gem 'bootstrap'
gem 'jquery-rails'
gem 'pg_search'
gem 'cloudinary'
```

- I used the wikipedia gem to retrieve summaries on the thinkers, theories and fields when you visit the show page.

- I used httparty and googlebooks to return thinker's publications and put them in a list of the thinekr's show page.

- bootstrap for css

- cloudinary for images

- I wanted to include a search feature for the 3 main models, and thought that pg_search was the best option to use alongside postgresql.


## Things I didn't get to do.

Ideally I wanted to use pg_search multisearch and add it to the nav bar so I could search the databases universally, but didn't have time to integrate it properly.

I wanted to add an "influenced" and "influenced by" association/relation between thinkers per se.

Finally I would have liked to have added a "favourite theories" option for the user alongside the "favourite thinkers"


## Improvements

The search capabilities. Upgrade it to multisearch.

The user profiles so the user can add info on themselves. I would have liked to add an option where the user can add publications he/she is working on and append the favourites according to the research being done for each publication.

The CSS!
