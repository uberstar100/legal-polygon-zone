package 
{
    import SSF2BaseAPIObject.*;

    public class SSF2CustomMode extends SSF2BaseAPIObject
    {

        public function SSF2CustomMode(param1) : void
        {
            super(param1);
            return;
        }// end function

        override public function getType() : String
        {
            return "SSF2CustomMode";
        }// end function

        final public function getInitialGameSettings()
        {
            return _api.getInitialGameSettings();
        }// end function

        public function getModeSettings() : Object
        {
            return _api.getModeSettings();
        }// end function

        public function getStageClass() : Class
        {
            return null;
        }// end function

        public function getStageMC() : Class
        {
            return null;
        }// end function

        public function handleMatchComplete() : void
        {
            return;
        }// end function

        public function getSummary() : String
        {
            return _api.getSummary();
        }// end function

        final public function startMatch(param1) : void
        {
            _api.startMatch(param1);
            return;
        }// end function

        final public function saveModeData(param1:Object) : Boolean
        {
            return _api.saveModeData(param1);
        }// end function

        final public function endMode(param1:Object) : void
        {
            _api.endMode(param1);
            return;
        }// end function

    }
}
