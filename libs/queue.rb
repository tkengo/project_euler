module ProjectEuler
  class Queue
    def initialize
      @first = nil
      @last  = @first
    end

    def enqueue(v)
      unless @first
        @first = Node.new(v)
        @last = @first
      else
        node = Node.new(v)
        @last.next = node
        @last = node
      end
    end

    def dequeue
      return nil unless @first

      first = @first
      @first = @first.next
      first.value
    end

    def peek
      @first
    end

    def <<(v)
      enqueue(v)
    end
  end

  class Queue::Node
    attr_reader :value
    attr_accessor :next

    def initialize(value)
      @value = value
    end
  end
end
