/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */

float[] array1 = { 1.0, 4.7, 3.08 };
float[] array2 = { 72.86, 48.32 };

void setup()
{
    noLoop();
}

void draw()
{
    println( "New Array: Array 1 + new float" );
    println( "------------------------------");
    float[] newArray = append( array1, 127.75 );
    println( newArray );
    println();
    
    println( "Copied Array 2 to New Array" );
    println( "------------------------------");
    arrayCopy( array2, 0, newArray, 2, 2 );
    println( newArray );
    println();
    
    println( "Add array2 to end of array1" );
    println( "------------------------------");
    float[] superArray = concat( array1, array2 );
    println( superArray );
    println();
    
    println( "Increase the size of an array" );
    println( "------------------------------");
    println( "Length before expanding: " + superArray.length );
    superArray = expand( superArray );
    // double length of array
    println( "Length after expanding: " + superArray.length);
    // expand array to length of 256
    superArray = expand( superArray, 256 );
    println( "Length after expanding: " + superArray.length );
    println();
    
    println( "Extract elements from an array" );
    println( "------------------------------");
    float[] shortArray = subset( superArray, 1, 4 );
    println( shortArray );
    println();
    
    println( "Reverse the order of the array" );
    println( "------------------------------");
    float[] reversed = reverse( shortArray );
    println( reversed );
    println();

    println( "Sort the values of the array" );
    println( "------------------------------");
    float[] sorted = sort( shortArray );
    println( sorted );
}
