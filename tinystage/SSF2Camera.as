package 
{
    import SSF2BaseAPIObject.*;
    import flash.display.*;
    import flash.geom.*;

    public class SSF2Camera extends SSF2BaseAPIObject
    {

        public function SSF2Camera(param1) : void
        {
            super(param1);
            return;
        }// end function

        override public function getType() : String
        {
            return "SSF2Camera";
        }// end function

        public function getCameraParameter(param1:String)
        {
            return _api.getCameraParameter(param1);
        }// end function

        public function updateCameraParameters(param1:Object) : void
        {
            _api.updateCameraParameters(param1);
            return;
        }// end function

        public function addTarget(param1:MovieClip) : void
        {
            _api.addTarget(param1);
            return;
        }// end function

        public function deleteTarget(param1:MovieClip) : void
        {
            _api.deleteTarget(param1);
            return;
        }// end function

        public function getTopLeftPoint() : Point
        {
            return _api.getTopLeftPoint();
        }// end function

        public function getMC() : MovieClip
        {
            return _api.getMC();
        }// end function

        public function darken() : void
        {
            _api.darken();
            return;
        }// end function

        public function killDarkener(param1:Boolean = false) : void
        {
            _api.killDarkener(param1);
            return;
        }// end function

        public function addTimedTarget(param1:MovieClip, param2:int) : void
        {
            _api.addTimedCameraTarget(param1, param2);
            return;
        }// end function

        public function deleteTimedCameraTarget(param1:MovieClip) : void
        {
            _api.deleteTimedCameraTarget(param1);
            return;
        }// end function

        public function addTimedTargetPoint(param1:Point, param2:int) : void
        {
            _api.addTimedTargetPoint(param1, param2);
            return;
        }// end function

        public function deleteTimedTargetPoint(param1:Point) : void
        {
            _api.deleteTimedTargetPoint(param1);
            return;
        }// end function

        public function addForcedTarget(param1:MovieClip) : void
        {
            _api.addForcedTarget(param1);
            return;
        }// end function

        public function deleteForcedTarget(param1:MovieClip) : void
        {
            _api.deleteForcedTarget(param1);
            return;
        }// end function

        public function lightFlash(param1:Boolean = true) : void
        {
            _api.lightFlash(param1);
            return;
        }// end function

        public function setStageFocus(param1:int) : void
        {
            _api.setStageFocus(param1);
            return;
        }// end function

        public function removeStageFocus() : void
        {
            _api.removeStageFocus();
            return;
        }// end function

        public function shake(param1:int) : void
        {
            _api.shake(param1);
            return;
        }// end function

    }
}
