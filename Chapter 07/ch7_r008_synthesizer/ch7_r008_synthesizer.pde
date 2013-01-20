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
AudioOutput out;
SineWave sine;
SawWave saw;

void setup()
{
    size( 1024, 480 );
    smooth();
    
    strokeWeight( 2 );
    
    minim = new Minim( this );
    
    out = minim.getLineOut( Minim.STEREO );
    
    sine = new SineWave( 130.816, 0.7, out.sampleRate() );
    out.addSignal( sine );

    saw = new SawWave( 65.4064, 1.0, out.sampleRate() );
    out.addSignal( saw );
}

void draw()
{
    background( 255 );
    
    translate( 0, height/2 );
    
    for ( int i = 0; i < out.bufferSize(); i++ ) {
        float y1 = out.left.get( i ) * 100;
        float y2 = out.right.get( i ) * 100;
        stroke( 0 );
        point( i, y1 );
        stroke( 255, 0, 0 );
        point( i, y2 );
        
    }
}

void mouseMoved()
{
    float pan = map( mouseX, 0, width, -1, 1 );
    sine.setPan( pan );
    saw.setPan( -pan );
}

void keyPressed()
{
    if ( key == 'q' ) {
        sine.setFreq( 130.813 ); // C3
        saw.setFreq( 65.4064 ); // C2
    }

    if ( key == 's' ) {
        sine.setFreq( 146.832 ); // D3
        saw.setFreq( 73.4162 ); // D2
    }

    if ( key == 'd' ) {
        sine.setFreq( 164.814 ); // E3
        saw.setFreq( 82.4069 ); // E2
    }

    if ( key == 'f' ) {
        sine.setFreq( 174.614 ); // F3
        saw.setFreq( 87.3071 ); // F2
    }

    if ( key == 'g' ) {
        sine.setFreq( 195.998 ); // G3
        saw.setFreq( 97.9989 ); // G2
    }

    if ( key == 'h' ) {
        sine.setFreq( 220 ); // A3
        saw.setFreq( 110 ); // A2
    }

    if ( key == 'j' ) {
        sine.setFreq( 246.942 ); // B3
        saw.setFreq( 123.471 ); // B2
    }
}

void stop()
{
    out.close();
    minim.stop();
    super.stop();
}
