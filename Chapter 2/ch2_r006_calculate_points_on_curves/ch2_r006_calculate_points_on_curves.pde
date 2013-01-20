/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */
 
float noiseOffset;

void setup()
{
    size( 640, 480 );
    smooth();
    
    noiseOffset = 0.0;
    
    rectMode( CENTER );
}

void draw()
{
    noiseOffset += 0.01;
    
    background( 255 );
    
    // Bezier curve
    stroke( 0 );
    noFill();
    bezier( 40, 200, 120, 40, 300, 240, 600, 40 );
    
    stroke( 255, 0, 0 );
    line( 40, 200, 120, 40 );
    line( 600, 40, 300, 240 );
    
    fill( 255 );
    rect( 120, 40, 4, 4 );
    rect( 300, 240, 4, 4 );    

    float n = noise( noiseOffset );
    
    float x = bezierPoint( 40, 120, 300, 600, n );
    float y = bezierPoint( 200, 40, 240, 40, n );
    
    stroke( 0 );
    rect( x, y, 6, 6 );
    
    float t = map( mouseX, 0, width, -5.0, 5.0 );
    curveTightness( t );
    
    // Catmull-Rom spline
    stroke( 0 );
    noFill();
    curve( 120, 240, 40, 400, 600, 240, 300, 440 );

    stroke( 255, 0, 0 );
    line( 120, 240, 40, 400 );
    line( 600, 240, 300, 440 );
    
    fill( 255 );
    rect( 120, 240, 4, 4 );
    rect( 300, 440, 4, 4 );
    
    x = curvePoint( 120, 40, 600, 300, n );
    y = curvePoint( 240, 400, 240, 440, n );
    
    stroke( 0 );
    rect( x, y, 6, 6 );

}
