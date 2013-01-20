/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */

void setup()
{
    size( displayWidth, displayHeight );
    smooth();
}

void draw()
{
    // draw red background with white shape.
    background( 255, 0, 0 );
    
    fill( 255 );
    noStroke();
    
    beginShape();
    vertex( width/2, 0 );
    vertex( width, height/2 );
    vertex( width/2, height );
    vertex( 0, height/2 );
    endShape( CLOSE );
}
