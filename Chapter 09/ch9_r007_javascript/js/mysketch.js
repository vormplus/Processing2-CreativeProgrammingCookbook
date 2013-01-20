window.onload = function() {
	function mySketch( processing )
	{
		processing.setup = function()
		{
			processing.size( 640, 480 );
			processing.background( 255, 225, 4 );
		}

		processing.draw = function()
		{
			processing.stroke( 0 );
			processing.fill( 0, 64 );
			processing.ellipse( processing.random( processing.width ), processing.random( processing.height ), 20, 20 );
		}
	}

	var canvas = document.getElementById("mycanvas");
	var processingInstance = new Processing( canvas, mySketch );
}