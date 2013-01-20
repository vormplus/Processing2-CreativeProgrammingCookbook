/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */
 
void setup()
{
    size( 640, 480 );
}

void draw()
{
    background( 225 );
    translate( width/2, height/2 );
    fill( 255, 0, 0 );
    noStroke();
    ellipse( 0, 0, 200, 200 );
}
