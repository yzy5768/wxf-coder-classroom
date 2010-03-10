package
{
    import flash.display.DisplayObject;
    
    import org.openscales.core.style.marker.Marker;

    public class myMarker extends Marker
    {
        [Embed(source="assets/DP.png")]
        public var imgClass:Class;

        public function myMarker(size:Number=6, opacity:Number=1, rotation:Number=0)
        {
            super(size, opacity, rotation);
        }

        override protected function generateGraphic():DisplayObject
        {
            var result:DisplayObject=(new imgClass() as DisplayObject);
            result.x = 0;
            result.y = 0;
             
            return result;
        }

    }
}