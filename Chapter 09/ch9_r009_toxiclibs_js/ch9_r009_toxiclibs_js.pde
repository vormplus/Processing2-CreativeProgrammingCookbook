/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */
 
var Vec2D = toxi.geom.Vec2D,
	ToxiclibsSupport = toxi.processing.ToxiclibsSupport,
	Polygon2D = toxi.geom.Polygon2D;

import toxi.geom.*;
import toxi.processing.*;

ToxiclibsSupport gfx;
Polygon2D[] polygons;

void setup() {
	size( 640, 480 );
	smooth();
	noStroke();

	polygons = new Polygon2D[4];
	for ( int j = 0; j < 4; j++ ) {
		int randomNum = floor( random( 3, 8 ) );
		float angle = TWO_PI / randomNum;
		
		Vec2D[] vertices = new Vec2D[randomNum];
		for ( int i = 0; i < randomNum; i++ ) {
			float x = 100 + (j*150) + cos( i * angle ) * 60;
			float y = height/2 + sin( i * angle ) * 60;
			vertices[i] = new Vec2D( x, y );
		}

		polygons[j] = new Polygon2D( vertices );
	}

	gfx = new ToxiclibsSupport( this );
}

void draw() {
	background( 255, 225, 3 );
		
	for ( int i = 0; i < 4; i++ ) {
		Vec2D m = new Vec2D( mouseX, mouseY );
	
		if ( polygons[i].containsPoint( m ) ) {
			fill( 255, 64, 0 );
		} else {
			fill( 0 );
		}
		gfx.polygon2D( polygons[i] );
	}
}
