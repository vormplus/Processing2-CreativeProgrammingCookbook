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
AudioPlayer player;
FFT fft;

void setup()
{
    size( 1024, 480 );
    
    minim = new Minim( this );
    
    player = minim.loadFile("song.mp3", 512 );
    player.loop();
    
    fft = new FFT( player.bufferSize(), player.sampleRate() );

    background( 255 );
}

void draw()
{
    fill( 255, 8 );
    noStroke();
    rect( 0, 0, width, height );
    
    fft.forward( player.mix );
    
    strokeWeight( 4 );
    strokeCap( SQUARE );
    stroke( 0 ); 
    
    for ( int i = 0; i < fft.specSize(); i++ ) {
        line( i*4, height, i*4, height - fft.getBand( i ) * 20 );
    }
}

void stop()
{
    player.close();
    minim.stop();
    super.stop();
}
