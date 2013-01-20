/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */
 
import processing.opengl.*;

PImage texture1;
PImage texture2;

void setup()
{
    size( 640, 480, OPENGL );
    noStroke();
    
    texture1 = loadImage("stones.jpg");
    texture2 = loadImage("lines.jpg");
}

void draw()
{
    background( 255 );
    
    textureMode( IMAGE );
    pushMatrix();
    translate( width/4, height/2, 0 );
    rotateY( radians( frameCount ) );
    beginShape();
    texture( texture1 );
    vertex( -100, -100, 0, 0 );
    vertex(  100, -100, 640, 0 );
    vertex(  100,  100, 640, 640 );
    vertex( -100,  100, 0, 640 );
    endShape( CLOSE );
    popMatrix();

    textureMode( NORMAL );
    pushMatrix();
    translate( width*.75, height/2, 0 );
    rotateY( radians( -frameCount ) );
    beginShape();
    texture( texture2 );
    vertex( -100, -100, 0, 0 );
    vertex(  100, -100, 1, 0 );
    vertex(  100,  100, 1, 1 );
    vertex( -100,  100, 0, 1 );
    endShape( CLOSE );
    popMatrix();
}
