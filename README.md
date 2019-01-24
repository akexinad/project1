# PROJECT1

This is basically a simple database of historical thinkers, collecting the theories they have developed and the academic fields to which they have contributed.


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

- bootstrap for class

- cloudinar for images

- I wanted to include a search feature for the 3 main models, and thought that pg_search was the best option to use alongside postgresql.
