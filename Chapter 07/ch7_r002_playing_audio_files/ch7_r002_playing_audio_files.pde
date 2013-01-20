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

void setup()
{
    size( 640, 480 );
    
    minim = new Minim( this );
    
    player = minim.loadFile("song.mp3");
    player.play();
}

void draw()
{
    background( 255 );
    
    float x = map( player.position(), 0, player.length(), 0, width );
    
    stroke( 0 );
    line( x, 0, x, height );
    
    int totalSeconds = (int)( player.length() / 1000 ) % 60;
    int totalMinutes = (int)( player.length() / (1000 * 60) ) % 60;
    int playheadSeconds = (int)( player.position() / 1000 ) % 60;
    int playheadMinutes = (int)( player.position() / (1000 * 60) ) % 60;
    
    String info = "Position: " + playheadMinutes + ":" + nf( playheadSeconds, 2 ) + "/" + totalMinutes + ":" + nf( totalSeconds, 2 );

    fill( 0 );
    noStroke();
    text( info, 10, 20 );
    
}

void mousePressed()
{
    int pos = floor( map( mouseX, 0, width, 0, player.length() ) );
    player.play( pos );
}

void keyPressed()
{
    if ( key == ' ' ) {
        if ( player.isPlaying() ) {
            player.pause();
        } else {
            player.play();
        }
    }
    
    if ( key == CODED ) {
        if ( keyCode == LEFT ) {
            player.rewind();
        }
    }
}

void stop()
{
    player.close();
    minim.stop();
    super.stop();
}
