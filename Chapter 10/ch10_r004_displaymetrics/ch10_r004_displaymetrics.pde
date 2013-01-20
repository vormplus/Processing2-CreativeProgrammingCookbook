/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */
 
import android.util.DisplayMetrics;

String density;
String dpi;
String w;
String h;

PFont junction;

void setup()
{
    size( displayWidth, displayHeight );
    smooth();
    
    DisplayMetrics metrics = new DisplayMetrics();
    getWindowManager().getDefaultDisplay().getMetrics( metrics );
    
    density = "Density: " + metrics.density;
    dpi = "DPI: " + metrics.densityDpi;
    w = "Width: " + width;
    h = "height: " + height;
    
    junction = createFont( "Junction.otf", 32 );
    
    textFont( junction, 32 );
    
    println( PFont.list() );
}

void draw()
{
    background( 255, 225, 23 );
    fill( 0 );
    
    textAlign( CENTER );
    
    text( density, width/2, 300 );
    text( dpi, width/2, 360 );
    text( w, width/2, 420 );
    text( h, width/2, 480 );
}
