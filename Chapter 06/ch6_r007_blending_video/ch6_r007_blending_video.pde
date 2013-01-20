/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */

import processing.video.*;

Movie m1;
Movie m2;

void setup()
{
    size( 640, 480 );
    
    m1 = new Movie( this, "marbles.mov" );
    m1.loop();

    m2 = new Movie( this, "marbles2.mov" );
    m2.loop();
    m2.speed( 2 );
}

void draw()
{
    background( 0 );
    image( m1, 0, 0, width, height );
    
    blend( m2, 0, 0, width, height, 0, 0, width, height, DIFFERENCE);
}

void movieEvent( Movie m )
{
    if ( m == m1 ) {
        m1.read();
    } else {
        m2.read();
    }
}
