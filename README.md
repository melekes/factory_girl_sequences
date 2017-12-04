# FactoryGirlSequences [![Build Status](https://secure.travis-ci.org/melekes/factory_girl_sequences.png "Build Status")](http://travis-ci.org/melekes/factory_girl_sequences) [![Gem Version](https://badge.fury.io/rb/factory_girl_sequences.png)](http://badge.fury.io/rb/factory_girl_sequences)

Collection of useful [FactoryBot](http://github.com/thoughtbot/factory_bot)
sequences.

**Important**

This minigem provides only a basic set of standard data. If you need more complex
data in your application (e.g. US postal code or address), I recommend [Faker](http://github.com/stympy/faker).

## Installation

Add this line to your application's Gemfile:

    gem 'factory_girl_sequences', :group => :test

Or install it yourself as:

    $ gem install factory_girl_sequences

## Sequences

<table>
  <tr>
    <th>Name</th>
    <th>Aliases</th>
    <th>DataType</th>
    <th>Example</th>
  </tr>
  <tr>
    <td>integer</td>
    <td>checksum, int</td>
    <td>Integer</td>
    <td>1</td>
  </tr>
  <tr>
    <td>string</td>
    <td>-</td>
    <td>String</td>
    <td>string-1</td>
  </tr>
  <tr>
    <td>date</td>
    <td>-</td>
    <td>Date</td>
    <td>Sat, 20 Oct 2012</td>
  </tr>
  <tr>
    <td>datetime</td>
    <td>-</td>
    <td>Time</td>
    <td>Sat, 20 Oct 2012 16:38:59 MSK +04:00</td>
  </tr>
  <tr>
    <td>boolean</td>
    <td>-</td>
    <td>Boolean</td>
    <td>true</td>
  </tr>
  <tr>
    <td>uuid</td>
    <td>guid</td>
    <td>String</td>
    <td>0a4ea40d-e7ed-4fc1-890c-7af86c9c3a07</td>
  </tr>
  <tr>
    <td>name</td>
    <td>login, username, first_name, last_name</td>
    <td>String</td>
    <td>name-1</td>
  </tr>
  <tr>
    <td>password</td>
    <td>-</td>
    <td>String</td>
    <td>password-1</td>
  </tr>
  <tr>
    <td>email</td>
    <td>-</td>
    <td>String</td>
    <td>person1@example.com</td>
  </tr>
  <tr>
    <td>port</td>
    <td>-</td>
    <td>Integer</td>
    <td>1025</td>
  </tr>
  <tr>
    <td>ip_address</td>
    <td>-</td>
    <td>String</td>
    <td>192.168.0.1</td>
  </tr>
  <tr>
    <td>ip_subnet</td>
    <td>-</td>
    <td>String</td>
    <td>192.168.10.0</td>
  </tr>
  <tr>
    <td>mac_address</td>
    <td>-</td>
    <td>String</td>
    <td>01:23:45:67:89:01</td>
  </tr>
  <tr>
    <td>title</td>
    <td>-</td>
    <td>String</td>
    <td>Title 1</td>
  </tr>
  <tr>
    <td>body</td>
    <td>description, text, content</td>
    <td>String</td>
    <td>body-1</td>
  </tr>
  <tr>
    <td>slug</td>
    <td>-</td>
    <td>String</td>
    <td>slug-1</td>
  </tr>
  <tr>
    <td>url</td>
    <td>-</td>
    <td>String</td>
    <td>http://example1.com</td>
  </tr>
  <tr>
    <td>domain</td>
    <td>-</td>
    <td>String</td>
    <td>example1.com</td>
  </tr>
  <tr>
    <td>subdomain</td>
    <td>-</td>
    <td>String</td>
    <td>blog1</td>
  </tr>
  <tr>
    <td>color</td>
    <td>-</td>
    <td>String</td>
    <td>333333</td>
  </tr>
  <tr>
    <td>timestamp</td>
    <td>-</td>
    <td>Fixnum</td>
    <td>1374582311</td>
  </tr>
  <tr>
    <td>token</td>
    <td>-</td>
    <td>String</td>
    <td>JS74sef41ZosXek1ndvY</td>
  </tr>
  <tr>
    <td>seat</td>
    <td>-</td>
    <td>String</td>
    <td>01A</td>
  </tr>
</table>

## Usage

Basic example:

```ruby
FactoryBot.generate :email
# => "person1@example.com"

FactoryBot.generate :email
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

Check out FactoryBot's [GETTING_STARTED](http://github.com/thoughtbot/factory_bot) for more information.

### Spork or TConsole

For whose of you who are using spork or tconsole, consider adding `FactoryGirlSequences.reload` right after `FactoryBot.reload`.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Test your changes by running `bundle exec rake cucumber` command
5. Push to the branch (`git push origin my-new-feature`)
6. Create new Pull Request

## Credits

Created by [Anton Kaliaev](http://github.com/melekes)

Thank you to all our amazing [contributors](http://github.com/melekes/factory_girl_sequences/contributors)!

## Changelog

### 4.9.0 / 2017-12-04

* factory_girl now factory_bot [Pavel Kalashnikov]

### 4.8.0 / 2017-01-14

* updated dependencies (`activesupport >= 4.2`)

### 4.3.1 / 2014-08-08

* added few aliases [Kirill Platonov]

### 4.3.0 / 2014-07-31

* added uuid sequence [Kirill Platonov]

### 4.2.0 / 2014-01-09

* added a seat sequence [Hans Lemuet]

### 4.1.0 / 2013-11-14

* added port and token sequences [Andrew Kulakov]
* aliased body as text / content [Andrew Kulakov]

### 4.0.0 / 2013-02-22

* updated factory_bot version
* added appraisal
* rewrite tests
* created separate reload method

### 0.1.1 / 2012-10-27

* Updated README

### 0.1.0 / 2012-10-24

* Added url sequence
* Fixed slug sequence
* Updated README

### 0.0.4 / 2012-10-20

* Added travis-ci
* Added extra options for docs

### 0.0.3 / 2012-10-20

* Pathed FactoryBot.reload to add default sequences

### 0.0.3 / 2012-10-20

* Updated README
* Added link to the homepage
