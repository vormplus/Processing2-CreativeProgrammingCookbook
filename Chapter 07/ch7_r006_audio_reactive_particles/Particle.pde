class Particle
{
    PVector loc;
    PVector vel;

    float radius;
    float h;
    float s;
    float b;
    
    Particle( int id )
    {
        loc = new PVector( map( id, 0, fft.specSize(), 0, width ), height/2 );
        vel = new PVector( random( -1, 1 ), random( -1, 1 ) );
        
        h = map( id, 0, fft.specSize(), 0, 360 );
        s = 100;
        b = 100;
    }
    
    void update( float _r, float _b )
    {
        loc.add( vel );
        
        if ( loc.x < 0 || loc.x > width ) {
            vel.x *= -1;
        }
        
        if ( loc.y < 0 || loc.y > height ) {
            vel.y *= -1;
        }
        
        radius = _r;
        radius = constrain( radius, 2, 100 );
        
        b = map( _b, -1, 1, 0, 100 );
    }
    
    void render()
    {
        stroke( h, s, b, 50 );
        fill( h, s, b, 20 );
        ellipse( loc.x, loc.y, radius*2, radius*2 );
    }
}
