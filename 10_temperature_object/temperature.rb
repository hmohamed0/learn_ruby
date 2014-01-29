class Temperature
        def initialize(hash)
                @hash = hash
        end

        def to_fahrenheit
                return @hash[:f] if @hash[:f]
                @hash[:c] * 9/5 + 32
        end

        def to_celsius
                return @hash[:c] if @hash[:c]
                (@hash[:f] - 32) * 5/9

        end

        def self.in_celsius(t)
                new({:c => t})
        end

        def self.in_fahrenheit(t)
                new({:f => t})
        end
end

class Celsius < Temperature
        def initialize(t)
                @hash = {:c => t}
        end
end

class Fahrenheit < Temperature
        def initialize(t)
                @hash = {:f => t}
        end

    end