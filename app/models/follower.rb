class Follower
    attr_reader :name, :age, :life_motto
    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto

        @@all << self
    end

    def self.all
        @@all
    end

    def blood_oaths
        BloodOath.all.select{|b| b.follower == self}
    end

    def join_cult(cult)
        BloodOath.new(2019, cult, self)
    end

    def self.of_a_certain_age(age)
        self.all.select{|f| f.age >= age}
    end
end