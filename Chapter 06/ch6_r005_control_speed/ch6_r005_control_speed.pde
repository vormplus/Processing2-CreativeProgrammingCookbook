/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */

import processing.video.*;

Movie m;
float s;

void setup()
{
    size( 640, 480 );
    
    m = new Movie( this, "marbles.mov" );
    m.loop();
    
    s = 1.0;
}

void draw()
{
    background( 0 );
    image( m, 0, 0, width, height );
    
    fill( 0 );
    text( "Speed: " + s, 20, 20 ); 

}

void movieEvent( Movie m )
{
    m.read();
}

void mousePressed()
{
    s = map( mouseX, 0, width, -2, 2 );
    m.speed( s ); 
}

