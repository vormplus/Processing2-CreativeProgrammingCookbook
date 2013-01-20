/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */
 
PGraphics pg;

float x;
float y;

void setup()
{
    size( 640, 480 );
    smooth();
    
    pg = createGraphics( 64, 64, JAVA2D );
    
    background( 255 );
    imageMode( CENTER );
    
    x = 0;
    y = 0;
}

void draw()
{
    pg.beginDraw();
    pg.background( 255, 0, 0, 8 );
    pg.smooth();
    for ( int i = 0; i < 8; i++ ) {
        pg.stroke( random( 255 ), 0, 0 );
        pg.line( random( pg.width ), random( pg.height ), random( pg.width ), random( pg.height ) );
    }
    pg.endDraw();
    
    image( pg, x, y );
    
    x += random( 4, 16 );
    if ( x > width ) {
        x = 0;
        y += random( 32, 64 );
        if ( y > height ) {
            y = 0;
            fill( 255, 32 );
            noStroke();
            rect( 0, 0, width, height );
        }
    }
}

void mousePressed()
{
    if ( random( 100 ) < 50 ) {
        background( 0 );
    } else {
        background( 255 );
    }
}
