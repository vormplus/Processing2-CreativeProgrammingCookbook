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
    background( 255 );
}

void draw()
{
    // empty, but we need it to create an app that runs in the continuous programming mode.
}

void mousePressed()
{
    if ( mouseButton == RIGHT ) {
        background( 255 );
    }
}

void mouseMoved()
{
    stroke( 0, 64 );
    strokeWeight( 1 );
    fill( 255, 32 );
    float d = dist( mouseX, mouseY, pmouseX, pmouseY );
    constrain( d, 8, 100 );
    ellipse( mouseX, mouseY, d, d );
}

void mouseDragged()
{
    stroke( 0 );
    float d = dist( mouseX, mouseY, pmouseX, pmouseY );
    constrain( d, 0, 100 );
    float w = map( d, 0, 100, 1, 10 );
    strokeWeight( w );
    line( mouseX, mouseY, pmouseX, pmouseY );
}

void mouseReleased()
{
    noStroke();
    fill( 255, 16 );
    rect( 0, 0, width, height );
}

void mouseClicked()
{
    fill( 255, 0, 0, 128 );
    float d = random( 20, 200 );
    ellipse( mouseX, mouseY, d, d );
}
