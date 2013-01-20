/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */

String word = "Hello";
String[] textArray;
String wordList = "String,theory,is,confusing";

void setup()
{
    textArray = new String[3];
    textArray[0] = "Man";
    textArray[1] = "Bear";
    textArray[2] = "Pig";
    
    noLoop();
}

void draw()
{
    println( "Word: charAt(1): " + word.charAt(1) );
    println( "Word: length(): " + word.length() );
    println( "Word: substring( 2, 4 ): " + word.substring( 2, 4 ) );
    println( "Word: toLowerCase(): " + word.toLowerCase() );
    println( "Word: toUpperCase(): " + word.toUpperCase() );
    println( "Word: indexOf(\"l\"): " + word.indexOf("l") );
    
    if ( word.equals("Hi") ) {
        println("Hi there!");
    } else {
        println("The word is not Hi");
    }
    
    println("---");
    
    String joined = join( textArray, "" );
    println( joined );
    
    println("---");
    
    String[] words = split( wordList, "," );
    println( words );
    
    println("---");
    println( trim("   I was a sentence with too much whitespace.      ") );
}
