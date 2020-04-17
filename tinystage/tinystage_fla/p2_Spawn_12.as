// Decompiled by AS3 Sorcerer 6.20
// www.as3sorcerer.com

//tinystage_fla.p2_Spawn_12

package tinystage_fla
{
    import flash.display.MovieClip;

    public dynamic class p2_Spawn_12 extends MovieClip 
    {

        public var type:String;

        public function p2_Spawn_12()
        {
            addFrameScript(0, this.frame1);
        }

        internal function frame1():*
        {
            this.type = "p2_spawn";
            this.visible = false;
        }


    }
}//package tinystage_fla

