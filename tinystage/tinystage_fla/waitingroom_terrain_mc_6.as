// Decompiled by AS3 Sorcerer 6.20
// www.as3sorcerer.com

//tinystage_fla.waitingroom_terrain_mc_6

package tinystage_fla
{
    import flash.display.MovieClip;

    public dynamic class waitingroom_terrain_mc_6 extends MovieClip 
    {

        public var type:String;

        public function waitingroom_terrain_mc_6()
        {
            addFrameScript(0, this.frame1);
        }

        internal function frame1():*
        {
            this.type = "terrain";
            this.visible = false;
        }


    }
}//package tinystage_fla

