FactoryGirl.define do
  # == Basic types ==

  sequence :integer do |n|
    n
  end

  sequence :string do |n|
    "string-#{n}"
  end

  sequence :date do
    Date.today
  end

  sequence :datetime do
    Time.current
  end

  sequence :boolean do |n|
    [false, true][n%2]
  end

  # == Personal ==

  sequence :name, :aliases => [:login, :first_name, :last_name] do |n|
    "name-#{n}"
  end

  sequence :password do |n|
    "password-#{n}"
  end

  sequence :email do |n|
    "person#{n}@example.com"
  end

  # == Network ==

  sequence :ip_address do |n|
    "192.168.0.#{n%256}"
  end

  sequence :ip_subnet do |n|
    "192.168.#{n%256}.0"
  end

  sequence :mac_address do |n|
    "01:23:45:67:89:" + ("%02x" % "#{n%256}")
  end

  # == Post (article) ==

  sequence :title do
    "Title #{n}"
  end

  sequence :body, :aliases => [:description] do |n|
    "body-#{n}"
  end

  sequence :slug do |n|
    "slug-#{n}"
  end

  # == Other ==

  sequence :domain do |n|
    "example#{n}.com"
  end

  sequence :subdomain do |n|
    "blog#{n}"
  end

  sequence :color do |n|
    "%06d" % n
  end

  sequence :checksum do |n|
    n
  end
end
