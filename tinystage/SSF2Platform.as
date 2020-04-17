package 
{
    import SSF2BaseAPIObject.*;
    import flash.geom.*;

    public class SSF2Platform extends SSF2CollisionBoundary
    {

        public function SSF2Platform(param1) : void
        {
            super(param1);
            return;
        }// end function

        override public function getType() : String
        {
            return "SSF2Platform";
        }// end function

        public function faceRight() : void
        {
            _api.faceRight();
            return;
        }// end function

        public function faceLeft() : void
        {
            _api.faceLeft();
            return;
        }// end function

        public function setForeground(param1:String) : void
        {
            _api.setForeground(param1);
            return;
        }// end function

        public function getFallthrough() : Boolean
        {
            return _api.getFallthrough();
        }// end function

        public function setFallthrough(param1:Boolean) : void
        {
            _api.setFallthrough(param1);
            return;
        }// end function

        public function getNoDropThrough() : Boolean
        {
            return _api.getNoDropThrough();
        }// end function

        public function setNoDropThrough(param1:Boolean) : void
        {
            _api.setNoDropThrough(param1);
            return;
        }// end function

        public function getAccelFriction() : Number
        {
            return _api.getAccelFriction();
        }// end function

        public function setAccelFriction(param1:Number) : void
        {
            _api.setAccelFriction(param1);
            return;
        }// end function

        public function getDecelFriction() : Number
        {
            return _api.getDecelFriction();
        }// end function

        public function setDecelFriction(param1:Number) : void
        {
            _api.setDecelFriction(param1);
            return;
        }// end function

        public function getXInfluence() : Number
        {
            return _api.getXInfluence();
        }// end function

        public function setXInfluence(param1:Number) : void
        {
            _api.setXInfluence(param1);
            return;
        }// end function

        public function getDanger() : Boolean
        {
            return _api.getDanger();
        }// end function

        public function setDanger(param1:Boolean) : void
        {
            _api.setDanger(param1);
            return;
        }// end function

        public function getBounceSpeed() : Number
        {
            return _api.getBounceSpeed();
        }// end function

        public function setBounceSpeed(param1:Number) : void
        {
            _api.setBounceSpeed(param1);
            return;
        }// end function

        public function setAlpha(param1:Number) : void
        {
            _api.setAlpha(param1);
            return;
        }// end function

        public function setCamFocus(param1:Boolean) : void
        {
            _api.setCamFocus(param1);
            return;
        }// end function

        public function getXSpeed() : Number
        {
            return _api.getXSpeed();
        }// end function

        public function setXSpeed(param1:Number) : void
        {
            _api.setXSpeed(param1);
            return;
        }// end function

        public function getYSpeed() : Number
        {
            return _api.getYSpeed();
        }// end function

        public function setYSpeed(param1:Number) : void
        {
            _api.setYSpeed(param1);
            return;
        }// end function

        public function getStartPosition() : Point
        {
            return _api.getStartPosition();
        }// end function

        public function addMovement(param1:Object) : void
        {
            _api.addMovement(param1);
            return;
        }// end function

        public function clearMovement() : void
        {
            _api.clearMovement();
            return;
        }// end function

        public function extraHitTests(param1:Number, param2:Number, param3) : Boolean
        {
            return false;
        }// end function

        public function addIgnoreObject(param1) : void
        {
            _api.addIgnoreObject(param1);
            return;
        }// end function

        public function removeIgnoreObject(param1) : void
        {
            _api.removeIgnoreObject(param1);
            return;
        }// end function

        public function setIgnoreObjectListInversed(param1:Boolean) : void
        {
            _api.setIgnoreObjectListInversed(param1);
            return;
        }// end function

        public function getConserveHorizontalMomentum() : Boolean
        {
            return _api.getConserveHorizontalMomentum();
        }// end function

        public function setConserveHorizontalMomentum(param1:Boolean) : void
        {
            _api.setConserveHorizontalMomentum(param1);
            return;
        }// end function

        public function getConserveUpwardMomentum() : Boolean
        {
            return _api.getConserveUpwardMomentum();
        }// end function

        public function setConserveUpwardMomentum(param1:Boolean) : void
        {
            _api.setConserveUpwardMomentum(param1);
            return;
        }// end function

        public function getConserveDownwardMomentum() : Boolean
        {
            return _api.getConserveDownwardMomentum();
        }// end function

        public function setConserveDownwardMomentum(param1:Boolean) : void
        {
            _api.setConserveDownwardMomentum(param1);
            return;
        }// end function

    }
}
