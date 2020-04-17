package 
{
    import SSF2BaseAPIObject.*;

    public class SSF2Projectile extends SSF2GameObject
    {

        public function SSF2Projectile(param1) : void
        {
            super(param1);
            return;
        }// end function

        override public function getType() : String
        {
            return "SSF2Projectile";
        }// end function

        override public function inState(param1:uint) : Boolean
        {
            if (isDisposed())
            {
                SSF2API.print("Warning: API attempted to check inState(PState." + PState.toString(param1) + ") after object has been disposed!");
                return param1 === 1;
            }
            return super.inState(param1);
        }// end function

        override public function setState(param1:uint) : void
        {
            if (param1 === 1)
            {
                SSF2API.print("Warning: Cannot explicitly set SSF2Projectile to DEAD state. Please use destroy() method instead.");
            }
            super.setState(param1);
            return;
        }// end function

        public function angleControl(param1:Number, param2:Number) : void
        {
            _api.angleControl(param1, param2);
            return;
        }// end function

        public function destroy(param1 = null) : void
        {
            _api.destroy(param1);
            return;
        }// end function

        public function endControl() : void
        {
            _api.endControl();
            return;
        }// end function

        public function exportStats() : Object
        {
            return _api.exportStats();
        }// end function

        public function getProjectileStat(param1:String)
        {
            return _api.getProjectileStat(param1);
        }// end function

        public function isReversed() : Boolean
        {
            return _api.isReversed();
        }// end function

        public function updateProjectileStats(param1:Object) : void
        {
            _api.updateProjectileStats(param1);
            return;
        }// end function

        public function getOwner()
        {
            return _api.getOwner();
        }// end function

        public function setOwner(param1) : void
        {
            _api.setOwner(param1);
            return;
        }// end function

    }
}
