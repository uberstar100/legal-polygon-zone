﻿// Decompiled by AS3 Sorcerer 6.20
// www.as3sorcerer.com

//tinystage_fla.p4_Spawn_16

package tinystage_fla
{
    import flash.display.MovieClip;

    public dynamic class p4_Spawn_16 extends MovieClip 
    {

        public var type:String;

        public function p4_Spawn_16()
        {
            addFrameScript(0, this.frame1);
        }

        internal function frame1():*
        {
            this.type = "p4_spawn";
            this.visible = false;
        }


    }
}//package tinystage_fla

