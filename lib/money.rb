module Money
  class Dollar
    attr_reader :amount

    def initialize(amount)
      @amount = amount
    end

    def *(multiplier)
      return Dollar.new @amount * multiplier
    end

    def ==(object)
      return @amount == object.amount
    end
  end
end
