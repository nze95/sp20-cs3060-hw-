def func1
 puts("Enter two lines: ")
 line1=gets.chomp
 line2=gets.chomp
 open('savedFile.txt', 'w'){ |f|
   f.puts line1
   f.puts line2
 }
end

def func2()

  puts("Enter the name of the file:")
  filename=gets.chomp

  data=Array.new
  afile=File.new(filename)
  afile.each{|line|  data.push(line.split)}

  i=0
  flag=false

  while i < data.count
     if data[i].include? ("Python" || "Java")
        p ("The file is interesting")
         flag=true
        break
    elsif data[i].include? ("Ruby" || "ruby")
        p ("The File is extraordinary")
        flag=true
        break
    end
   i+=1
 end

  if(flag==false)
    p ("The File is so so")
  end

  afile.close

end


def func3
  1.upto(100) do |x|
    print("The square of integer #{x} is #{x * x}\n")
  end
end


def func4
  puts("Pick a number from 10 to 100")
  x=Integer(gets)
  while x<10 or x>100
    puts("Pick a number from 10 to 100")
    x=Integer(gets)
  end
  i=0;
  ary=[]
  while x!=0
    ary[i]=Random.rand(2)
    i+=1
    x-=1
  end

  tails=0
  ary.size.times do |heads|
   if (ary[heads]==0)
      tails+=1
   end
  end
  heads=ary.size - tails
  print("The ratios of heads to tails is #{heads} : #{tails}")

end

def func5
  aFile = File.new(("story.txt"), "r")
 freq = Hash.new
 i = 0
 aFile.each do |line|
   #line is divided into pieces, word array
   words = line.split
   words.each do |word|
     if (freq.has_key? word)
       freq[word] = freq[word] + 1
     else
       freq[word] = 1
       i += 1
     end
   end
 end
 aFile.close
 count = 0
 freq.each do |key, num|
   count += num
 end
 puts "The file contains #{count} words, #{freq.size} of which are unique"
 freq = freq.sort_by{|k, v| -v}.to_h  #any other variation can be used
 puts "The 3rd most common word is \'#{freq.keys[2]}\' which appears #{freq.values[2]} times."
end

func1()
func2()
func3()
func4()
func5()
