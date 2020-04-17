package 
{
    import SSF2BaseAPIObject.*;
    import flash.display.*;
    import flash.geom.*;

    public class SSF2CollisionBoundary extends SSF2BaseAPIObject
    {

        public function SSF2CollisionBoundary(param1) : void
        {
            super(param1);
            return;
        }// end function

        override public function getType() : String
        {
            return "SSF2CollisionBoundary";
        }// end function

        public function getOwnStats() : Object
        {
            return {};
        }// end function

        public function getMC() : MovieClip
        {
            return _api.getMC();
        }// end function

        public function destroy() : void
        {
            _api.destroy();
            return;
        }// end function

        public function getX() : Number
        {
            return _api.getX();
        }// end function

        public function setX(param1:Number) : void
        {
            _api.setX(param1);
            return;
        }// end function

        public function getY() : Number
        {
            return _api.getY();
        }// end function

        public function setY(param1:Number) : void
        {
            _api.setY(param1);
            return;
        }// end function

        public function hitTestPoint(param1:Number, param2:Number, param3:Boolean = true) : Boolean
        {
            return _api.hitTestPoint(param1, param2, param3);
        }// end function

        public function hitTestRect(param1:Rectangle, param2:Boolean = true) : Boolean
        {
            return _api.hitTestRect(param1, param2);
        }// end function

    }
}
