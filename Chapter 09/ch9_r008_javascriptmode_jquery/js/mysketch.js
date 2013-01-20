$(document).ready( function() {

	$( "#red, #green, #blue" ).slider({
		orientation: "horizontal",
		range: "min",
		max: 255,
		value: 0,
		slide: updateBackground,
		change: updateBackground
	});

	$( "#radius" ).slider({
		orientation: "horizontal",
		range: "min",
		min: 40,
		max: 160,
		value: 80,
		slide: updateRadius,
		change: updateRadius
	});

	var red = 0, green = 0, blue = 0;
	var radius = 80;

	function updateBackground()
	{
		red = $("#red").slider( "value" );
		green = $("#green").slider( "value" );
		blue = $("#blue").slider( "value" );
	}

	function updateRadius()
	{
		radius = $("#radius").slider( "value" );
	}

	function mySketch( processing )
	{
		var x;
		var y;
		var velX = 1;
		var velY = 1;
		
		processing.setup = function()
		{
			processing.size( 640, 480 );
			processing.background( red, green, blue );
			processing.noStroke();
			processing.fill( 255 );
			
			x = processing.width/2;
			y = processing.random( processing.height );
		}

		processing.draw = function()
		{
			x += velX;
			if ( x < radius || x > processing.width - radius) {
				velX *= -1;
			}
			
			y += velY;
			if ( y < radius || y > processing.height - radius ) {
				velY *= -1;
			}
		
			processing.background( red, green, blue );
			processing.ellipse( x, y, radius * 2, radius * 2 );
		}
	}

	var canvas = $("#mycanvas")[0];
	var processingInstance = new Processing( canvas, mySketch );
});