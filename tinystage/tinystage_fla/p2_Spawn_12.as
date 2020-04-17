package tinystage_fla
{
    import flash.display.*;

    dynamic public class p2_Spawn_12 extends MovieClip
    {
        public var type:String;

        public function p2_Spawn_12()
        {
            addFrameScript(0, this.frame1);
            return;
        }// end function

        function frame1()
        {
            this.type = "p2_spawn";
            this.visible = false;
            return;
        }// end function

    }
}
