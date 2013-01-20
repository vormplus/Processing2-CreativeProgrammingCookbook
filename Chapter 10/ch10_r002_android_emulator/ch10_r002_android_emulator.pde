/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */
 
float x;
float y;
float prevX;
float prevY;
float d;
float h;

void setup()
{
    size( displayWidth, displayHeight );
    background( 0 );
    smooth();
    
    x = random( width );
    y = random( height );
    prevX = x;
    prevY = y;

    stroke( 255, 128 );

    colorMode( HSB, 360, 100, 100, 100 );
}

void draw()
{
    x += random( -30, 30 );
    y += random( -30, 30 );
    
    x = constrain( x, 0, width );
    y = constrain( y, 0, height );
    
    d = dist( x, y, prevX, prevY );
    
    h = map( d, 0, 42, 0, 360 );
    
    fill( h, 100, 100, 50 );
    ellipse( x, y, d, d );

    prevX = x;
    prevY = y;    
}
