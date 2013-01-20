/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */

import processing.opengl.*;

float x;
float z;

void setup()
{
    size( 640, 480, OPENGL );
    
    x = 0;
    z = 0;

    noStroke();
}

void draw()
{
    background( 255 );
    lights();

    x = cos( radians( frameCount ) ) * 1000;
    z = sin( radians( frameCount ) ) * 1000;

    camera( x, 0, z, width/2, height-50, -500, 1, 1, 0 );
    
    beginShape();
    fill( 255, 0, 0 );
    vertex( 0, height, 0);
    fill( 255, 255, 0 );
    vertex( 0, height, -1000 );
    fill( 0, 255, 0 );
    vertex( width, height, -1000 );
    fill( 0, 0, 255 );
    vertex( width, height, 0 );
    endShape(CLOSE);
    
    fill( 255 );
    pushMatrix();
    translate( width/2, height-50, -500 );
    box( 100 );
    popMatrix();
}
