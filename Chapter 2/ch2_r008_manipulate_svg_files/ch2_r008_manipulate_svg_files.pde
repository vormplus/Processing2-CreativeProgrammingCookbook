/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */
 
PShape snowFlake;
PShape small1;
PShape small2;
PShape small3;
PShape small4;
PShape small5;
PShape small6;
PShape big1;

void setup()
{
    size( 640, 480 );
    smooth();

    snowFlake = loadShape("snowflake.svg");

    small1 = snowFlake.getChild("small1");
    small2 = snowFlake.getChild("small2");
    small3 = snowFlake.getChild("small3");
    small4 = snowFlake.getChild("small4");
    small5 = snowFlake.getChild("small5");
    small6 = snowFlake.getChild("small6");
    big1 = snowFlake.getChild("big1");

    shapeMode( CENTER );
}

void draw()
{
    background( 255 );

    // regular snowflake
    shape( snowFlake, 160, 120 );

    // distorted snowflake
    shape( snowFlake, 480, 120, 160, 80 );

    // orange snowflake
    snowFlake.disableStyle();
    fill( 255, 128, 0 );
    stroke( 255 );
    strokeWeight( 2 );
    shape( snowFlake, 160, 360 );
    snowFlake.enableStyle();

    // draw separate parts (colorful star)
    strokeWeight( 1 );
    stroke( 0 );
    small1.disableStyle();
    fill( 151, 183, 189 );
    shape( small1, 480, 360 );
    small1.enableStyle();

    small2.disableStyle();
    fill( 216, 234, 237 );
    shape( small2, 480, 360 );
    small2.enableStyle();

    small3.disableStyle();
    fill( 151, 183, 189 );
    shape( small3, 480, 360 );
    small3.enableStyle();

    small4.disableStyle();
    fill( 216, 234, 237 );
    shape( small4, 480, 360 );
    small4.enableStyle();

    small5.disableStyle();
    fill( 151, 183, 189 );
    shape( small5, 480, 360 );
    small5.enableStyle();

    small6.disableStyle();
    fill( 108, 223, 234 );
    shape( small6, 480, 360 );
    small6.enableStyle();

    strokeWeight( 2 );
    big1.disableStyle();
    fill( 251, 0, 95 );
    stroke( 255 );
    shape( big1, 480, 360 );    
    big1.enableStyle();
}

