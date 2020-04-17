package 
{
    import SSF2BaseAPIObject.*;

    dynamic public class SSF2BaseAPIObject extends Object
    {
        public var $ext:Object;
        protected var _api:Object;

        public function SSF2BaseAPIObject(param1) : void
        {
            api = param1;
            _api = api;
            $ext = {getAPI:function ()
            {
                return _api;
            }// end function
            };
            return;
        }// end function

        public function getType() : String
        {
            return "SSF2BaseAPIObject";
        }// end function

        public function get metadata() : Object
        {
            return isDisposed() ? (null) : (_api.metadata);
        }// end function

        public function initialize() : void
        {
            return;
        }// end function

        public function update() : void
        {
            return;
        }// end function

        public function isDisposed() : Boolean
        {
            return _api ? (false) : (true);
        }// end function

        public function dispose() : void
        {
            return;
        }// end function

        public function __dispose() : void
        {
            _api = null;
            $ext = null;
            return;
        }// end function

        public function isEqual(param1) : Boolean
        {
            return !param1 ? (false) : (param1 && _api === param1.$ext.getAPI());
        }// end function

    }
}
