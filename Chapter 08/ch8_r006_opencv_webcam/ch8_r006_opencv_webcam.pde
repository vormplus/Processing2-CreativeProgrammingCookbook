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
    opencv.read();
    opencv.flip( OpenCV.FLIP_HORIZONTAL );
    image( opencv.image(), 0, 0 );
}
