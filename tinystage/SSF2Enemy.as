package 
{
    import SSF2BaseAPIObject.*;

    public class SSF2Enemy extends SSF2GameObject
    {

        public function SSF2Enemy(param1) : void
        {
            super(param1);
            return;
        }// end function

        override public function getType() : String
        {
            return "SSF2Enemy";
        }// end function

        override public function inState(param1:uint) : Boolean
        {
            if (isDisposed())
            {
                SSF2API.print("Warning: API attempted to check inState(EState." + EState.toString(param1) + ") after object has been disposed!");
                return param1 === 1;
            }
            return super.inState(param1);
        }// end function

        override public function setState(param1:uint) : void
        {
            if (param1 === 1)
            {
                SSF2API.print("Warning: Cannot explicitly set SSF2Enemy to DEAD state. Please use destroy() method instead.");
            }
            super.setState(param1);
            return;
        }// end function

        public function destroy() : void
        {
            _api.destroy();
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

        public function fireProjectile(param1, param2:Number = 0, param3:Number = 0, param4:Boolean = false, param5:Object = null)
        {
            return _api.fireProjectile(param1, param2, param3, param4, param5);
        }// end function

        public function getEnemyStat(param1:String)
        {
            return _api.getEnemyStat(param1);
        }// end function

        public function updateEnemyStats(param1:Object) : void
        {
            _api.updateEnemyStats(param1);
            return;
        }// end function

        public function setHurtInterrupt(param1:Function) : void
        {
            _api.setHurtInterrupt(param1);
            return;
        }// end function

    }
}
