class Button
{
    float x;
    float y;
    float w;
    float h;
    
    boolean isOn;
    
    Button( float _x, float _y )
    {
        x = _x;
        y = _y;
        w = 20;
        h = 20;
        
        isOn = false;
    }

    void render()
    {
        if ( isOn == true ) {
            fill( 255, 0, 0 );
        } else {
            fill( 255 );
        }
        rect( x, y, w, h );    
    }
    
    void pressButton( int _x, int _y )
    {
        if ( _x > x && _x < x + w && _y > y && _y < y + h ) {
            isOn = !isOn;
        }
    }

}
