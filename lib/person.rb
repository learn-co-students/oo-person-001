require 'pry'

# lesson: Don't put random code in classes. Put if statements under
# methods. Learned to curtomize setter methods

class Person
  #
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene
  #
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  # binding.pry
  # Create a setter method for Happiness and hygiene
  # the if statement should be under this customed made setter method
  def happiness= (is_happy)
    @happiness = is_happy
    if @happiness.is_a?(Integer)
      if  @happiness > 10
        @happiness = 10
      elsif @happiness < 0
        @happiness = 0
      end
    else
      @happiness
    end
  end

  def hygiene= (smells_decent)
    @hygiene = smells_decent
    if @hygiene.is_a?(Integer)
      if  @hygiene > 10
        @hygiene = 10
      elsif @hygiene < 0
        @hygiene = 0
      end
    else
      @hygiene
    end
  end

  def clean?
    if @hygiene > 7
      true
    else
      false
    end
  end

  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end

  def get_paid(money)
    @bank_account += money
    return "all about the benjamins"
  end

  def take_bath
    # @hygiene += 4
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    friend.happiness += 3
    self.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(talk_with, topic)
    if topic == "politics"
      talk_with.happiness -= 2
      self.happiness -= 2
      return 'blah blah partisan blah lobbyist'
    elsif topic == "weather"
      talk_with.happiness += 1
      self.happiness += 1
      return 'blah blah sun blah rain'
    else
      return 'blah blah blah blah blah'
    end
  end

  #
end
