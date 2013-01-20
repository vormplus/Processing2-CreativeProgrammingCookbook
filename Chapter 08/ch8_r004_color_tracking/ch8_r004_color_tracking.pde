/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */

import processing.video.*;

Capture webcam;

color trackColor;
int trackR;
int trackG;
int trackB;

int topLeftX;
int topLeftY;
int bottomRightX;
int bottomRightY;

int maxColorDifference;

void setup()
{
    size( 640, 480 );
    
    webcam = new Capture( this, width, height );
    webcam.start();
    
    trackColor = color( 255 );
    trackR = (trackColor >> 16) & 0xff;
    trackG = (trackColor >> 8) & 0xff;
    trackB = trackColor & 0xff;
    
    maxColorDifference = 40;
    
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
                int r = (c >> 16) & 0xff;
                int g = (c >> 8) & 0xff;
                int b = c & 0xff;
                float colorDifference = dist( r, g, b, trackR, trackG, trackB );
                if ( colorDifference < maxColorDifference ) {            
                    if ( i < topLeftX ) {
                        topLeftX = i;
                    }
                    if ( j < topLeftY ) {
                        topLeftY = j;
                    }
                    if ( i > bottomRightX ) {
                        bottomRightX = i;
                    }
                    if ( j > bottomRightY ) {
                        bottomRightY = j;
                    }
                }
                counter++;
            }       
        }
        
        updatePixels();

        // draw tracking color
        fill( trackColor );
        noStroke();
        rect( 0, 0, 20, 20 );
        
        noFill();
        stroke( 0 );
        strokeWeight( 2 );
        rect( topLeftX, topLeftY, bottomRightX - topLeftX, bottomRightY - topLeftY );
        
        // reset tracking points
        topLeftX = width;
        topLeftY = height;
        bottomRightX = 0;
        bottomRightY = 0;
    
    }
    
}

void mousePressed()
{
    trackColor = webcam.get( mouseX, mouseY );
    trackR = (trackColor >> 16) & 0xff;
    trackG = (trackColor >> 8) & 0xff;
    trackB = trackColor & 0xff;
}
