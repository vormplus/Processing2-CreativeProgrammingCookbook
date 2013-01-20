/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */

import processing.video.*;

Movie m;

void setup()
{
    size( 640, 480 );
    
    m = new Movie( this, "marbles.mov" );
    m.loop();
}

void draw()
{
    background( 0 );
    image( m, 0, 0, width, height );
    
    int numPixels = width * height;
    
    loadPixels();
    for ( int i = 0; i < numPixels; i++ ) {
        float b = brightness( pixels[i] );
        if ( b > 245 ) {
            pixels[i] = lerpColor( pixels[i], color( 0, 0, 0 ), map( b, 0, 255, 0, 1 ) );
        }
    }
    updatePixels();
}

void movieEvent( Movie m )
{
    m.read();
}

