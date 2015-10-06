# your code goes here
#best practice is to use the method if you have it. 
class Person
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene


  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(argument)
    @happiness = argument 
    if @happiness > 10
      @happiness = 10
    elsif @happiness < 0
      @happiness = 0
    else
      @happiness
    end
  end

  def hygiene=(argument)
    @hygiene = argument
    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
    else
      @hygiene
    end
  end

  def clean?
    self.hygiene > 7 
  end

  def happy?
    self.happiness > 7
  end

  def get_paid(salary)
    self.bank_account += salary 
    "all about the benjamins"
  end

  def take_bath
    self.hygiene = hygiene + 4 #don't need self because it is implied, but it helped the test pass
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end
  
  def work_out
    self.happiness = self.happiness + 2
    self.hygiene = self.hygiene - 3
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness = self.happiness + 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness = self.happiness - 2
      person.happiness-= 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness = self.happiness + 1
      person.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
end