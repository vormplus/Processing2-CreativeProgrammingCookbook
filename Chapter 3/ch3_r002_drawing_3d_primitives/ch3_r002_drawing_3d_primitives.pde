/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */
 
import processing.opengl.*;

void setup()
{
    size( 640, 480, OPENGL );
    smooth();
}

void draw()
{
    background( 255 );
    lights();
    
    float angleY = radians( frameCount );
    
    pushMatrix();
    translate( width * 0.3, height* 0.3 );
    rotateY( angleY );
    fill( 0, 255, 255 );
    box( 100 );
    popMatrix();

    pushMatrix();
    translate( width * 0.5, height* 0.5 );
    rotateY( angleY );
    fill( 0, 255, 0 );
    box( 100, 40, 50 );
    popMatrix();
    
    pushMatrix();
    translate( width * 0.7, height * 0.3 );
    rotateY( angleY );
    fill( 255, 0, 0 );
    sphereDetail( 30 );
    sphere( 75 );
    popMatrix();

    pushMatrix();
    translate( width * 0.3, height * 0.7 );
    rotateY( angleY );
    fill( 255, 255, 0 );
    sphereDetail( 6 );
    sphere( 75 );
    popMatrix();

    pushMatrix();
    translate( width * 0.7, height * 0.7 );
    rotateY( angleY );
    fill( 255, 0, 255 );
    sphereDetail( 4, 20 );
    sphere( 75 );
    popMatrix();
}
