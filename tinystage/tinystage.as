// Decompiled by AS3 Sorcerer 6.20
// www.as3sorcerer.com

//tinystage

package 
{
    import flash.geom.ColorTransform;

    public class tinystage extends SSF2Stage 
    {

        private var red:Number;
        private var grn:Number;
        private var blu:Number;
        private var transform1:ColorTransform = new ColorTransform();
        private var transform2:ColorTransform = new ColorTransform();
        private var flashVal:* = 0;
        private var i:*;
        private var listeners:* = false;
        private var cycleVal:* = 0;

        public function tinystage(_arg_1:*):void
        {
            super(_arg_1);
        }

        override public function initialize():void
        {
            var _local_1:Array = [this.getBackground(), this.getForeground()];
            var _local_2:Array;
            var _local_3:Array = [this.getCameraBackgrounds()[0].mc];
            var _local_4:Array;
            var _local_5:Array;
            var _local_6:Array;
            SSF2StageQuality.init(_local_1, _local_2, _local_3, _local_4, _local_5, _local_6);
            this.red = SSF2API.safeRandomInteger(0, 2);
            this.grn = SSF2API.safeRandomInteger(0, 2);
            this.blu = SSF2API.safeRandomInteger(0, 2);
            this.transform1.redOffset = (-160 + (this.red * 80));
            this.transform1.greenOffset = (-160 + (this.grn * 80));
            this.transform1.blueOffset = (-160 + (this.blu * 80));
            this.transform2.redOffset = -(this.red * 30);
            this.transform2.greenOffset = -(this.grn * 30);
            this.transform2.blueOffset = -(this.blu * 30);
            this.getBackground().transform.colorTransform = this.transform1;
            this.getForeground().transform.colorTransform = this.transform1;
            this.getCameraBackgrounds()[0].mc.transform.colorTransform = this.transform2;
        }

        override public function update():void
        {
            if (!this.listeners)
            {
                this.i = 0;
                while (this.i < SSF2API.getCharacters().length)
                {
                    SSF2API.getCharacters()[this.i].addEventListener(SSF2Event.CHAR_KO_DEATH, this.flashStage, {"persistent":true});
                    SSF2API.print("woo");
                    this.i++;
                };
                this.listeners = true;
            };
            if (this.flashVal > 0)
            {
                this.flashVal--;
            };
            this.cycleVal = (this.cycleVal + 0.25);
            if (this.cycleVal >= 360)
            {
                this.cycleVal = (this.cycleVal - 360);
            };
            if (this.cycleVal < 60)
            {
                this.red = 0;
                this.grn = (2 - (this.cycleVal / 30));
                this.blu = 2;
            }
            else
            {
                if (((this.cycleVal >= 60) && (this.cycleVal < 120)))
                {
                    this.red = ((this.cycleVal - 60) / 30);
                    this.grn = 0;
                    this.blu = 2;
                }
                else
                {
                    if (((this.cycleVal >= 120) && (this.cycleVal < 180)))
                    {
                        this.red = 2;
                        this.grn = 0;
                        this.blu = (2 - ((this.cycleVal - 120) / 30));
                    }
                    else
                    {
                        if (((this.cycleVal >= 180) && (this.cycleVal < 240)))
                        {
                            this.red = 2;
                            this.grn = ((this.cycleVal - 180) / 30);
                            this.blu = 0;
                        }
                        else
                        {
                            if (((this.cycleVal >= 240) && (this.cycleVal < 300)))
                            {
                                this.red = (2 - ((this.cycleVal - 240) / 30));
                                this.grn = 2;
                                this.blu = 0;
                            }
                            else
                            {
                                if (this.cycleVal >= 300)
                                {
                                    this.red = 0;
                                    this.grn = 2;
                                    this.blu = ((this.cycleVal - 300) / 30);
                                };
                            };
                        };
                    };
                };
            };
            this.updateColorTransform();
        }

        private function updateColorTransform():*
        {
            if (this.flashVal == 13)
            {
                this.cycleVal = (this.cycleVal + SSF2API.safeRandomInteger(90, 240));
            };
            if (this.flashVal >= 13)
            {
                this.transform1.redOffset = ((-160 + (this.red * 80)) * (((this.flashVal - 15) + 2) / 3));
                this.transform1.greenOffset = ((-160 + (this.grn * 80)) * (((this.flashVal - 15) + 2) / 3));
                this.transform1.blueOffset = ((-160 + (this.blu * 80)) * (((this.flashVal - 15) + 2) / 3));
                this.transform2.redOffset = (-(this.red * 30) * (((this.flashVal - 15) + 2) / 3));
                this.transform2.greenOffset = (-(this.grn * 30) * (((this.flashVal - 15) + 2) / 3));
                this.transform2.blueOffset = (-(this.blu * 30) * (((this.flashVal - 15) + 2) / 3));
            }
            else
            {
                if (((this.flashVal < 13) && (this.flashVal > 0)))
                {
                    this.transform1.redOffset = ((-160 + (this.red * 80)) * ((-(this.flashVal) + 13) / 13));
                    this.transform1.greenOffset = ((-160 + (this.grn * 80)) * ((-(this.flashVal) + 13) / 13));
                    this.transform1.blueOffset = ((-160 + (this.blu * 80)) * ((-(this.flashVal) + 13) / 13));
                    this.transform2.redOffset = (-(this.red * 30) * ((-(this.flashVal) + 13) / 13));
                    this.transform2.greenOffset = (-(this.grn * 30) * ((-(this.flashVal) + 13) / 13));
                    this.transform2.blueOffset = (-(this.blu * 30) * ((-(this.flashVal) + 13) / 13));
                }
                else
                {
                    if (this.flashVal == 0)
                    {
                        this.transform1.redOffset = (-160 + (this.red * 80));
                        this.transform1.greenOffset = (-160 + (this.grn * 80));
                        this.transform1.blueOffset = (-160 + (this.blu * 80));
                        this.transform2.redOffset = -(this.red * 30);
                        this.transform2.greenOffset = -(this.grn * 30);
                        this.transform2.blueOffset = -(this.blu * 30);
                    };
                };
            };
            this.getBackground().transform.colorTransform = this.transform1;
            this.getForeground().transform.colorTransform = this.transform1;
            this.getCameraBackgrounds()[0].mc.transform.colorTransform = this.transform2;
        }

        private function flashStage(_arg_1:*=null):*
        {
            this.flashVal = 15;
        }


    }
}//package 

