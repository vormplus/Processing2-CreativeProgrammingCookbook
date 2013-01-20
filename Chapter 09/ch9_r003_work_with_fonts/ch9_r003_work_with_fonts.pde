/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */
 
/* @pjs font="Chunk.ttf"; */

PFont font;

float x;
float y;


void setup()
{
    size( 640, 480 );
    
    font = createFont( "Chunk.ttf", 60 );
    
    textFont( font );
    
    x = 0;
    y = height + 60;
}

void draw()
{
    background( 255 );
    
    noStroke();
    
    fill( 255, 225, 0 );
    
   // float n = map( , 0, 1, 0, width );
    
    rect( x, 0, random( width/2 ), height );
    
    String txt = "This is Chunk!";
    float tw = textWidth( txt );
    
    fill( 0 );
    text( txt, (width-tw)/2, y );
    
    x += noise( mouseY * 0.02, y * 0.02 );
    if ( x >= width ) {
        x = 0;
    }
    
    y--;   
    if ( y <= -60 ) {
        y = height + 60;    
    } 
}
