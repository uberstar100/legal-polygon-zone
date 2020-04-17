package 
{
    import SSF2BaseAPIObject.*;
    import flash.display.*;

    public class SSF2CustomMenu extends SSF2BaseAPIObject
    {

        public function SSF2CustomMenu(param1) : void
        {
            super(param1);
            return;
        }// end function

        override public function getType() : String
        {
            return "SSF2CustomMenu";
        }// end function

        public function getMC() : MovieClip
        {
            return _api.getMC();
        }// end function

        public function show() : void
        {
            _api.show();
            return;
        }// end function

        public function remove() : void
        {
            _api.remove();
            return;
        }// end function

        public function setCustomInputMapping(param1:Object) : void
        {
            _api.setCustomInputMapping(param1);
            return;
        }// end function

    }
}
