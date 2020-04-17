package tinystage_fla
{
    import flash.display.*;

    dynamic public class p3_Spawn_14 extends MovieClip
    {
        public var type:String;

        public function p3_Spawn_14()
        {
            addFrameScript(0, this.frame1);
            return;
        }// end function

        function frame1()
        {
            this.type = "p3_spawn";
            this.visible = false;
            return;
        }// end function

    }
}
