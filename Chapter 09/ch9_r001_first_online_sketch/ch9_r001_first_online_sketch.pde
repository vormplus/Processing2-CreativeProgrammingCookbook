/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */
 
float x, y;
float prevX, prevY;

void setup()
{
    size( 640, 480 );
    smooth();
    background( 0 );
    
    x = random( width );
    y = random( height );
    prevX = x + random( -10, 10 );
    prevY = y + random( -10, 10 );
}

void draw()
{
    stroke( random( 192 ) );
    strokeWeight( 1 );
    line( x, y, prevX, prevY );
    
    prevX = x;
    prevY = y;
    x += random( -10, 10 );
    y += random( -10, 10 );
    
    if ( x < 0 ) {
        x = width;
    } else if ( x > width ) {
        x = 0;
    }
    
    if ( y < 0 ) {
        y = height;
    } else if ( y > height ) {
        y = 0;
    }
}
