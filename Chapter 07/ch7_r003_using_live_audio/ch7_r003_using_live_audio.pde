/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */

import ddf.minim.*;
import ddf.minim.signals.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;

Minim minim;
AudioInput in;

void setup()
{
    size( 640, 480 );
    smooth();
    
    minim = new Minim( this );
    
    in = minim.getLineIn( Minim.STEREO, 512 );

    background( 0 );
}

void draw()
{
    fill( 0, 16 );
    noStroke();
    rect( 0, 0, width, height/2 );
    
    stroke( 255 );
    noFill();
    
    float r = 0;
    for ( int i = 0; i < in.bufferSize(); i++ ) {
        r += abs( in.mix.get( i ) ) * 20;
    }

    ellipse( width/2, height/2, r, r );    
}

void stop()
{
    in.close();
    minim.stop();
    super.stop();
}
