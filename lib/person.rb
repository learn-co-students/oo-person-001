class Person

  attr_reader :name, :bank_account, :happiness, :hygiene

  #attr_writer :hygiene
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def bank_account=(amt)
    @bank_account += amt
  end


  def happiness=(amount)
    @happiness = amount
    if @happiness > 10
      @happiness = 10
    elsif @happiness < 0
      @happiness = 0
    end
  end

  def hygiene=(amount)
    @hygiene = amount
    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
    end
  end

  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end

  def clean?
    if @hygiene > 7
      true
    else
      false
    end
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    @hygiene += 4
    self.hygiene=(@hygiene)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    @hygiene -= 3
    @happiness += 2
    self.hygiene=(@hygiene)
    self.happiness=(@happiness)
    "♪ another one bites the dust ♫"
  end

  def call_friend(person)
    @happiness += 3
    self.happiness=(@happiness)
    pers_hap = person.happiness + 3
    person.happiness=(pers_hap)
    "Hi #{person.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      @happiness -= 2
      self.happiness=(@happiness)
      pers_hap = person.happiness - 2
      person.happiness=(pers_hap)
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      @happiness += 1
      self.happiness=(@happiness)
      pers_hap = person.happiness + 1
      person.happiness=(pers_hap)
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
end
