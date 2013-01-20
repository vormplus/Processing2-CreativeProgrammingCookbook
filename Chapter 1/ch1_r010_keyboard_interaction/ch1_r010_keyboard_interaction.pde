/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */
 
int x;
int y;
int r;
color c;
boolean drawStroke;

void setup()
{
    size( 480, 320 );
    smooth();
    strokeWeight( 2 );
    
    x = width/2;
    y = height/2;
    r = 80;
    c = color( 255, 0, 0 );
    drawStroke = true;
}

void draw()
{
    background( 255 );
    
    if ( drawStroke == true ) {
        stroke( 0 );
    } else {
        noStroke();
    }

    fill( c );
    ellipse( x, y, r*2, r*2 );
}

void keyPressed()
{
    if ( key == CODED ) {
        if ( keyCode == RIGHT ) {
            x += 10;
        } else if ( keyCode == LEFT ) {
            x -= 10;
        } else if ( keyCode == UP ) {
            y -= 10;
        } else if ( keyCode == DOWN ) {
            y += 10;
        }
    }
    
    x = constrain( x, r, width-r );
    y = constrain( y, r, height-r );
    
}

void keyReleased()
{
    switch ( key ) {
        case 'r':
            c = color( 255, 0, 0 );
            break;
        case 'g':
            c = color( 0, 255, 0 );
            break;
        case 'b':
            c = color( 0, 0, 255 );
            break;
        case 'c':
            c = color( 0, 255, 255 );
            break;
        case 'm':
            c = color( 255, 0, 255 );
            break;
        case 'y':
            c = color( 255, 255, 0 );
            break;
        default:
            break;
    }
}

void keyTyped()
{
    if ( key == 's' ) {
        drawStroke = !drawStroke;
    }
}
