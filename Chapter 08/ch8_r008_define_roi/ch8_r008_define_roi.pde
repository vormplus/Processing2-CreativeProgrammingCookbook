/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */

import hypermedia.video.*;
import java.awt.Rectangle;

OpenCV opencv;

void setup()
{
    size( 640, 480 );
    
    opencv = new OpenCV( this );
    opencv.capture( 320, 240 );
    opencv.cascade( OpenCV.CASCADE_FRONTALFACE_ALT );
}

void draw()
{
    background( 0 );
    
    opencv.read();
    opencv.flip( OpenCV.FLIP_HORIZONTAL );
    opencv.convert( GRAY );
    opencv.ROI( 160, 0, 160, 240 );

    scale( 2 );
    image( opencv.image(), 0, 0 );
    
    Rectangle[] faces = opencv.detect();
    
    noStroke();
    fill( 0 );
    for ( int i = 0; i < faces.length; i++ ) {
        rect( faces[i].x + 160, faces[i].y, faces[i].width, faces[i].height );
    }
}
