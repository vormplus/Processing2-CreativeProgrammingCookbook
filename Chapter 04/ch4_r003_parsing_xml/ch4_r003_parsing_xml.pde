/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */

XML xml;

void setup()
{
    xml = loadXML( "processing-websites.xml" );
    noLoop();
}

void draw()
{
    XML[] kids = xml.getChildren("website");
    
    for ( int i = 0; i < kids.length; i++ ) {
        int id = kids[i].getInt("id");
        String url = kids[i].getString("url");
        String txt = kids[i].getContent();
        println( i + ": " + id + " " + url + " " + txt );
    }
}
