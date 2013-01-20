/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */

import processing.opengl.*;

int lightMode;
int lightDirection;

void setup()
{
    size( 640, 480, OPENGL );
    smooth();
    
    lightMode = 0;
    lightDirection = 0;
}

void draw()
{
    background( 0 );
    
    if ( lightMode == 0 ) {
        noLights();
    } else if ( lightMode == 1 ) {
        lights();
    } else if ( lightMode == 2 ) {
        if ( lightDirection == 0 ) {
            directionalLight( 255, 128, 0, 0, -1, 0 ); // UP
        } else if ( lightDirection == 1 ) {
             directionalLight( 0, 255, 0, 1, 0, 0 ); // RIGHT
        } else if ( lightDirection == 2 ) {
             directionalLight( 255, 0, 255, 0, 1, 0 ); // DOWN
        } else if ( lightDirection == 3 ) {
             directionalLight( 0, 255, 255, -1, 0, 0 ); // LEFT
        }
    } else if ( lightMode == 3 ) {
        ambientLight( 0, 255, 255 );
    } else if ( lightMode == 4 ) {
        pointLight( 255, 255, 0, 100, height*0.3, 100 );
    } else if ( lightMode == 5 ) {
        spotLight( 128, 0, 0, 500, 20, 100, -.25, .25, -1, radians( 90 ), 200 );
    }

    pushMatrix();
    translate( width/2, height/2, 0 );
    
    pushMatrix();
    rotateY( radians( frameCount ) );
    fill( 255 );
    noStroke();
    sphere( 100 );
    popMatrix();
    
    pushMatrix();
    rotateZ( radians( frameCount ) );
    rotateX( radians( frameCount/2 ) );
    fill( 255 );
    noStroke();
    box( 150 );
    popMatrix();
    
    popMatrix();
}

void keyPressed()
{
    // Use the noLights() function
    if ( key == 'n' ) {
        lightMode = 0;
    }

    // Use the lights() function
    if ( key == 'l' ) {
        lightMode = 1;
    }

    // Use the directionalLight() function
    if ( key == 'd' ) {
        lightMode = 2;
    }
    
    // Use the ambientLight() function
    if ( key == 'a' ) {
        lightMode = 3;
    }

    // USe the pointLight() function
    if ( key == 'p' ) {
        lightMode = 4;
    }

    // the spotLight() function is used
    if ( key == 's' ) {
        lightMode = 5;
    }

    if ( key == CODED ) {
        if ( keyCode == UP ) {
            lightDirection = 0;
        }
        if ( keyCode == RIGHT ) {
            lightDirection = 1;
        }
        if ( keyCode == DOWN ) {
            lightDirection = 2;
        }
        if ( keyCode == LEFT ) {
            lightDirection = 3;
        }
    }
}
