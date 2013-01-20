/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */
 
AccelerometerManager acc;
float ax;
float ay;
float az;
float r;

PVector loc;
color bgcolor;

void setup()
{
    acc = new AccelerometerManager( this );
    
    size( displayWidth, displayHeight );
    orientation( PORTRAIT );
    smooth();
    
    loc = new PVector( width/2, height/2 );
    
    r = 40;
    
    bgcolor = color( 255, 0, 0 );
}

void draw()
{
    float speedX = -(ax / 2);
    float speedY = ay / 2;
    
    loc.x += speedX;
    loc.y += speedY;
    
    if ( loc.x < r ) {
        bgcolor = color( 255, 128, 0 );
    }
    
    if ( loc.x > width - r ) {
        bgcolor = color( 128, 255, 0 );
    }

    if ( loc.y < r ) {
        bgcolor = color( 0, 225, 255 );
    }
    
    if ( loc.y > height - r ) {
        bgcolor = color( 255, 0, 128 );
    }
    
    loc.x = constrain( loc.x, r, width - r );
    loc.y = constrain( loc.y, r, height - r );
    
    background( bgcolor );
    fill( 255 );
    noStroke();
    ellipse( loc.x, loc.y, r*2, r*2 );

}

public void accelerationEvent( float x, float y, float z ) {
    ax = x;
    ay = y;
    az = z;
    redraw();
}
