module Money
  class Dollar
    def initialize(amount)
      @amount = amount
    end

    def *(multiplier)
      Dollar.new @amount * multiplier
    end

    def ==(object)
      @amount == object
    end
  end
end
