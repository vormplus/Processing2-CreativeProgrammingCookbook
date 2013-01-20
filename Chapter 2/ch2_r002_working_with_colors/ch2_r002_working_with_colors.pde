/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */

color c;

void setup()
{
    size( 640, 480 );
    smooth();
    
    c = color( random( 255 ), random( 255 ), random( 255 ) );
}

void draw()
{
    colorMode( RGB, 255 );
    background( 255 );
    
    // grayscale
    noStroke();
    for ( int i = 0; i < 255; i++ ) {
        fill( i );
        rect( i * 2 + 20, 20, 2, 120 );
    }

    stroke( 0 );
    noFill();
    rect( 20, 20, 500, 120 );

    // random color
    fill( c );
    stroke( 0 );
    rect( 540, 20, 80, 120 );

    // full opaque colors
    stroke( 0 );
    fill( 255, 0, 0 );
    rect( 20, 160, 75, 60 );
    fill( 0, 255, 0 );
    rect( 95, 160, 75, 60 );
    fill( 0, 0, 255 );
    rect( 170, 160, 75, 60 );
    fill( 0, 255, 255 );
    rect( 245, 160, 75, 60 );
    fill( 255, 0, 255 );
    rect( 320, 160, 75, 60 );
    fill( 255, 255, 0 );
    rect( 395, 160, 75, 60 );
    fill( 255 );
    rect( 470, 160, 75, 60 );
    fill( 0 );
    rect( 545, 160, 75, 60 );

    // black background behind transparent colors
    rect( 0, 250, width, 70 );

    float t = map( mouseX, 0, width, 0, 255 );

    // transparent colors
    fill( 255, 0, 0, t );
    rect( 20, 220, 75, 60 );
    fill( 0, 255, 0, t );
    rect( 95, 220, 75, 60 );
    fill( 0, 0, 255, t );
    rect( 170, 220, 75, 60 );
    fill( 0, 255, 255, t );
    rect( 245, 220, 75, 60 );
    fill( 255, 0, 255, t );
    rect( 320, 220, 75, 60 );
    fill( 255, 255, 0, t );
    rect( 395, 220, 75, 60 );
    fill( 255, t );
    rect( 470, 220, 75, 60 );
    fill( 0, t );
    rect( 545, 220, 75, 60 );
    
    // HSB color bar
    colorMode( HSB, 360, 100, 100, 100 );
    
    float h = map( mouseX, 0, width, 0, 360 );
    float s = map( mouseY, 0, height, 0, 100 );

    noStroke();
    for ( int i = 0; i < 100; i++ ) {
        fill( h, s, i );
        rect( 20 + i*6, 340, 6, 120 );
    }
    
    noFill();
    stroke(0);
    rect( 20, 340, 600, 120 );
}
