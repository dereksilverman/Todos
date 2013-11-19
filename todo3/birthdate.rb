require 'date'

class Birthday
  def get_birthday
    puts "Tell me the date of your birthday!"
    Date.parse(gets.chomp).strftime("%Y-%m-%d")
  end

  def get_date
    Date.today.strftime("%Y-%m-%d")
  end

  def is_today?
    puts get_birthday == get_date ? "Happy birthday!" : "Some day my friend"
  end
end

birthday = Birthday.new
birthday.is_today?

