// Decompiled by AS3 Sorcerer 6.20
// www.as3sorcerer.com

//tinystage_fla.terrainGround_platform__18

package tinystage_fla
{
    import flash.display.MovieClip;

    public dynamic class terrainGround_platform__18 extends MovieClip 
    {

        public var type:String;

        public function terrainGround_platform__18()
        {
            addFrameScript(0, this.frame1);
        }

        internal function frame1():*
        {
            this.type = "platform";
            this.visible = false;
        }


    }
}//package tinystage_fla

