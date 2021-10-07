class User
    @@all = []

    def self.all
        @@all
    end

    attr_accessor :first_name, :last_name

    def initialize
        @first_name
        @last_name
        self.save if self.unique?
    end

    def save
        self.class.all << self
    end

    def unique?
        !self.class.all.include?(self) ? true : false
    end
    
end