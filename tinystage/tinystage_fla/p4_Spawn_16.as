package tinystage_fla
{
    import flash.display.*;

    dynamic public class p4_Spawn_16 extends MovieClip
    {
        public var type:String;

        public function p4_Spawn_16()
        {
            addFrameScript(0, this.frame1);
            return;
        }// end function

        function frame1()
        {
            this.type = "p4_spawn";
            this.visible = false;
            return;
        }// end function

    }
}
