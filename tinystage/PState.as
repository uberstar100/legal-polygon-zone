package 
{

    public class PState extends Object
    {
        public static const IDLE:uint = 0;
        public static const DEAD:uint = 1;
        private static var statesArr:Array = [];

        public function PState()
        {
            return;
        }// end function

        public static function toString(param1:uint) : String
        {
            return param1 >= 0 && param1 < statesArr.length ? (statesArr[param1]) : ("null");
        }// end function

        statesArr.push("IDLE");
        statesArr.push("DEAD");
    }
}
