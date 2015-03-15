winners = [
    "Homestar",
    "King of Town",
    "Marzipan",
    "Strongbad"
]

Place = Struct.new(:index, :name, :prize) do

  def to_int
    index
  end
end

first = Place.new(0, 'first', 'foo')
second = Place.new(1, 'second', 'bar')
third = Place.new(2, 'third', 'ooo')

[first, second, third].each do |place|
  puts "In #{place.name} place, #{winners[place]}"
  puts "You win: #{place.prize}"
end

p winners[first]

class BashConfig
  def initialize
    @filename = "#{ENV.fetch('HOME')}/.bashrc"
  end

  def to_path
    @filename
  end
end

vim = BashConfig.new
p File.open(vim).lines.count

class DialExtension
  PHONE_EXTENSION = ['Operator', 'Sales', 'Customer Service']

  def dial_extension(dialed_number)
    dialed_number = dialed_number.to_i
    extension = PHONE_EXTENSION[dialed_number]
  end
end

nil.to_i
p DialExtension.new.dial_extension(nil)