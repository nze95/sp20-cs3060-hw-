import scala.io._
import io.StdIn._
import java.io._

     println("Please enter the webpage url")

     val url:String = scala.io.StdIn.readLine
     val thepage = Source.fromURL(url)("ISO-8859-1").mkString
     val imgRegex = "(?s)<img.+?src=\"(.+?)\".*>".r
     val scriptRegex = "(?i)<script.*</script>".r

     val imgcount:Int = imgRegex.findAllIn(thepage).matchData.toList.size
     val scriptcount:Int = scriptRegex.findAllIn(thepage).matchData.toList.size

     println("There are " + imgcount + " image elements")
     println("There are " + scriptcount + " script elements")
     println("")

     val linkRegex = "(?i)<a.+?href=\"(http.+?)\".*>(.+?)</a>".r
     val linkcount:Int = linkRegex.findAllIn(thepage).matchData.toList.size
     val list = linkRegex.findAllIn(thepage).matchData.toList.map(_.group(1))

     var morethan:Int = 0
        
      def serialtype() = {

         val count = list.map { url =>

         var babypage = Source.fromURL(url)("ISO-8859-1").mkString
         var docount = imgRegex.findAllIn(babypage).matchData.toList.size

         if(docount > 2) {
            morethan += 1
         }
         docount 
        }
         val total = count.reduce(_+_)
         val finalcount:Int = total + imgcount

         println("There are a total of " + finalcount + " images" )
         println("")

         println("There are " + morethan + " pages with more than 2 images")
      }

         val t1 = System.currentTimeMillis() 
         serialtype()
         val t2 = System.currentTimeMillis()

      def paralleltype() = {
         
         val count = list.par map { url =>

         var babypage = Source.fromURL(url)("ISO-8859-1").mkString
         var docount = imgRegex.findAllIn(babypage).matchData.toList.size

         if(docount > 2) {
             morethan += 1
          }
          docount
         }
          val total = count.reduce(_+_)
          val finalcount:Int = total + imgcount

          println("There are a total of " + finalcount + " images" )
          println("")

          println("There are " + morethan + " pages with more than 2 images")
      }

         val t3 = System.currentTimeMillis()
         paralleltype()
         val t4 = System.currentTimeMillis()

        println("Serial execution time= " + (t2-t1))
        println("Parallel execution time= " + (t4-t3))



