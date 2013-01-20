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
    
    noStroke();
}

void draw()
{
    background( 255 );

    lights();

    translate( width/2, height/2 );

    rotateX( radians( frameCount ) );
    rotateY( map( mouseX, 0, width, -PI, PI ) );
    
    fill( 255, 225, 23 );
    box( 200 );
}
