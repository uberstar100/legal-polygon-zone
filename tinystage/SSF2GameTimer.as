package 
{
    import SSF2BaseAPIObject.*;
    import flash.display.*;

    public class SSF2GameTimer extends SSF2BaseAPIObject
    {

        public function SSF2GameTimer(param1) : void
        {
            super(param1);
            return;
        }// end function

        override public function getType() : String
        {
            return "SSF2GameTimer";
        }// end function

        public function getCurrentTime() : int
        {
            return _api.getCurrentTime();
        }// end function

        public function setCurrentTime(param1:int) : void
        {
            _api.setCurrentTime(param1);
            return;
        }// end function

        public function start() : void
        {
            _api.start();
            return;
        }// end function

        public function restart() : void
        {
            _api.restart();
            return;
        }// end function

        public function stop() : void
        {
            _api.stop();
            return;
        }// end function

        public function getMC() : MovieClip
        {
            return _api.getMC();
        }// end function

        public function setEndGameOptions(param1:Object) : void
        {
            _api.setEndGameOptions(param1);
            return;
        }// end function

    }
}
