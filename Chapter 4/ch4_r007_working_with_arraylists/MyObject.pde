class MyObject
{
    float x;
    float y;
    
    MyObject()
    {
        x = random( width );
        y = random( height );
    }
    
    void update()
    {
        y--;
    }
    
    void render()
    {
        ellipse( x, y, 60, 60 );
    }
}
