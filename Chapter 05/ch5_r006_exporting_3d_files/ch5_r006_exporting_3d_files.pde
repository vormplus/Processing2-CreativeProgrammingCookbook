/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */

import processing.opengl.*;
import processing.dxf.*;

Boolean saveDXF = false;

void setup()
{
    size( 640, 480, OPENGL );
    smooth();
}

void draw()
{
    if ( saveDXF == true ) {
        beginRaw( DXF, "files/myCubes.dxf" );    
    }
    
    lights();
    
    background( 255 );
    fill( 128 );
    noStroke();
    
    for ( int i = 0; i < 100; i++ ) {
        pushMatrix();
        translate( random( width ), random( height ), random( -1000, 0 ) );
        pushMatrix();
        rotateX( radians( random( 360 ) ) );
        rotateY( radians( random( 360 ) ) );
        rotateZ( radians( random( 360 ) ) );
        box( 50 );
        popMatrix();
        popMatrix();
    }
    
    if ( saveDXF == true ) {
        endRaw();
        saveDXF = false;
    }
    
}

void keyPressed()
{
    if ( key == 's' ) {
        saveDXF = true;
    }
}
