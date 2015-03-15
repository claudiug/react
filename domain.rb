# class TrafficLight
#
#   def change_to(state)
#     @state = state
#   end
#
#   def signal
#     case @state
#       when 'stop'
#         turn_on_lamp(:red)
#       when 'caution'
#         turn_on_lamp(:yellow)
#       when 'proceed'
#         turn_on_lamp(:green)
#     end
#   end
#
#   def turn_on_lamp(type)
#     puts "Turning on #{type} color"
#   end
#
#   def next_state
#     case @state
#       when 'stop'
#         'proceed'
#       when 'caution'
#         'stop'
#       when 'proceed'
#         'caution'
#     end
#   end
# end
#
# t = TrafficLight.new.change_to(:stop)
# t.signal

class TrafficLight

  State = Struct.new(:name) do
    def to_s
      name
    end
  end

  VALID_STATES = [
      STOP = State.new('stop'),
      PROCEED = State.new('proceed'),
      CAUTION = State.new('caution'),
  ]

  def change_to(state)
    raise ArgumentError unless VALID_STATES.include?(state)
    @state = state
  end

  def signal
    case @state
      when STOP
        turn_on_lamp(:red)
      when PROCEED
        turn_on_lamp(:green)
      when CAUTION
        turn_on_lamp(:yellow)
    end
  end

  def next_state
    case @state
      when STOP
        'proceed'
      when CAUTION
        'stop'
      when PROCEED
        'caution'
    end
  end

  def turn_on_lamp(color)
    puts "turning on #{color} color"
  end
end

t = TrafficLight.new
t.change_to('stop')
t.next_state