/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */

PrintWriter textFile;

void setup()
{
    textFile = createWriter("files/randomnumbers.txt");
}

void draw()
{
    textFile.println( random( 200 ) );
    if ( frameCount >= 1000 ) {
        textFile.flush();
        textFile.close();
        exit();
    }    
}
