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
AudioSample samples[];

Button[] bd;
Button[] sn;
Button[] oh;
Button[] ch;

int playhead;

void setup()
{
    size( 640, 200 );
    
    minim = new Minim( this );

    samples = new AudioSample[4];
    samples[0] = minim.loadSample( "bd.aif" );
    samples[1] = minim.loadSample( "sn.aif" );
    samples[2] = minim.loadSample( "oh.aif" );
    samples[3] = minim.loadSample( "ch.aif" );
    
    frameRate( 8 );
    
    playhead = 0;
    
    bd = new Button[16];
    for ( int i = 0; i < bd.length; i++ ) {
        bd[i] = new Button( 125 + i * 30, 50 );
        if ( i % 4 == 0 ) {
            bd[i].isOn = true;
        }
    }

    sn = new Button[16];
    for ( int i = 0; i < sn.length; i++ ) {
        sn[i] = new Button( 125 + i * 30, 80 );
        if ( i % 8 - 4 == 0 ) {
            sn[i].isOn = true;
        }
    }

    oh = new Button[16];
    for ( int i = 0; i < oh.length; i++ ) {
        oh[i] = new Button( 125 + i * 30, 110 );
        if ( i % 2 == 1 ) {
            oh[i].isOn = true;
        }
    }

    ch = new Button[16];
    for ( int i = 0; i < ch.length; i++ ) {
        ch[i] = new Button( 125 + i * 30, 140 );
        if ( i % 2 == 0 ) {
            ch[i].isOn = true;
        }
    }
}

void draw()
{
    background( 255 );

    // draw playhead
    fill( 0 );
    rect( 120 + playhead * 30, 45, 30, 120 );
    
    // draw buttons
    fill( 0 );
    text( "*** PROCESSING DRUM MACHINE v1.0 ***", 125, 30 );
    text( "Bassdrum", 20, 65 );
    text( "Snare", 20, 95 ); 
    text( "Open Hi-hat", 20, 125 ); 
    text( "Closed Hi-hat", 20, 155 ); 

    for ( int i = 0; i < bd.length; i++ ) {
        bd[i].render();
    }

    for ( int i = 0; i < sn.length; i++ ) {
        sn[i].render();
    }

    for ( int i = 0; i < oh.length; i++ ) {
        oh[i].render();
    }

    for ( int i = 0; i < ch.length; i++ ) {
        ch[i].render();
    }
    
    // play samples
    if ( bd[playhead].isOn ) {
        samples[0].trigger();
    }
    
    if ( sn[playhead].isOn ) {
        samples[1].trigger();
    }

    if ( oh[playhead].isOn ) {
        samples[2].trigger();
    }

    if ( ch[playhead].isOn ) {
        samples[3].trigger();
    }

    // move playhead
    playhead++;
    if ( playhead >= 16 ) {
        playhead = 0;
    }
}

void mousePressed()
{
    for ( int i = 0; i < bd.length; i++ ) {
        bd[i].pressButton( mouseX, mouseY );
    }    

    for ( int i = 0; i < sn.length; i++ ) {
        sn[i].pressButton( mouseX, mouseY );
    }    

    for ( int i = 0; i < oh.length; i++ ) {
        oh[i].pressButton( mouseX, mouseY );
    }    

    for ( int i = 0; i < ch.length; i++ ) {
        ch[i].pressButton( mouseX, mouseY );
    }    

}

void stop()
{
    samples[0].close();
    samples[1].close();
    samples[2].close();
    samples[3].close();

    minim.stop();
  
    super.stop();
}
