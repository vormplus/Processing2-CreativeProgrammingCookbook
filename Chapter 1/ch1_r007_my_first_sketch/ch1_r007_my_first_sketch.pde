/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */

void setup()
{
    size( 640, 480 );
    smooth();
}

void draw()
{
    background( 255 );
    
    strokeWeight( 1 );
    point( 20, height/1.5 );
    line( 70, 20, 70, height - 20 );
    strokeWeight( 2 );
    point( 120, height/1.75 );
    line( 170, 20, 170, height - 20 );
    strokeWeight( 4 );
    point( 220, height/2 );
    line( 270, 20, 270, height - 20 );
    strokeWeight( 8 );
    point( 320, height/3 );
    line( 370, 20, 370, height - 20 );
    strokeWeight( 16 );
    point( 420, height/4 );
    line( 470, 20, 470, height - 20 );
    strokeWeight( 32 );
    point( 520, height/5 );
    line( 570, 20, 570, height - 20 );
}
