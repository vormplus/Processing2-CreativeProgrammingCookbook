/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */

int[] numbers = new int[1000];

void setup()
{
    for ( int i = 0; i < numbers.length; i++ ) {
        if ( random( 100 ) < 50 ) {
            // uppercase A - Z
            numbers[i] = floor( random( 65, 91 ) );
        } else {
            // lowercase a - z
            numbers[i] = floor( random( 97, 123 ) );    
        }
    }
}

void draw()
{
    if ( keyPressed ) {
        byte[] bytes = byte( numbers );
        saveBytes( "strangefile-"+frameCount+".zzz", bytes );
        exit();
    }
}

