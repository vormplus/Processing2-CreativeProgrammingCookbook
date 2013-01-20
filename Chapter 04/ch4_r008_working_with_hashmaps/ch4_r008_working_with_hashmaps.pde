/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */

HashMap hm;

void setup()
{
    hm = new HashMap();
    hm.put( "Test", 30 );
    hm.put( "Test1", 2.54 );
    hm.put( "Test2", "Hello!" );
    
    noLoop();
}

void draw()
{
    Iterator itr = hm.entrySet().iterator();
    while ( itr.hasNext() ) {
        Map.Entry me = (Map.Entry) itr.next();
        println( me );
    }
    println("---");
    
    println( "Is Empty? " + hm.isEmpty() );
    
    println( "Get 'Test1': " + hm.get("Test1") );
    
    println( "Number of Elements (before remove): " + hm.size() );
    println( "Removed: " + hm.remove("Test2") );
    println( "Number of Elements (after remove): " +hm.size() );
    
    println( "Contains key 'Test2': " + hm.containsKey("Test2") );
}
