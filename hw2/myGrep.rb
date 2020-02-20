
#Task 1

string=ARGV[0]
filename=ARGV[1]
linenum=1
total_lines=0
if (File.file? filename) #.file? is used to check if the file exist while .exist? also checks directories
	afile=File.open(filename,"r")
	afile.each do |line|
		if line.include? string #checks if the line includes a particular string
      total_lines+=1;
			puts "Line #{linenum} : #{line}"
		end
		linenum+=1;
	end
  puts "Total number of lines with the string \"#{string}\" is #{total_lines}"
end

def task2(ary)
    p "These are the elements in the ary"
    p ary
    p "Print the square of each element in the array"
    ary.each {|x| puts x*x}
    p "Print the elements while printing 4 elements at a time"
    ary.each_slice(4) {|y| p y}
    p "Finds the elements in the array which are multiples of 4"
    ary.select {|z| print "#{z}\n" if z % 4 == 0 }
    p "Builds a new array with squares values of elements found the array passed"
    ary2 = []
    ary2 = ary.map {|x| x * x}
    p ary2
    sum=1
    p "Calculates the product of all elements in array passed"
    p ary.inject {|sum, i| sum * i}
end

ary = []
y = 0
for x in 0..50 do
    y = rand(20..100)
    ary.push(y)
end

task2(ary)



#Task 3
# Benchmark library provides methods to measure and report the time used to execute Ruby code.
require 'benchmark'

def function3A(n)
    i=0
    i1, i2 =1, 1
    while i < n
        i1,i2 = i2, i1+i2
        i+=1
    end

end

def function3B(n)
    if n == 1
        return 1
    elsif n == 2
        return 1
    else
        return function3b(n-1) + function3b(n-2)
    end
end

Benchmark.bm(7) do |x|
    x.report("function3a") {function3A(40)}
    x.report("function3b") {function3A(40)}
end



#Task 4

class Tree
    attr_accessor :child, :node_name

    def initialize(node)
        @child=Array.new
        node.each_key{|name| @node_name=name}
        hash=node[@node_name]
        if hash.is_a? Hash
          hash.each_key do  |key|
            @child.push(Tree.new(hash.slice(key)))  if hash[key]
          end
        end
      end

    def visit_all(&block)
        visit &block
        child.each {|c| c.visit_all &block}
      #  if(self.child != nil)
      #      self.child.visit_all(&block)
      #  end
    end

    def visit(&block)
        block.call self
    end
end

ruby_tree = Tree.new({
  "ggrandpa" => { "grandpa1" =>
    {"parent1" => {"child1" => {}},
     "parent2" => {"child2" => {}, "child3" => {}}
    },
    "grandpa2" =>
       {"parent3" => {"child4" => {}},
        "parent4" => {"child5" => {}, "child6" => {}}
       }
       }
     })

ruby_tree.visit_all do |node|
     puts "Visting: #{node.node_name}" if node.node_name
     print "Child:"
     node.child.each{|child| puts "\t\t #{child.node_name}"}
     puts "\n"
end



#Task 5

class Shape
    attr_accessor :color
    def initialize(color)
        @color = color
    end
end

class Circle < Shape
    attr_accessor :radius, :area, :PI
    @@PI = 3.14
    def initialize(color, radius)
        super (color)
        @radius = radius
    end
    def area()
        @area = @@PI * @radius * @radius
    end
end

class Rectangle < Shape
    attr_accessor :lenght, :width, :area
    def initialize(color, length, width)
        super (color)
        @length = length
        @width = width
    end
    def area()
        @area = @length * @width
    end
end

ary_list = []
for i in 1..100
    random = rand(2)
    if random == 0
        x = Circle.new("blue", rand(1..10))
        ary_list.push(x)
    else
        y = Rectangle.new("red", rand(1..20), rand(1..15))
        ary_list.push(y)
    end
end

sum = ary_list.inject(0){|sum,item|sum + item.area}
p "The total area is #{sum.round(2)}"
