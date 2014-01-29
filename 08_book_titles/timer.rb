 class Timer
        attr_accessor :seconds

def initialize
        @seconds = 0
        end

def time_string
        hours = (@seconds / 3600).floor
        mins = ((@seconds % 3600)/60).floor
        secs = @seconds % 60

        time = Time.new(0000, 01, 01, hours, mins, secs)
        time.strftime "%H:%M:%S"
        end
end