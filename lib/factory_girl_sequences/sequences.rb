module FactoryBot

  def self.register_default_sequences
    # basic types
    register_sequence(Sequence.new(:integer, :aliases => [:checksum, :int]) { |n| n })
    register_sequence(Sequence.new(:string) { |n| "string-#{n}" })
    register_sequence(Sequence.new(:date) { Date.current })
    register_sequence(Sequence.new(:datetime) { Time.current })
    register_sequence(Sequence.new(:boolean) { |n| [false, true][n%2] })

    # personal
    register_sequence(Sequence.new(:uuid, :aliases => [:guid]) { SecureRandom.uuid })
    register_sequence(Sequence.new(:name, :aliases => [:login, :username, :first_name, :last_name]) { |n| "name-#{n}" })
    register_sequence(Sequence.new(:password) { |n| "password-#{n}" })
    register_sequence(Sequence.new(:email) { |n| "person#{n}@example.com" })

    # network
    register_sequence(Sequence.new(:port) { |n| (1024 + n % 49151) })
    register_sequence(Sequence.new(:ip_address) { |n| "192.168.0.#{n%256}" })
    register_sequence(Sequence.new(:ip_subnet) { |n| "192.168.#{n%256}.0" })
    register_sequence(Sequence.new(:mac_address) { |n| "01:23:45:67:89:" + ("%02x" % "#{n%256}") })

    # post (or article)
    register_sequence(Sequence.new(:title) { |n| "Title #{n}" })
    register_sequence(Sequence.new(:body, :aliases => [:description, :text, :content]) { |n| "body-#{n}" })
    register_sequence(Sequence.new(:slug) { |n| "slug_#{n}" })

    # other
    register_sequence(Sequence.new(:url) { |n| "http://example#{n}.com" })
    register_sequence(Sequence.new(:domain) { |n| "example#{n}.com" })
    register_sequence(Sequence.new(:subdomain) { |n| "blog#{n}" })
    register_sequence(Sequence.new(:color) { |n| "%06d" % n })
    register_sequence(Sequence.new(:timestamp) { Time.current.to_i })
    register_sequence(Sequence.new(:token) { |n| SecureRandom.base64(15).tr('+/=lIO0', "token#{n}") })
    register_sequence(Sequence.new(:seat, 0) { |n| "%02d%s" % [n % 50 + 1, ('A'..'Z').to_a[n / 50 % 26]] })
  end
end

FactoryBot.register_default_sequences
