/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */

import processing.opengl.*;

float n;

void setup()
{
    size( 640, 480, OPENGL );
    
    n = 0.0f;
}

void draw()
{
    hint( ENABLE_DEPTH_TEST );
    n += 0.01;
    
    background( 255 );
    lights();

    noStroke();

    pushMatrix();
    for ( int i = 0; i < 17; i++ ) {
        for ( int j = 0; j < 13; j++ ) {
            pushMatrix();
            fill( i * 15, 0, j * 19 );
            translate( i * 40, j * 40 );
            rotateY( radians( i * 10 + frameCount ) );
            rotateZ( radians( i * 10 + frameCount ) );
            box( noise( i, j, n ) * 40 );
            popMatrix();
        }
    }

    popMatrix();    

    noLights();
    
    fill( 0 );
    stroke( 0 );
    rect( 320, 40, 200, 200 );

    hint( DISABLE_DEPTH_TEST );
    fill( 255 );
    rect( 320, 240, 200, 200 );
}


