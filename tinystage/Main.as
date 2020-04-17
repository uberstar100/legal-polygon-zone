// Decompiled by AS3 Sorcerer 6.20
// www.as3sorcerer.com

//Main

package 
{
    public dynamic class Main extends SSF2Asset 
    {

        public var stageMC:stage_tinystage;

        public function Main()
        {
            register("id", "tinystage");
            register("guid", "ad34aafc-3b94-11e6-ac61-9e71128cae77");
            register("resources", {
                "movieclips":["stage_tinystage", "tinystage_bg"],
                "sounds":[]
            });
            register("music", [{"id":"bgm_polygonzone"}, {"id":"bgm_polygonbattle"}]);
            register("stage", tinystage);
            register("camera", {
                "x_start":280,
                "y_start":250,
                "backgrounds":[{"linkage_id":"tinystage_bg"}]
            });
        }

    }
}//package 

