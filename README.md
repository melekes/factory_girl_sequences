# FactoryGirlSequences

Collection of useful [FactoryGirl](https://github.com/thoughtbot/factory_girl)
sequences.

## Installation

Add this line to your application's Gemfile:

    gem 'factory_girl_sequences'

Or install it yourself as:

    $ gem install factory_girl_sequences

## Sequences

Format: name (aliases) - example

- :integer - 1
- :string - "string-1"
- :date - Sat, 20 Oct 2012
- :datetime - Sat, 20 Oct 2012 16:38:59 MSK +04:00
- :boolean - true | false
- :name (:login, :first_name, :last_name) - "name-1"
- :password - "password-1"
- :email - "person1@example.com"
- :ip_address - "192.168.0.1"
- :ip_subnet - "192.168.10.0"
- :mac_address - "01:23:45:67:89:01"
- :title - "Title 1"
- :body (:description) - "body-1"
- :slug - "slug-1"
- :domain - "example1.com"
- :subdomain - "blog1"
- :color - "333333"
- :checksum - 1

## Usage

Basic example:

```ruby
FactoryGirl.generate :email
# => "person1@example.com"

FactoryGirl.generate :email
# => "person2@example.com"
```

Use them as attributes (preferable way):

```ruby
factory :user do
  email
end
```

Or in lazy attributes:

```ruby
factory :invite do
  invitee { generate(:email) }
end
```

Check out FactoryGirl's [GETTING_STARTED](https://github.com/thoughtbot/factory_girl) for more information.

## Additionaly

All sequences are free to use and
could be changed depending on your needs. Just copy the sequence in your
project's `test(spec)/factories/sequences.rb` file and modify it.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
