/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */

float x;
float y;
int b;

void setup()
{
    size( displayWidth, displayHeight );
    smooth();
    
    x = 0;
    y = 0;
    
    background( 0 );
    noFill();
}

void draw()
{
    b++;
    if ( b > 255 ) {
        b = 0;    
    }
    
    x += random( 2, 6 );
    if ( x > width ) {
        x = 0;
        y += random( 20, 40 );
        if ( y > height ) {
            y = 0;
        }
    }
    
    stroke( 0, random( 255 ), b, 64 );
    float r = random( 6, 60 );
    ellipse( x, y, r, r );
}
