package 
{

    public class ControlBits extends Object
    {
        public var bits:int;
        public static const TAP_JUMP:int = 1;
        public static const SHIELD:int = 2;
        public static const TAUNT:int = 4;
        public static const START:int = 8;
        public static const GRAB:int = 16;
        public static const BUTTON2:int = 32;
        public static const BUTTON1:int = 64;
        public static const JUMP:int = 128;
        public static const RIGHT:int = 256;
        public static const LEFT:int = 512;
        public static const DOWN:int = 1024;
        public static const UP:int = 2048;
        public static const DT_DASH:int = 4096;
        public static const AUTO_DASH:int = 8192;
        public static const DASH:int = 16384;
        public static const C_RIGHT:int = 32768;
        public static const C_LEFT:int = 65536;
        public static const C_DOWN:int = 131072;
        public static const C_UP:int = 262144;
        public static const JUMP2:int = 524288;
        public static const SHIELD2:int = 1048576;
        public static const JUMP3:int = 2097152;

        public function ControlBits(param1:int = 0)
        {
            this.bits = param1;
            return;
        }// end function

        public function get TAP_JUMP() : Boolean
        {
            return bits & 1 ? (true) : (false);
        }// end function

        public function set TAP_JUMP(param1:Boolean) : void
        {
            bits = param1 ? (bits | 1) : (bits & ~1);
            return;
        }// end function

        public function get SHIELD() : Boolean
        {
            return bits & 2 ? (true) : (false);
        }// end function

        public function set SHIELD(param1:Boolean) : void
        {
            bits = param1 ? (bits | 2) : (bits & ~2);
            return;
        }// end function

        public function get TAUNT() : Boolean
        {
            return bits & 4 ? (true) : (false);
        }// end function

        public function set TAUNT(param1:Boolean) : void
        {
            bits = param1 ? (bits | 4) : (bits & ~4);
            return;
        }// end function

        public function get START() : Boolean
        {
            return bits & 8 ? (true) : (false);
        }// end function

        public function set START(param1:Boolean) : void
        {
            bits = param1 ? (bits | 8) : (bits & ~8);
            return;
        }// end function

        public function get GRAB() : Boolean
        {
            return bits & 16 ? (true) : (false);
        }// end function

        public function set GRAB(param1:Boolean) : void
        {
            bits = param1 ? (bits | 16) : (bits & ~16);
            return;
        }// end function

        public function get BUTTON2() : Boolean
        {
            return bits & 32 ? (true) : (false);
        }// end function

        public function set BUTTON2(param1:Boolean) : void
        {
            bits = param1 ? (bits | 32) : (bits & ~32);
            return;
        }// end function

        public function get BUTTON1() : Boolean
        {
            return bits & 64 ? (true) : (false);
        }// end function

        public function set BUTTON1(param1:Boolean) : void
        {
            bits = param1 ? (bits | 64) : (bits & ~64);
            return;
        }// end function

        public function get JUMP() : Boolean
        {
            return bits & 128 ? (true) : (false);
        }// end function

        public function set JUMP(param1:Boolean) : void
        {
            bits = param1 ? (bits | 128) : (bits & ~128);
            return;
        }// end function

        public function get RIGHT() : Boolean
        {
            return bits & 256 ? (true) : (false);
        }// end function

        public function set RIGHT(param1:Boolean) : void
        {
            bits = param1 ? (bits | 256) : (bits & ~256);
            return;
        }// end function

        public function get LEFT() : Boolean
        {
            return bits & 512 ? (true) : (false);
        }// end function

        public function set LEFT(param1:Boolean) : void
        {
            bits = param1 ? (bits | 512) : (bits & ~512);
            return;
        }// end function

        public function get DOWN() : Boolean
        {
            return bits & 1024 ? (true) : (false);
        }// end function

        public function set DOWN(param1:Boolean) : void
        {
            bits = param1 ? (bits | 1024) : (bits & ~1024);
            return;
        }// end function

        public function get UP() : Boolean
        {
            return bits & 2048 ? (true) : (false);
        }// end function

        public function set UP(param1:Boolean) : void
        {
            bits = param1 ? (bits | 2048) : (bits & ~2048);
            return;
        }// end function

        public function get DT_DASH() : Boolean
        {
            return bits & 4096 ? (true) : (false);
        }// end function

        public function set DT_DASH(param1:Boolean) : void
        {
            bits = param1 ? (bits | 4096) : (bits & ~4096);
            return;
        }// end function

        public function get AUTO_DASH() : Boolean
        {
            return bits & 8192 ? (true) : (false);
        }// end function

        public function set AUTO_DASH(param1:Boolean) : void
        {
            bits = param1 ? (bits | 8192) : (bits & ~8192);
            return;
        }// end function

        public function get DASH() : Boolean
        {
            return bits & 16384 ? (true) : (false);
        }// end function

        public function set DASH(param1:Boolean) : void
        {
            bits = param1 ? (bits | 16384) : (bits & ~16384);
            return;
        }// end function

        public function get C_RIGHT() : Boolean
        {
            return bits & 32768 ? (true) : (false);
        }// end function

        public function set C_RIGHT(param1:Boolean) : void
        {
            bits = param1 ? (bits | 32768) : (bits & ~32768);
            return;
        }// end function

        public function get C_LEFT() : Boolean
        {
            return bits & 65536 ? (true) : (false);
        }// end function

        public function set C_LEFT(param1:Boolean) : void
        {
            bits = param1 ? (bits | 65536) : (bits & ~65536);
            return;
        }// end function

        public function get C_DOWN() : Boolean
        {
            return bits & 131072 ? (true) : (false);
        }// end function

        public function set C_DOWN(param1:Boolean) : void
        {
            bits = param1 ? (bits | 131072) : (bits & ~131072);
            return;
        }// end function

        public function get C_UP() : Boolean
        {
            return bits & 262144 ? (true) : (false);
        }// end function

        public function set C_UP(param1:Boolean) : void
        {
            bits = param1 ? (bits | 262144) : (bits & ~262144);
            return;
        }// end function

        public function get JUMP2() : Boolean
        {
            return bits & 524288 ? (true) : (false);
        }// end function

        public function set JUMP2(param1:Boolean) : void
        {
            bits = param1 ? (bits | 524288) : (bits & ~524288);
            return;
        }// end function

        public function get SHIELD2() : Boolean
        {
            return bits & 1048576 ? (true) : (false);
        }// end function

        public function set SHIELD2(param1:Boolean) : void
        {
            bits = param1 ? (bits | 1048576) : (bits & ~1048576);
            return;
        }// end function

        public function get JUMP3() : Boolean
        {
            return bits & 2097152 ? (true) : (false);
        }// end function

        public function set JUMP3(param1:Boolean) : void
        {
            bits = param1 ? (bits | 2097152) : (bits & ~2097152);
            return;
        }// end function

        public function reset() : void
        {
            bits = 0;
            return;
        }// end function

        public function clone() : ControlBits
        {
            return new ControlBits(bits);
        }// end function

        public static function getControls(param1:int, param2:int) : int
        {
            return (param1 | param2) - param2;
        }// end function

    }
}
