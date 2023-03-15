class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(value)
        @happiness = value.clamp(0,10)
    end

    def hygiene=(value)
        @hygiene = value.clamp(0,10)
    end

    def clean?
        if (self.hygiene > 7)
            true
        else
            false
        end
    end

    def happy?
        if (self.happiness > 7)
            true
        else
            false
        end
    end

    def get_paid(amount)
        self.bank_account += amount
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def  work_out
        self.happiness += 2 
        self.hygiene -= 3
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        case topic
        when (topic = "politics")
            friend.happiness -= 2
            self.happiness -= 2
            return "blah blah partisan blah lobbyist"
        when (topic = "weather")
            friend.happiness += 1
            self.happiness += 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end
end