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
    size( 1024, 480 );
    smooth();
    
    minim = new Minim( this );
    
    player = minim.loadFile("song.mp3", 1024);
    player.play();
    
    strokeWeight( 2 );
}

void draw()
{
    background( 255 );
    
    translate( 0, height/2 );
    
    // right channel
    stroke( 255, 0, 0 );
    for ( int i = 0; i < player.right.size(); i++ ) {
        float y = player.right.get( i ) * 220;
        point( i, y );
    }

    // left channel
    stroke( 0 );
    for ( int i = 0; i < player.left.size(); i++ ) {
        float y = player.left.get( i ) * 220;
        point( i, y );
    }
}

void stop()
{
    player.close();
    minim.stop();
    super.stop();
}
