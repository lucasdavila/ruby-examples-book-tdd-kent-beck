module Money
  class Dollar
    attr_reader :amount

    def initialize(amount)
      @amount = amount
    end

    def *(multiplier)
      Dollar.new @amount * multiplier
    end

    def ==(object)
      @amount == object.amount
    end
  end
end
