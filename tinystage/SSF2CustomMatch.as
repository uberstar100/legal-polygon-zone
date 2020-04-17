package 
{
    import SSF2BaseAPIObject.*;

    public class SSF2CustomMatch extends SSF2BaseAPIObject
    {
        public var matchData:Object;

        public function SSF2CustomMatch(param1) : void
        {
            super(param1);
            matchData = {};
            return;
        }// end function

        override public function getType() : String
        {
            return "SSF2CustomMatch";
        }// end function

        public function getGameSettings() : Object
        {
            return _api.getGameSettings();
        }// end function

        public function matchSetup(param1:Object) : Object
        {
            return param1;
        }// end function

    }
}
