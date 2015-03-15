class User
  attr_reader :account

  def initialize(account)
    @account = account
  end

  def first_name
    account.first_name
  end

  def last_name
    account.last_name
  end
end
Fb = Struct.new(:uuid, :first_name, :last_name, :email_address)
Gh = Struct.new(:login, :first_name, :last_name, :email_address)

foo = User.new(Fb.new('111', 'foo', 'bar', 'foo@bar'))
bar = User.new(Gh.new('foobar1', 'foo', 'bar', 'foo@bar'))

p foo
puts foo.last_name
p bar
puts bar.first_name


code = proc do |name|
  puts "#{name}"
end

code.call("claudiu")
