package 
{

    public class TState extends Object
    {
        public static const IDLE:uint = 0;
        public static const BROKEN:uint = 1;
        public static const DEAD:uint = 2;
        private static var statesArr:Array = [];

        public function TState()
        {
            return;
        }// end function

        public static function toString(param1:uint) : String
        {
            return param1 >= 0 && param1 < statesArr.length ? (statesArr[param1]) : ("null");
        }// end function

        statesArr.push("IDLE");
        statesArr.push("BROKEN");
        statesArr.push("DEAD");
    }
}
