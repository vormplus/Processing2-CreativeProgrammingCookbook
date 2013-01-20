/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */
 
import android.content.Context;
import android.location.*;
import android.os.Bundle;

LocationManager manager;
GPSLocationListener gps;

float latitude;
float longitude;
float accuracy;
String provider;

PFont junction;

void setup()
{
    orientation( PORTRAIT );
    
    latitude = 0;
    longitude = 0;
    accuracy = 0;
    provider = "";

    junction = createFont( "Junction.otf", 32 );
    textFont( junction, 32 );
    
}

void draw()
{
    background( 5, 10, 85 );
    fill( 250, 255, 13 );
    noStroke();
    
    translate( width/2, height/2 );
    
    String msg = "Latitude: " + latitude + "\n";
    msg += "Longitude: " + longitude + "\n";
    msg += "Accuracy: " + accuracy + "\n";
    msg += "Provider: " + provider;
    
    textAlign( CENTER, CENTER );
    
    text( msg, 0, 0 );
}

void onResume()
{
    super.onResume();
    
    gps = new GPSLocationListener();
    manager = (LocationManager) getSystemService( Context.LOCATION_SERVICE );
    
    manager.requestLocationUpdates( LocationManager.NETWORK_PROVIDER, 0, 0, gps );
}

void onPause()
{
    super.onPause();
}
