/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */

ArrayList<MyObject> myList;

void setup()
{
    size( 640, 480 );
    smooth();
    
    myList = new ArrayList<MyObject>();
    for ( int i = 0; i < 4; i++ ) {
        myList.add( new MyObject() );
    }
}

void draw()
{
    background( 255 );
    
    fill( 255, 128 );
    stroke( 0 );
    
    for ( int i = myList.size() - 1; i >= 0; i-- ) {
        MyObject o = (MyObject)myList.get( i );
        o.update();
        o.render();
        if ( o.y <= 0 ) {
            myList.remove( i );
        }
    }
}

void mousePressed()
{
    myList.add( new MyObject() );
    println( "Total elements in List: " + myList.size() );
}
