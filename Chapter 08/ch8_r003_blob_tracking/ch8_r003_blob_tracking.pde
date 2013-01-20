/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */

import processing.video.*;

Capture webcam;
int threshold;

int topLeftX;
int topLeftY;
int bottomRightX;
int bottomRightY;

void setup()
{
    size( 640, 480 );

    webcam = new Capture( this, width, height, 30);
    webcam.start();
    
    threshold = 127;

    topLeftX = width;
    topLeftY = height;

    bottomRightX = 0;
    bottomRightY = 0;
}

void draw()
{
    if ( webcam.available() ) {
        webcam.read();
        image( webcam, 0, 0 );
        
        loadPixels();
        
        int counter = 0;
        for ( int j = 0; j < webcam.height; j++ ) {
            for ( int i = 0; i < webcam.width; i++ ) {
                color c = webcam.pixels[counter];
                float b = brightness( c );
                if ( b > threshold ) {
                    pixels[counter] = color( 255 );
                    topLeftX = min( i, topLeftX );
                    topLeftY = min( j, topLeftY );
                    bottomRightX = max( i, bottomRightX );
                    bottomRightY = max( j, bottomRightY );
                } else {
                    pixels[counter] = color( 0 );
                }
                counter++;
            }       
        }        
       
        updatePixels();

        noFill();
        stroke( 255, 0, 0 );
        strokeWeight( 2 );
        rect( topLeftX, topLeftY, bottomRightX - topLeftX, bottomRightY - topLeftY );

        // reset tracking points
        topLeftX = width;
        topLeftY = height;
        bottomRightX = 0;
        bottomRightY = 0;

    
        fill( 255, 0, 0 );
        noStroke();
        rect( 10, 10, 110, 20 );
        fill( 255 );
        text( "Threshold: " + threshold, 14, 24 );
    
    }

}

void keyPressed()
{
    println( key );
    
    if ( key == CODED ) {
        if ( keyCode == UP ) {
            threshold++;
            println( threshold );
        }
        if ( keyCode == DOWN ) {
            threshold--;
            println( threshold );
        }
    }
}
