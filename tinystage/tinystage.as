package 
{
    import flash.geom.*;

    public class tinystage extends SSF2Stage
    {
        private var red:Number;
        private var grn:Number;
        private var blu:Number;
        private var transform1:ColorTransform;
        private var transform2:ColorTransform;
        private var flashVal:Object = 0;
        private var i:Object;
        private var listeners:Object = false;
        private var cycleVal:Object = 0;

        public function tinystage(param1) : void
        {
            this.transform1 = new ColorTransform();
            this.transform2 = new ColorTransform();
            super(param1);
            return;
        }// end function

        override public function initialize() : void
        {
            var _loc_1:* = [this.getBackground(), this.getForeground()];
            var _loc_2:* = null;
            var _loc_3:* = [this.getCameraBackgrounds()[0].mc];
            var _loc_4:* = null;
            var _loc_5:* = null;
            var _loc_6:* = null;
            SSF2StageQuality.init(_loc_1, _loc_2, _loc_3, _loc_4, _loc_5, _loc_6);
            this.red = SSF2API.safeRandomInteger(0, 2);
            this.grn = SSF2API.safeRandomInteger(0, 2);
            this.blu = SSF2API.safeRandomInteger(0, 2);
            this.transform1.redOffset = -160 + this.red * 80;
            this.transform1.greenOffset = -160 + this.grn * 80;
            this.transform1.blueOffset = -160 + this.blu * 80;
            this.transform2.redOffset = -this.red * 30;
            this.transform2.greenOffset = -this.grn * 30;
            this.transform2.blueOffset = -this.blu * 30;
            this.getBackground().transform.colorTransform = this.transform1;
            this.getForeground().transform.colorTransform = this.transform1;
            this.getCameraBackgrounds()[0].mc.transform.colorTransform = this.transform2;
            return;
        }// end function

        override public function update() : void
        {
            if (!this.listeners)
            {
                this.i = 0;
                while (this.i < SSF2API.getCharacters().length)
                {
                    
                    SSF2API.getCharacters()[this.i].addEventListener(SSF2Event.CHAR_KO_DEATH, this.flashStage, {persistent:true});
                    SSF2API.print("woo");
                    var _loc_1:* = this;
                    var _loc_2:* = this.i + 1;
                    _loc_1.i = _loc_2;
                }
                this.listeners = true;
            }
            if (this.flashVal > 0)
            {
                var _loc_1:* = this;
                var _loc_2:* = this.flashVal - 1;
                _loc_1.flashVal = _loc_2;
            }
            this.cycleVal = this.cycleVal + 0.25;
            if (this.cycleVal >= 360)
            {
                this.cycleVal = this.cycleVal - 360;
            }
            if (this.cycleVal < 60)
            {
                this.red = 0;
                this.grn = 2 - this.cycleVal / 30;
                this.blu = 2;
            }
            else if (this.cycleVal >= 60 && this.cycleVal < 120)
            {
                this.red = (this.cycleVal - 60) / 30;
                this.grn = 0;
                this.blu = 2;
            }
            else if (this.cycleVal >= 120 && this.cycleVal < 180)
            {
                this.red = 2;
                this.grn = 0;
                this.blu = 2 - (this.cycleVal - 120) / 30;
            }
            else if (this.cycleVal >= 180 && this.cycleVal < 240)
            {
                this.red = 2;
                this.grn = (this.cycleVal - 180) / 30;
                this.blu = 0;
            }
            else if (this.cycleVal >= 240 && this.cycleVal < 300)
            {
                this.red = 2 - (this.cycleVal - 240) / 30;
                this.grn = 2;
                this.blu = 0;
            }
            else if (this.cycleVal >= 300)
            {
                this.red = 0;
                this.grn = 2;
                this.blu = (this.cycleVal - 300) / 30;
            }
            this.updateColorTransform();
            return;
        }// end function

        private function updateColorTransform()
        {
            if (this.flashVal == 13)
            {
                this.cycleVal = this.cycleVal + SSF2API.safeRandomInteger(90, 240);
            }
            if (this.flashVal >= 13)
            {
                this.transform1.redOffset = (-160 + this.red * 80) * ((this.flashVal - 15 + 2) / 3);
                this.transform1.greenOffset = (-160 + this.grn * 80) * ((this.flashVal - 15 + 2) / 3);
                this.transform1.blueOffset = (-160 + this.blu * 80) * ((this.flashVal - 15 + 2) / 3);
                this.transform2.redOffset = (-this.red * 30) * ((this.flashVal - 15 + 2) / 3);
                this.transform2.greenOffset = (-this.grn * 30) * ((this.flashVal - 15 + 2) / 3);
                this.transform2.blueOffset = (-this.blu * 30) * ((this.flashVal - 15 + 2) / 3);
            }
            else if (this.flashVal < 13 && this.flashVal > 0)
            {
                this.transform1.redOffset = (-160 + this.red * 80) * ((-this.flashVal + 13) / 13);
                this.transform1.greenOffset = (-160 + this.grn * 80) * ((-this.flashVal + 13) / 13);
                this.transform1.blueOffset = (-160 + this.blu * 80) * ((-this.flashVal + 13) / 13);
                this.transform2.redOffset = (-this.red * 30) * ((-this.flashVal + 13) / 13);
                this.transform2.greenOffset = (-this.grn * 30) * ((-this.flashVal + 13) / 13);
                this.transform2.blueOffset = (-this.blu * 30) * ((-this.flashVal + 13) / 13);
            }
            else if (this.flashVal == 0)
            {
                this.transform1.redOffset = -160 + this.red * 80;
                this.transform1.greenOffset = -160 + this.grn * 80;
                this.transform1.blueOffset = -160 + this.blu * 80;
                this.transform2.redOffset = -this.red * 30;
                this.transform2.greenOffset = -this.grn * 30;
                this.transform2.blueOffset = -this.blu * 30;
            }
            this.getBackground().transform.colorTransform = this.transform1;
            this.getForeground().transform.colorTransform = this.transform1;
            this.getCameraBackgrounds()[0].mc.transform.colorTransform = this.transform2;
            return;
        }// end function

        private function flashStage(param1 = null)
        {
            this.flashVal = 15;
            return;
        }// end function

    }
}
