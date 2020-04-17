// Decompiled by AS3 Sorcerer 6.20
// www.as3sorcerer.com

//tinystage_fla.p1_Spawn_10

package tinystage_fla
{
    import flash.display.MovieClip;

    public dynamic class p1_Spawn_10 extends MovieClip 
    {

        public var type:String;

        public function p1_Spawn_10()
        {
            addFrameScript(0, this.frame1);
        }

        internal function frame1():*
        {
            this.type = "p1_spawn";
            this.visible = false;
        }


    }
}//package tinystage_fla

