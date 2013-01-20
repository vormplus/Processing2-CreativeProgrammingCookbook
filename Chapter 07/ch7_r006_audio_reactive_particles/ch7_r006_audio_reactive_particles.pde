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

Particle[] particles;

boolean fade = false;

void setup()
{
    size( 640, 480 );
    smooth();

    background( 0 );
    
    colorMode( HSB, 360, 100, 100, 100 );

    minim = new Minim( this );
    
    player = minim.loadFile("song.mp3", 512 );
    player.loop();

    fft = new FFT( player.bufferSize(), player.sampleRate() );

    particles = new Particle[ fft.specSize() ];
    for ( int i = 0; i < fft.specSize(); i++ ) {
        particles[i] = new Particle( i );
    }

}

void draw()
{
    pushStyle();
    colorMode( RGB, 255 );
    if ( fade ) {
        noStroke();
        fill( 0, 8 );
        rect( 0, 0, width, height );
    } else {
        background( 0 );
    }
    popStyle();

    fft.forward( player.mix );

    for ( int i = 0; i < fft.specSize() - 1; i++ ) {
        particles[i].update( fft.getBand( i ), player.mix.get( i*2 ) );
        particles[i].render();
    }
    
}

void keyPressed()
{
    if ( key == 'f' ) {
        fade = !fade;
    }
}

void stop()
{
    player.close();
    minim.stop();
    super.stop();
}
