/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */

import processing.opengl.*;

float depth;
boolean directionZ;

void setup()
{
    size( 640, 480, OPENGL );
    
    depth = 0;
    directionZ = true;
}

void draw()
{
    if ( directionZ == true ) {
        depth--;
        if ( depth <= -900 ) {
            directionZ = false;
        }    
    } else {
        depth++;
        if ( depth >= 0 ) {
            directionZ = true;
        }
    }
    
    background( 255 );
    
    noFill();
    stroke( 0 );
    for ( int i = 0; i < 10; i++ ) {
        pushMatrix();
        translate( 0, 0, -i * 100 );
        rect( 0, 0, width, height );
        popMatrix();
    }

    pushMatrix();
    translate( 0, 0, depth );
    fill( 255, 0, 0 );
    rect( 0, 0, 80, 80 );
    fill( 0, 255, 0 );
    rect( width-80, 0, 80, 80 );
    fill( 255, 255, 0 );
    rect( width-80, height-80, 80, 80 );
    fill( 0, 255, 255 );
    rect( 0, height-80, 80, 80 );
    popMatrix();
}


