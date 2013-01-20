/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */
 
boolean touching = false;

void setup()
{
    size( displayWidth, displayHeight );
    smooth();
    
    background( 0 );
}

void draw()
{
    if ( touching ) {
        stroke( 255, 128 );
        noFill();
        float d = dist( mouseX, mouseY, pmouseX, pmouseY );
        float s = map( d, 0, 200, 1, 10 ); 
        strokeWeight( s );
        line( mouseX, mouseY, pmouseX, pmouseY );
        fill( 255, 255, 0, 16 );
        stroke( 0, 128 );
        strokeWeight( 1 );
        ellipse( mouseX, mouseY, motionPressure * 100, motionPressure * 100 );
    }
}

public boolean surfaceTouchEvent( MotionEvent event )
{
    if ( event.getAction() == 2 ) {
        touching = true;
    } else {
        touching = false;
    }
    
    return super.surfaceTouchEvent( event );
}
