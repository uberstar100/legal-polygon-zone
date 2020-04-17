package 
{

    public class IState extends Object
    {
        public static const IDLE:uint = 0;
        public static const HOLD:uint = 1;
        public static const TOSS:uint = 2;
        public static const DEAD:uint = 3;
        private static var statesArr:Array = [];

        public function IState()
        {
            return;
        }// end function

        public static function toString(param1:uint) : String
        {
            return param1 >= 0 && param1 < statesArr.length ? (statesArr[param1]) : ("null");
        }// end function

        statesArr.push("IDLE");
        statesArr.push("HOLD");
        statesArr.push("TOSS");
        statesArr.push("DEAD");
    }
}
