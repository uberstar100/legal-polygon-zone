package 
{
    import SSF2BaseAPIObject.*;
    import flash.display.*;
    import flash.geom.*;

    public class SSF2Stage extends SSF2BaseAPIObject
    {

        public function SSF2Stage(param1) : void
        {
            super(param1);
            return;
        }// end function

        override public function getType() : String
        {
            return "SSF2Stage";
        }// end function

        public function getForeground() : MovieClip
        {
            return _api.getForeground();
        }// end function

        public function getMidground() : MovieClip
        {
            return _api.getMidground();
        }// end function

        public function getBackground() : MovieClip
        {
            return _api.getBackground();
        }// end function

        public function getCameraBackgrounds() : Array
        {
            return _api.getCameraBackgrounds();
        }// end function

        public function getWeatherMC() : MovieClip
        {
            return _api.getWeatherMC();
        }// end function

        public function getWeatherMaskMC() : MovieClip
        {
            return _api.getWeatherMaskMC();
        }// end function

        public function getShadowMC() : MovieClip
        {
            return _api.getShadowMC();
        }// end function

        public function getShadowMaskMC() : MovieClip
        {
            return _api.getShadowMaskMC();
        }// end function

        public function getHUDBackgroundMC() : MovieClip
        {
            return _api.getHUDBackgroundMC();
        }// end function

        public function getHUDForegroundMC() : MovieClip
        {
            return _api.getHUDForegroundMC();
        }// end function

        public function enableCeilingDeath(param1:Boolean = true) : void
        {
            _api.enableCeilingDeath(param1);
            return;
        }// end function

        public function enableFallDeath(param1:Boolean = true) : void
        {
            _api.enableFallDeath(param1);
            return;
        }// end function

        public function isCeilingDeathEnabled() : Boolean
        {
            return _api.isCeilingDeathEnabled();
        }// end function

        public function isFallDeathEnabled() : Boolean
        {
            return _api.isFallDeathEnabled();
        }// end function

        public function createTimer(param1:int, param2:int, param3:Function, param4:Object = null) : void
        {
            _api.createTimer(param1, param2, param3, param4);
            return;
        }// end function

        public function destroyTimer(param1:Function) : void
        {
            _api.destroyTimer(param1);
            return;
        }// end function

        public function toLocalPoint(param1:DisplayObject) : Point
        {
            return _api.toLocalPoint(param1);
        }// end function

        public function getStartingPositionMCs() : Array
        {
            return _api.getStartingPositionMCs();
        }// end function

        public function getSpawnPositionMCs() : Array
        {
            return _api.getSpawnPositionMCs();
        }// end function

        public function getLightSourceMC() : MovieClip
        {
            return _api.getLightSourceMC();
        }// end function

        public function getLedges() : Array
        {
            return _api.getLedges();
        }// end function

        public function getCameraBounds() : MovieClip
        {
            return _api.getCameraBounds();
        }// end function

        public function getDeathBounds() : MovieClip
        {
            return _api.getDeathBounds();
        }// end function

        public function getSmashBallBounds() : MovieClip
        {
            return _api.getSmashBallBounds();
        }// end function

        public function getItemSpawnBoundsList() : Array
        {
            return _api.getItemSpawnBoundsList();
        }// end function

    }
}
