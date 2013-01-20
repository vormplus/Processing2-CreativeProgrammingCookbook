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
}

void draw()
{
    background( 255 );
    lights();
    
    pushMatrix();
    translate( width/2, height/2, 0 );
    rotateY( radians( frameCount ) );

    // TRIANGLE STRIP
    pushMatrix();
    rotateZ( radians( frameCount ) );
    
    fill( 255, 0, 0 );
    
    beginShape( TRIANGLE_STRIP );
    for ( int i = 0; i < 20; i++ ) {
        float x1 = cos( radians( i * 10 ) ) * 100;
        float y1 = sin( radians( i * 10 ) ) * 100;
        float x2 = cos( radians( i * 10 + 5 ) ) * ( 180 - i * 4 );
        float y2 = sin( radians( i * 10 + 5 ) ) * ( 180 - i * 4 );
        
        vertex( x1, y1, 0 );
        vertex( x2, y2, 50 + i );
    }
    endShape();
    popMatrix();

    // QUAD STRIP    
    pushMatrix();
    translate( 0, 0, -100 );
    rotateZ( radians( -frameCount ) );
    
    fill( 255, 255, 0 );
    
    beginShape( QUAD_STRIP );
    for ( int i = 0; i < 20; i++ ) {
        float x1 = cos( radians( i * 10 ) ) * ( 100 + i * 5 );
        float y1 = sin( radians( i * 10 ) ) * ( 100 + i * 5 );
        float x2 = cos( radians( i * 10 + 5 ) ) * 180;
        float y2 = sin( radians( i * 10 + 5 ) ) * 180;
        
        vertex( x1, y1, 0 );
        vertex( x2, y2, 80 + i * 2 );
    }
    endShape();
    popMatrix();
    
    popMatrix();
}
