# your code goes here
require 'pry'

class Person

  attr_accessor :bank_account, :hygiene, :happiness
  attr_reader :name

  def initialize(name, bank_account= 25, happiness= 8, hygiene= 8)
    @name = name
    @bank_account = bank_account
    # binding.pry
    # @happiness = x
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(num)
    @happiness = num
    @happiness = 10 if @happiness > 10
    @happiness = 0 if @happiness < 0
  end

  def hygiene=(num)
    @hygiene = num
    @hygiene = 10 if @hygiene > 10
    @hygiene = 0 if @hygiene < 0
  end

  def happy?
    if @happiness > 7
      return true
    else
      false
    end
  end

  def clean?
    if @hygiene > 7
      return true
    else
      false
    end
  end

  def get_paid(x)
    self.bank_account += x
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    return "♪ another one bites the dust ♫"
  end

  def call_friend(x)
    self.happiness += 3
    x.happiness += 3
    return "Hi #{x.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(x, y)

    if y == "politics"
      self.happiness -= 2
      x.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif y == "weather"
      self.happiness += 1
      x.happiness += 1
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end

  end


end
