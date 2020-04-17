package tinystage_fla
{
    import flash.display.*;

    dynamic public class terrainGround_platform__18 extends MovieClip
    {
        public var type:String;

        public function terrainGround_platform__18()
        {
            addFrameScript(0, this.frame1);
            return;
        }// end function

        function frame1()
        {
            this.type = "platform";
            this.visible = false;
            return;
        }// end function

    }
}
