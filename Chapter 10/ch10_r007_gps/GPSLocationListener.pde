class GPSLocationListener implements LocationListener
{
    void onLocationChanged( Location _loc )
    {
        latitude = (float) _loc.getLatitude();
        longitude = (float) _loc.getLongitude();
        accuracy = (float) _loc.getAccuracy();
        provider = _loc.getProvider();
    }
    
    void onProviderDisabled( String _provider )
    {
        provider = "";
    }
    
    void onProviderEnabled( String _provider )
    {
        provider = _provider;
    }
    
    void onStatusChanged( String _provider, int status, Bundle extras )
    {
    }
}
