/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */

int   number1 = 65;
float number2 = 7.537;

void setup()
{
    noLoop();
}

void draw()
{
    // convert int to float
    println( float( number1 ) );
    
    // convert float to int
    println( int( number2 ) );

    // convert a number to a binary string
    println( binary( number1 ) );
    
    // convert a binary string to a number
    println( unbinary( "0010110011100110" ) );
    
    // convert numbers or a string to a boolean
    println( boolean( 1 ) );
    println( boolean( number1 ) );
    println( boolean( 0 ) );
    println( boolean("true") );
    
    // convert char to byte
    println( byte( 'A' ) );
    
    // convert byte to char
    println( char( number1 ) );
    
    // convert number and color to hex string
    println( hex( number1 ) );
    println( hex( color( 255, 0, 255 ) ) );
    
    // convert hex string to number
    println( unhex( "FF00CC" ) );
    
    // convert number to string
    println( str( -number2 ) );    
}
