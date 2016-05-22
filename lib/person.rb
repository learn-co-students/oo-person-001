# your code goes here
class Person
  attr_accessor :bank_account, :happiness
  attr_reader :name, :hygiene

  def initialize(name, account=25.0, happiness=8)
    @name = name
    @bank_account = account
    @happiness = happiness
    @hygiene = 8
  end

  def happiness
    if @happiness > 10
      @happiness = 10
    elsif @happiness < 0
      @happiness = 0
    else
      @happiness = @happiness
    end
  end

    def hygiene=(num)
    if num > 10
      @hygiene = 10
    elsif num < 0
      @hygiene = 0
    else
      @hygiene = num
    end
  end

  def happy?
    if @happiness > 7
      return true
    else
      return false
    end
  end

  def clean?
    if @hygiene > 7
      return true
    else
      return false
    end
  end

  def get_paid(arg)
    @bank_account = @bank_account + arg
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness +=2
    return "♪ another one bites the dust ♫"
  end

  def call_friend(arg)
    arg.happiness +=3
    self.happiness +=3
    return "Hi #{arg.name}! It's #{self.name}. How are you?"
  end
  def start_conversation(pers,topic)
    if topic == "politics"
      pers.happiness -= 2
      self.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      pers.happiness += 1
      self.happiness += 1 
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end
end