import io.StdIn._
import java.io._

object Test {

def main(args: Array[String]) {

var create = new PrintWriter (new File ("mytext.txt"))

println("Type three lines")

var i = 0

while(i < 3)
{
 var sentence: String = scala.io.StdIn.readLine
 create.write(sentence + "   \n   ")
 i = i + 1
}

create.close

}

}