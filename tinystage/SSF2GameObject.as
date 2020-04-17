package 
{
    import SSF2BaseAPIObject.*;
    import flash.display.*;
    import flash.geom.*;

    public class SSF2GameObject extends SSF2BaseAPIObject
    {

        public function SSF2GameObject(param1) : void
        {
            super(param1);
            return;
        }// end function

        override public function getType() : String
        {
            return "SSF2GameObject";
        }// end function

        public function getOwnStats() : Object
        {
            return {};
        }// end function

        public function getAttackStats() : Object
        {
            return {};
        }// end function

        public function getProjectileStats() : Object
        {
            return {};
        }// end function

        public function getItemStats() : Object
        {
            return {};
        }// end function

        public function getGameObjectStat(param1:String)
        {
            return _api.getGameObjectStat(param1);
        }// end function

        public function playSound(param1, param2:Boolean = false) : int
        {
            return _api.playSound(param1, param2);
        }// end function

        public function stopSound(param1:int) : void
        {
            _api.stopSound(param1);
            return;
        }// end function

        public function addToCamera() : void
        {
            _api.addToCamera();
            return;
        }// end function

        public function addEventListener(param1:String, param2:Function, param3:Object = null) : void
        {
            if (param1 === "projCollideOwner")
            {
                SSF2API.print("Warning!! SSF2Event.PROJ_COLLIDE_OWNER event is deprecated, please use PROJ_COLLIDE event instead");
            }
            _api.addEventListener(param1, param2, param3);
            return;
        }// end function

        public function hasEventListener(param1:String, param2:Function = null) : Boolean
        {
            return _api.hasEventListener(param1, param2);
        }// end function

        public function removeEventListener(param1:String, param2:Function) : void
        {
            _api.removeEventListener(param1, param2);
            return;
        }// end function

        public function attachEffect(param1, param2:Object = null) : MovieClip
        {
            return _api.attachEffect(param1, param2);
        }// end function

        public function attachEffectOverlay(param1, param2:Object = null) : MovieClip
        {
            return _api.attachEffectOverlay(param1, param2);
        }// end function

        public function camFocus(param1:int) : void
        {
            _api.camFocus(param1);
            return;
        }// end function

        public function camUnfocus() : void
        {
            _api.camUnfocus();
            return;
        }// end function

        public function createTimer(param1:int, param2:int, param3:Function, param4:Object = null) : void
        {
            _api.createTimer(param1, param2, param3, param4);
            return;
        }// end function

        public function destroyTimer(param1:Function) : void
        {
            _api.destroyTimer(param1);
            return;
        }// end function

        public function faceLeft() : void
        {
            _api.faceLeft();
            return;
        }// end function

        public function faceRight() : void
        {
            _api.faceRight();
            return;
        }// end function

        public function flip(param1 = null) : void
        {
            _api.flip(param1);
            return;
        }// end function

        public function forceHitStun(param1:int, param2:Number = -1) : void
        {
            _api.forceHitStun(param1, param2);
            return;
        }// end function

        public function getAttackBoxStat(param1:int, param2:String)
        {
            return _api.getAttackBoxStat(param1, param2);
        }// end function

        public function exportAttackBoxStats(param1:int, param2:String) : Object
        {
            return _api.exportAttackBoxStats(param1, param2);
        }// end function

        public function getAttackStat(param1:String)
        {
            return _api.getAttackStat(param1);
        }// end function

        public function getCounterAttackBoxStats() : Object
        {
            return _api.getCounterAttackBoxStats();
        }// end function

        public function getGlobalVariable(param1:String)
        {
            return _api.getGlobalVariable(param1);
        }// end function

        public function getHeight() : Number
        {
            return _api.getHeight();
        }// end function

        public function getHitBox(param1:String) : Object
        {
            return _api.getHitBox(param1);
        }// end function

        public function getHomingTarget()
        {
            return _api.getHomingTarget();
        }// end function

        public function getID() : int
        {
            return _api.getID();
        }// end function

        public function getTeamID() : int
        {
            return _api.getTeamID();
        }// end function

        public function setTeamID(param1:int) : void
        {
            _api.setTeamID(param1);
            return;
        }// end function

        public function getLinkageID() : String
        {
            return _api.getLinkageID();
        }// end function

        public function getMC() : MovieClip
        {
            return _api.getMC();
        }// end function

        public function getProjectiles() : Array
        {
            return _api.getProjectiles();
        }// end function

        public function getRotation() : Number
        {
            return _api.getRotation();
        }// end function

        public function getScale() : Point
        {
            return _api.getScale();
        }// end function

        public function getStanceMC() : MovieClip
        {
            return _api.getStanceMC();
        }// end function

        public function getUID() : int
        {
            return _api.getUID();
        }// end function

        public function getWidth() : Number
        {
            return _api.getWidth();
        }// end function

        public function getX() : Number
        {
            return _api.getX();
        }// end function

        public function getXScale() : Number
        {
            return _api.getXScale();
        }// end function

        public function getXSpeed() : Number
        {
            return _api.getXSpeed();
        }// end function

        public function getY() : Number
        {
            return _api.getY();
        }// end function

        public function getYScale() : Number
        {
            return _api.getYScale();
        }// end function

        public function getYSpeed() : Number
        {
            return _api.getYSpeed();
        }// end function

        public function getNearest(param1:String, param2:Boolean = true, param3:Boolean = true)
        {
            return _api.getNearest(param1, param2, param3);
        }// end function

        public function getNearestPath(param1:String, param2:Boolean = true, param3:Boolean = true) : Array
        {
            return _api.getNearestPath(param1, param2, param3);
        }// end function

        public function getNearestLedge() : MovieClip
        {
            return _api.getNearestLedge();
        }// end function

        public function getCurrentPlatform()
        {
            return _api.getCurrentPlatform();
        }// end function

        public function homeTowardsTarget(param1:Number, param2) : void
        {
            _api.homeTowardsTarget(param1, param2);
            return;
        }// end function

        public function isFacingRight() : Boolean
        {
            return _api.isFacingRight();
        }// end function

        public function isOnGround() : Boolean
        {
            return _api.isOnGround();
        }// end function

        public function netSpeed(param1:Boolean = false, param2:Boolean = false) : Number
        {
            return _api.netSpeed(param1, param2);
        }// end function

        public function netXSpeed(param1:Boolean = false, param2:Boolean = false) : Number
        {
            return _api.netXSpeed(param1, param2);
        }// end function

        public function netYSpeed(param1:Boolean = false, param2:Boolean = false) : Number
        {
            return _api.netYSpeed(param1, param2);
        }// end function

        public function removeFromCamera() : void
        {
            _api.removeFromCamera();
            return;
        }// end function

        public function refreshAttackID() : void
        {
            _api.refreshAttackID();
            return;
        }// end function

        public function refreshStaleID() : void
        {
            _api.refreshStaleID();
            return;
        }// end function

        public function resetRotation() : void
        {
            _api.resetRotation();
            return;
        }// end function

        public function resetKnockback() : void
        {
            _api.resetKnockback();
            return;
        }// end function

        public function resetKnockbackDecay() : void
        {
            _api.resetKnockbackDecay();
            return;
        }// end function

        public function getKnockbackDecay() : Object
        {
            return _api.getKnockbackDecay();
        }// end function

        public function setKnockbackDecay(param1:Number, param2:Number) : void
        {
            _api.setKnockbackDecay(param1, param2);
            return;
        }// end function

        public function safeMove(param1:Number, param2:Number) : Boolean
        {
            return _api.safeMove(param1, param2);
        }// end function

        public function setCamBoxSize(param1:Number, param2:Number, param3:Number = 0, param4:Number = 0) : void
        {
            _api.setCamBoxSize(param1, param2, param3, param4);
            return;
        }// end function

        public function setGlobalVariable(param1:String, param2) : void
        {
            _api.setGlobalVariable(param1, param2);
            return;
        }// end function

        public function setPosition(param1:Number, param2:Number) : void
        {
            _api.setPosition(param1, param2);
            return;
        }// end function

        public function setRotation(param1:Number) : void
        {
            _api.setRotation(param1);
            return;
        }// end function

        public function setScale(param1:Number, param2:Number) : void
        {
            _api.setScale(param1, param2);
            return;
        }// end function

        public function setX(param1:Number) : void
        {
            _api.setX(param1);
            return;
        }// end function

        public function setXSpeed(param1:Number, param2:Boolean = true) : void
        {
            _api.setXSpeed(param1, param2);
            return;
        }// end function

        public function setY(param1:Number) : void
        {
            _api.setY(param1);
            return;
        }// end function

        public function setYSpeed(param1:Number) : void
        {
            _api.setYSpeed(param1);
            return;
        }// end function

        public function stancePlayFrame(param1) : void
        {
            _api.stancePlayFrame(param1);
            return;
        }// end function

        public function swapDepths(param1) : void
        {
            _api.swapDepths(param1);
            return;
        }// end function

        public function bringBehind(param1) : void
        {
            _api.bringBehind(param1);
            return;
        }// end function

        public function bringInFront(param1) : void
        {
            _api.bringInFront(param1);
            return;
        }// end function

        public function attachToGround() : void
        {
            _api.attachToGround();
            return;
        }// end function

        public function unnattachFromGround() : void
        {
            _api.unnattachFromGround();
            return;
        }// end function

        public function updateAttackBoxStats(param1:int, param2:Object) : void
        {
            _api.updateAttackBoxStats(param1, param2);
            return;
        }// end function

        public function updateAttackStats(param1:Object) : void
        {
            _api.updateAttackStats(param1);
            return;
        }// end function

        public function replaceAttackStats(param1:String, param2:Object) : void
        {
            _api.replaceAttackStats(param1, param2);
            return;
        }// end function

        public function replaceAttackBoxStats(param1:String, param2:int, param3:Object) : void
        {
            _api.replaceAttackBoxStats(param1, param2, param3);
            return;
        }// end function

        public function inState(param1:uint) : Boolean
        {
            return _api.inState(param1);
        }// end function

        public function getState() : uint
        {
            return _api.getState();
        }// end function

        public function setState(param1:uint) : void
        {
            _api.setState(param1);
            return;
        }// end function

        public function extraHitTests(param1:Number, param2:Number, param3) : Boolean
        {
            return false;
        }// end function

        public function takeDamage(param1:Object, param2, param3:Rectangle = null) : Boolean
        {
            return _api.takeDamage(param1, param2, param3);
        }// end function

        public function getBoundsRect() : Rectangle
        {
            return _api.getBoundsRect();
        }// end function

        public function getCurrentAnimation() : String
        {
            return _api.getCurrentAnimation();
        }// end function

        public function getStageParentPosition() : Point
        {
            return _api.getStageParentPosition();
        }// end function

        public function applyKnockback(param1:Number, param2:Number) : void
        {
            _api.applyKnockback(param1, param2);
            return;
        }// end function

        public function applyKnockbackSpeed(param1:Number, param2:Number) : void
        {
            _api.applyKnockbackSpeed(param1, param2);
            return;
        }// end function

        public function resetFade(param1:int = 15) : void
        {
            _api.resetFade(param1);
            return;
        }// end function

        public function fadeIn() : void
        {
            _api.fadeIn();
            return;
        }// end function

        public function fadeOut() : void
        {
            _api.fadeOut();
            return;
        }// end function

        public function inHitStun() : Boolean
        {
            return _api.inHitStun();
        }// end function

        public function inParalysis() : Boolean
        {
            return _api.inParalysis();
        }// end function

        public function inLowerLeftWarningBounds() : Boolean
        {
            return _api.inLowerLeftWarningBounds();
        }// end function

        public function inUpperLeftWarningBounds() : Boolean
        {
            return _api.inUpperLeftWarningBounds();
        }// end function

        public function inLowerRightWarningBounds() : Boolean
        {
            return _api.inLowerRightWarningBounds();
        }// end function

        public function inUpperRightWarningBounds() : Boolean
        {
            return _api.inUpperRightWarningBounds();
        }// end function

        public function setTargetInterrupt(param1:Function) : void
        {
            _api.setTargetInterrupt(param1);
            return;
        }// end function

        public function createSelfPlatform(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean = true)
        {
            return _api.createSelfPlatform(param1, param2, param3, param4, param5, SSF2Platform);
        }// end function

        public function createSelfPlatformWithMC(param1:MovieClip, param2:Boolean = true)
        {
            return _api.createSelfPlatformWithMC(param1, param2, SSF2Platform);
        }// end function

        public function removeSelfPlatform() : void
        {
            _api.removeSelfPlatform();
            return;
        }// end function

        public function getDamage() : Number
        {
            return _api.getDamage();
        }// end function

        public function setDamage(param1:Number) : void
        {
            _api.setDamage(param1);
            return;
        }// end function

        public function isFading() : Boolean
        {
            return _api.isFading();
        }// end function

        public function forceOnGround(param1:Number = 200) : void
        {
            _api.forceOnGround(param1);
            return;
        }// end function

        public function getSizeRatio() : Number
        {
            return _api.getSizeRatio();
        }// end function

        public function setSizeRatio(param1:Number) : void
        {
            _api.setSizeRatio(param1);
            return;
        }// end function

        public function setVisibility(param1:Boolean) : void
        {
            _api.setVisibility(param1);
            return;
        }// end function

        public function getPreviousAnimation() : String
        {
            return _api.getPreviousAnimation();
        }// end function

        public function getWeight2() : Number
        {
            return _api.getWeight2();
        }// end function

        public function setWeight2(param1:Number) : void
        {
            _api.setWeight2(param1);
            return;
        }// end function

        public function getLastHurtAttackBoxStats() : Object
        {
            return _api.getLastHurtAttackBoxStats();
        }// end function

        public function attachHealthBox(param1:String, param2:String, param3:String, param4:int = -1, param5:String = null, param6:int = -1) : void
        {
            _api.attachHealthBox(param1, param2, param3, param4, param5, param6);
            return;
        }// end function

        public function detachHealthBox() : void
        {
            _api.detachHealthBox();
            return;
        }// end function

        public function setColorFilters(param1:Object) : void
        {
            _api.setColorFilters(param1);
            return;
        }// end function

        public function applyPalette(param1:MovieClip) : void
        {
            _api.applyPalette(param1);
            return;
        }// end function

        public function throbDamageCounter() : void
        {
            _api.throbDamageCounter();
            return;
        }// end function

        public function getInvincibility() : Boolean
        {
            return _api.getInvincibility();
        }// end function

        public function getIntangibility() : Boolean
        {
            return _api.getIntangibility();
        }// end function

        public function setIntangibility(param1:Boolean) : void
        {
            _api.setIntangibility(param1);
            return;
        }// end function

        public function setInvincibility(param1:Boolean) : void
        {
            _api.setInvincibility(param1);
            return;
        }// end function

        public function getClosestLedge() : MovieClip
        {
            return _api.getClosestLedge();
        }// end function

        public function getHealthBox() : MovieClip
        {
            return _api.getHealthBox();
        }// end function

        public function forceAttack(param1:String, param2 = null, param3:Boolean = false) : void
        {
            _api.forceAttack(param1, param2, param3);
            return;
        }// end function

        public function getPaletteSwapData() : Object
        {
            return _api.getPaletteSwapData();
        }// end function

        public function setPaletteSwapData(param1:Object) : void
        {
            _api.setPaletteSwapData(param1);
            return;
        }// end function

    }
}
