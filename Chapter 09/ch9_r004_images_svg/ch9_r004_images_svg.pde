/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */
 
/* @pjs preload="osaka-fluo.jpg"; */

PImage img;
PShape shapes;

void setup()
{
    size( 640, 480 );
    
    img = loadImage("osaka-fluo.jpg");
    
    shapes = loadShape("shapes.svg");
    
    shapeMode( CENTER );
}

void draw()
{
    background( 255 );
    
    image( img, 0, 0 );
    
    translate( width/2, height/2 );
    shape( shapes, 0, 0 );
}
