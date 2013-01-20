/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */

String textLines[];

void setup()
{
    textLines = loadStrings("processing-websites.csv");
    
    noLoop();
}

void draw()
{
    background( 255 );
    translate( 20, height/2 );
    
    stroke( 128 );
    fill( 255, 128 );

    for ( int i = 0; i < textLines.length; i++ ) {
        String[] currentLine = split( textLines[i], ", " );
        for ( int j = 1; j < currentLine.length; j++ ) {
            println( currentLine[j] );
        }
        println("---");
    }
}
