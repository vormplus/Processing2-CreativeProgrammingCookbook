/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */

import hypermedia.video.*;

OpenCV opencv;

void setup()
{
    size( 640, 480 );
    
    opencv = new OpenCV( this );
    opencv.capture( width, height );
}

void draw()
{
    background( 0 );
    
    opencv.read();
    opencv.flip( OpenCV.FLIP_BOTH );
    opencv.convert( GRAY );
    
    opencv.brightness( 20 );
    opencv.contrast( 80 );

    opencv.ROI( 160, 120, 320, 240 );
    opencv.blur( OpenCV.GAUSSIAN, 41 );
    
    image( opencv.image(), 0, 0 );
    
}
