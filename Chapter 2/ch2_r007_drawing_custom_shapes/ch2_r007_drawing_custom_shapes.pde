/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */
 
void setup()
{
    size( 640, 480 );
    smooth();
    
    frameRate( 1 );
}

void draw()
{
    background( 0 );
    noStroke();

    for ( int i = 0; i < 75; i++ ) {
        
        int numPoints = floor( random( 4, 8 ) );
        float innerRadius = random( 20, 40 );
        float outerRadius = random( 50, 100 );
        
        pushMatrix();
        translate( random( width ), random( height ) );
        if ( random( 100 ) < 50 ) {
            fill( 255, 255, 0, 64 );
            star( numPoints, innerRadius, outerRadius );
        } else {
            fill( 255, 0, 0, 64 );
            flower( numPoints, innerRadius, outerRadius );
        }
        
        popMatrix();
    }
}

void star( int numSpikes, float innerRadius, float outerRadius )
{
    int numVertices = numSpikes * 2;
    float angleStep = TWO_PI / numVertices;
    
    beginShape();
    
    for ( int i = 0; i < numVertices; i++ ) {
        float x, y;
        
        if ( i % 2 == 0 ) {
            x = cos( angleStep * i ) * outerRadius;
            y = sin( angleStep * i ) * outerRadius;
        } else {
            x = cos( angleStep * i ) * innerRadius;
            y = sin( angleStep * i ) * innerRadius;
        }
        
        vertex( x, y );
    }
    
    endShape( CLOSE );
}

void flower( int numLeafs, float innerRadius, float outerRadius )
{
    float angleStep = TWO_PI / numLeafs;
    
    beginShape();

    float startX = cos( 0 ) * innerRadius;
    float startY = sin( 0 ) * outerRadius; 
    
    vertex( startX, startY );
    
    for ( int i = 0; i < numLeafs; i++ ) {
        float cx1 = cos( angleStep * i ) * outerRadius;
        float cy1 = sin( angleStep * i ) * outerRadius;
        float x2 = cos( angleStep * (i + 1) ) * innerRadius; 
        float y2 = sin( angleStep * (i + 1) ) * innerRadius; 
        float cx2 = cos( angleStep * (i + 1) ) * outerRadius; 
        float cy2 = sin( angleStep * (i + 1) ) * outerRadius;
        
        bezierVertex( cx1, cy1, cx2, cy2, x2, y2 );
    }
    
    endShape( CLOSE );
}

