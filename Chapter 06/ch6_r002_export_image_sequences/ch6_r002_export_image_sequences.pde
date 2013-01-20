/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */

int randomNum;

PVector[] points;

float radius = 2;

void setup()
{
    size( 1280, 720 );
    smooth();
    
    background( 234, 228, 17 );
    
    points = new PVector[64];
    for ( int i = 0; i < points.length; i++ ) {
        points[i] = new PVector( random( width ), random( height ) );
    }   
    
    frameRate( 30 );
    
    randomNum = floor( random( 10000, 90000 ) );
    
    noFill();
    stroke( 0, 64 ); 
}

void draw()
{

    for ( int i = 0; i < points.length; i++ ) {

        float newX = points[i].x + random( -10, 10 );
        float newY = points[i].y + random( -10, 10 );
        
        stroke( i*4, 64 );
        
        line( points[i].x, points[i].y, newX, newY );
        ellipse( newX, newY, radius, radius );
        
        points[i].x = newX;
        points[i].y = newY;
    }
    
    radius++;
    if ( radius > 10 ) {
        radius = 2;
    }
        
    saveFrame("images/export-"+randomNum+"-#####.tga");

    // save 900 frames = 30 sec @ 30 fps
    if ( frameCount >= 900 ) {
        exit();
    } 
}
