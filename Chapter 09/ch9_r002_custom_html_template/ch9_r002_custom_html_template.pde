/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */
 
/**
 * This example was built with a custom HTML template.
 * This paragraph will be added to the "Description" paragraph in the template.
 */
 
float x, y;
float prevX, prevY;

color c;

void setup()
{
    size( 640, 480 );
    smooth();
    background( 0 );
    
    x = random( width );
    y = random( height );
    prevX = x + random( -10, 10 );
    prevY = y + random( -10, 10 );
    
    c = color( 200, 255, 23 );
}

void draw()
{
    stroke( lerpColor( c, color( 255 ), random( 1 ) ) );
    strokeWeight( 1 );
    line( x, y, prevX, prevY );
    
    prevX = x;
    prevY = y;
    x += random( -10, 10 );
    y += random( -10, 10 );
    
    x = constrain( x, 0, width );
    y = constrain( y, 0, height );
}
