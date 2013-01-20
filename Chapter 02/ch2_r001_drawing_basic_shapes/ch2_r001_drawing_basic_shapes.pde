/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */
 
void setup()
{
    size( 640, 480 );
    smooth();
}

void draw()
{
    background( 255 );
    
    drawGrid();

    stroke( 0 );

    // rectangles (yellow)
    fill( 255, 255, 0 );
    rect( 20, 20, 120, 120 );
    rect( 180, 20, 120, 120, 20 );
    rect( 340, 20, 120, 120, 20, 10, 40, 80 );
    rect( 500, 40, 120, 80 );

    // ellipses (red)
    fill( 255, 0, 0 );
    ellipse( 80, 240, 120, 120 );
    ellipse( 240, 240, 120, 80 );
    ellipse( 400, 240, 80, 120 );

    // triangles (blue)
    fill( 0, 0, 255 );
    triangle( 560, 180, 620, 300, 500, 300 );
    triangle( 40, 340, 140, 460, 20, 420 );

    // quads (cyan)
    fill( 0, 255, 255 );
    quad( 180, 340, 300, 340, 300, 380, 180, 460 );
    quad( 400, 340, 440, 400, 400, 460, 360, 400 );
    quad( 500, 340, 620, 400, 500, 460, 560, 400 );
    
}

void drawGrid()
{
    stroke( 225 );
    for ( int i = 0; i < 64; i++ ) {
        line( i*10, 0, i*10, height );
    }

    for ( int i = 0; i < 48; i++ ) {
        line( 0, i*10, width, i*10 );
    }

}
