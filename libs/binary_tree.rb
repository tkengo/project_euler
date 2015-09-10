module ProjectEuler
  class BinaryTree
    attr_reader :root

    def initialize(v)
      @root = Node.new(v)
      @queue = Queue.new
      @current = @root
    end

    def append(v)
      node = Node.new(v)
      @queue << node

      unless @current.left
        @current.left = node
      else
        @current.right = node
        @current = @queue.dequeue
      end
    end

    def map
      queue = Queue.new
      node = @root

      while node
        yield node
        queue << node.left  if node.left
        queue << node.right if node.right

        node = queue.dequeue
      end
    end
  end

  class BinaryTree::Node
    attr_reader :left, :right
    attr_accessor :parent
    attr_accessor :value

    def initialize(v)
      @value = v
    end

    def root?
      parent.nil?
    end

    def left?
      parent.left == self
    end

    def right?
      parent.right == self
    end

    def left=(obj)
      @left = obj
      obj.parent = self
    end

    def right=(obj)
      @right = obj
      obj.parent = self
    end
  end
end
