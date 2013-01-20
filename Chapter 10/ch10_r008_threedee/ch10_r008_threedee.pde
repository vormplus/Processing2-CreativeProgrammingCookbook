/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */
 
void setup()
{
    size( displayWidth, displayHeight, P3D );
}

void draw()
{
    background( 0 );
    
    translate( width/2, height/2, 0 );
    
    pushMatrix();
    rotateY( radians( frameCount ) );
    fill( 255 );
    noStroke();
    box( 100 );
    popMatrix();
    
    pushMatrix();
    rotateY( radians( frameCount ) );
    rotateX( radians( frameCount ) );
    beginShape();
    fill( 255, 0, 255 );
    vertex( -200, -200 );
    fill( 0, 255, 0 );
    vertex(  200, -200 );
    fill( 0, 0, 255 );
    vertex(  200,  200 );
    fill( 255, 255, 0 );
    vertex( -200,  200 );
    endShape( CLOSE );
    popMatrix();
}
