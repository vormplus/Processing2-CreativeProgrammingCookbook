/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */

import processing.video.*;

Capture webcam;

void setup()
{
    size( 640, 480 );
    smooth();
    
    println( Capture.list() );
    
    webcam = new Capture( this, width, height, 30 );
    webcam.start();
}

void draw()
{
    background( 255 );
    image( webcam, 0, 0 );
}

void captureEvent( Capture webcam )
{
    webcam.read();
}
