package 
{
    import SSF2BaseAPIObject.*;
    import flash.display.*;
    import flash.geom.*;

    public class SSF2Character extends SSF2GameObject
    {

        public function SSF2Character(param1) : void
        {
            super(param1);
            return;
        }// end function

        override public function getType() : String
        {
            return "SSF2Character";
        }// end function

        public function get KirbyPower() : String
        {
            return _api.KirbyPower;
        }// end function

        public function set KirbyPower(param1:String) : void
        {
            _api.KirbyPower = param1;
            return;
        }// end function

        override public function inState(param1:uint) : Boolean
        {
            if (isDisposed())
            {
                SSF2API.print("Warning: API attempted to check inState(CState." + CState.toString(param1) + ") after object has been disposed!");
                return param1 === 42;
            }
            return super.inState(param1);
        }// end function

        override public function setState(param1:uint) : void
        {
            if (param1 === 42)
            {
                SSF2API.print("Warning: Cannot explicitly set SSF2Character to DEAD state. Please use destroy() method instead.");
            }
            super.setState(param1);
            return;
        }// end function

        public function shootOutOpponent() : void
        {
            _api.shootOutOpponent();
            return;
        }// end function

        public function activateFinalForm() : void
        {
            _api.activateFinalForm();
            return;
        }// end function

        public function dropItem(param1:Boolean = false) : void
        {
            _api.dropItem(param1);
            return;
        }// end function

        public function endAttack(param1:String = null, param2:String = null) : void
        {
            _api.endAttack(param1, param2);
            return;
        }// end function

        public function endFinalForm() : void
        {
            _api.endFinalForm();
            return;
        }// end function

        public function fireProjectile(param1, param2:Number = 0, param3:Number = 0, param4:Boolean = false, param5:Object = null)
        {
            return _api.fireProjectile(param1, param2, param3, param4, param5);
        }// end function

        public function rocketCharacter(param1:Number, param2:Number, param3:Number, param4:Boolean) : void
        {
            _api.rocketCharacter(param1, param2, param3, param4);
            return;
        }// end function

        public function forceGrabbedHurtFrame(param1:String) : void
        {
            _api.forceGrabbedHurtFrame(param1);
            return;
        }// end function

        public function generateItem(param1:String, param2:Boolean = false, param3:Boolean = true, param4:Boolean = false)
        {
            return _api.generateItem(param1, param2, param3, param4);
        }// end function

        public function getCharacterStat(param1:String)
        {
            return _api.getCharacterStat(param1);
        }// end function

        public function getPlayerSetting(param1:String)
        {
            return _api.getPlayerSetting(param1);
        }// end function

        public function getControls(param1:Boolean = false) : Object
        {
            return _api.getControls(param1);
        }// end function

        public function getControlBits(param1:Boolean = false) : ControlBits
        {
            return new ControlBits(_api.getControlBits(param1));
        }// end function

        public function getCostume() : int
        {
            return _api.getCostume();
        }// end function

        public function setCostume(param1:int, param2:int = -1) : void
        {
            _api.setCostume(param1, param2);
            return;
        }// end function

        public function getCPUAction() : int
        {
            return _api.getCPUAction();
        }// end function

        public function getCPUForcedAction() : int
        {
            return _api.getCPUForcedAction();
        }// end function

        public function setCPUForcedAction(param1:int) : void
        {
            _api.setCPUForcedAction(param1);
            return;
        }// end function

        public function getCPULevel() : int
        {
            return _api.getCPULevel();
        }// end function

        public function getCPUTarget()
        {
            return _api.getCPUTarget();
        }// end function

        public function getCurrentAttackFrame() : String
        {
            return _api.getCurrentAttackFrame();
        }// end function

        public function getCurrentKirbyPower() : String
        {
            return _api.getCurrentKirbyPower();
        }// end function

        public function getCurrentProjectile()
        {
            return _api.getCurrentProjectile();
        }// end function

        public function getExecTime() : int
        {
            return _api.getExecTime();
        }// end function

        public function getHitsDealtCounter() : int
        {
            return _api.getHitsDealtCounter();
        }// end function

        public function getHitsReceivedCounter() : int
        {
            return _api.getHitsReceivedCounter();
        }// end function

        public function getGrabbedOpponent()
        {
            SSF2API.print("Warning: getGrabbedOpponent() is deprecated. Please replace with getGrabbedOpponents():Array");
            return _api.getGrabbedOpponent();
        }// end function

        public function getGrabbedOpponents() : Array
        {
            return _api.getGrabbedOpponents();
        }// end function

        public function getGrabber()
        {
            return _api.getGrabber();
        }// end function

        public function getItem()
        {
            return _api.getItem();
        }// end function

        public function getLastUsed(param1:String = null) : int
        {
            SSF2API.print("Warning: getLastUsed() is deprecated. Please replace with custom implementation instead.");
            return _api.getLastUsed(param1);
        }// end function

        public function getLives() : int
        {
            return _api.getLives();
        }// end function

        public function getShieldPower() : Number
        {
            return _api.getShieldPower();
        }// end function

        public function getSizeStatus() : int
        {
            return _api.getSizeStatus();
        }// end function

        public function getSmashTimer() : int
        {
            return _api.getSmashTimer();
        }// end function

        public function getTeammates() : Array
        {
            return _api.getTeammates();
        }// end function

        public function getTetherCount() : int
        {
            return _api.getTetherCount();
        }// end function

        public function gotoGrabbedCharacter() : void
        {
            _api.gotoGrabbedCharacter();
            return;
        }// end function

        public function grabRelease() : void
        {
            _api.grabRelease();
            return;
        }// end function

        public function grabReleaseOpponent() : void
        {
            _api.grabReleaseOpponent();
            return;
        }// end function

        public function importCPUControls(param1:Array) : void
        {
            _api.importCPUControls(param1);
            return;
        }// end function

        public function initiateCrash() : void
        {
            _api.initiateCrash();
            return;
        }// end function

        public function isCPU() : Boolean
        {
            return _api.isCPU();
        }// end function

        public function isForcedCrash() : Boolean
        {
            return _api.isForcedCrash();
        }// end function

        public function isGrabbing() : Boolean
        {
            return _api.isGrabbing();
        }// end function

        public function isRecovering() : Boolean
        {
            return _api.isRecovering();
        }// end function

        public function isStandby() : Boolean
        {
            return _api.isStandby();
        }// end function

        public function confuseAI(param1:int) : void
        {
            _api.confuseAI(param1);
            return;
        }// end function

        public function jumpFullyReleased() : Boolean
        {
            return _api.jumpFullyReleased();
        }// end function

        public function maxOutJumps() : void
        {
            _api.maxOutJumps();
            return;
        }// end function

        public function playCharacterSound(param1:String) : int
        {
            return _api.playCharacterSound(param1);
        }// end function

        public function playAttackSound(param1:Number = -1) : int
        {
            return _api.playAttackSound(param1);
        }// end function

        public function playVoiceSound(param1:Number = -1) : int
        {
            return _api.playVoiceSound(param1);
        }// end function

        public function recover(param1:int) : Boolean
        {
            return _api.recover(param1);
        }// end function

        public function releaseLedge() : void
        {
            _api.releaseLedge();
            return;
        }// end function

        public function releaseOpponent() : void
        {
            _api.releaseOpponent();
            return;
        }// end function

        public function removeItem() : void
        {
            _api.removeItem();
            return;
        }// end function

        public function replaceCharacter(param1:String, param2:String = null, param3:String = null) : void
        {
            _api.replaceCharacter(param1, param2, param3);
            return;
        }// end function

        public function resetCPUControls() : void
        {
            _api.resetCPUControls();
            return;
        }// end function

        public function resetHitsDealtCounter() : void
        {
            _api.resetHitsDealtCounter();
            return;
        }// end function

        public function resetHitsReceivedCounter() : void
        {
            _api.resetHitsReceivedCounter();
            return;
        }// end function

        public function resetJumps() : void
        {
            _api.resetJumps();
            return;
        }// end function

        public function resetMovement(param1 = null) : void
        {
            _api.resetMovement(param1);
            return;
        }// end function

        public function resetStaleMoves() : void
        {
            _api.resetStaleMoves();
            return;
        }// end function

        public function setAttackEnabled(param1:Boolean, param2:String = null, param3:int = -1) : void
        {
            _api.setAttackEnabled(param1, param2, param3);
            return;
        }// end function

        public function setCPUAttackQueue(param1:String) : void
        {
            _api.setCPUAttackQueue(param1);
            return;
        }// end function

        public function setInvisibilityTimer(param1:int) : void
        {
            _api.setInvisibilityTimer(param1);
            return;
        }// end function

        public function setLastUsed(param1:String, param2:int) : void
        {
            _api.setLastUsed(param1, param2);
            return;
        }// end function

        public function setSizeStatus(param1:int) : void
        {
            _api.setSizeStatus(param1);
            return;
        }// end function

        public function swapDepthsWithGrabbedOpponent(param1:Boolean) : void
        {
            _api.swapDepthsWithGrabbedOpponent(param1);
            return;
        }// end function

        public function switchAttack(param1:String, param2 = null) : void
        {
            _api.switchAttack(param1, param2);
            return;
        }// end function

        public function switchAttackData(param1:String, param2:String) : void
        {
            _api.switchAttackData(param1, param2);
            return;
        }// end function

        public function toBounce(param1 = null) : void
        {
            _api.toBounce(param1);
            return;
        }// end function

        public function toCrashLand(param1 = null) : void
        {
            _api.toCrashLand(param1);
            return;
        }// end function

        public function toHeavyLand(param1 = null) : void
        {
            _api.toHeavyLand(param1);
            return;
        }// end function

        public function toHelpless(param1 = null) : void
        {
            _api.toHelpless(param1);
            return;
        }// end function

        public function toIdle(param1 = null) : void
        {
            _api.toIdle(param1);
            return;
        }// end function

        public function toLand(param1 = null) : void
        {
            _api.toLand(param1);
            return;
        }// end function

        public function toToss(param1 = null) : void
        {
            _api.toToss(param1);
            return;
        }// end function

        public function toFlying(param1 = null) : void
        {
            _api.toFlying(param1);
            return;
        }// end function

        public function toBarrel(param1 = null) : void
        {
            _api.toBarrel(param1);
            return;
        }// end function

        public function toGrabbing(param1 = null) : void
        {
            _api.toGrabbing(param1);
            return;
        }// end function

        public function toRoll(param1 = null) : void
        {
            _api.toRoll(param1);
            return;
        }// end function

        public function toDodgeRoll(param1 = null) : void
        {
            _api.toDodgeRoll(param1);
            return;
        }// end function

        public function tossItem(param1:Number) : void
        {
            _api.tossItem(param1);
            return;
        }// end function

        public function updateCharacterStats(param1:Object) : void
        {
            _api.updateCharacterStats(param1);
            return;
        }// end function

        public function updatePlayerSettings(param1:Object) : void
        {
            _api.updatePlayerSettings(param1);
            return;
        }// end function

        public function usingCPUControls() : Boolean
        {
            return _api.usingCPUControls();
        }// end function

        public function getRank() : int
        {
            return _api.getRank();
        }// end function

        public function setRank(param1:int) : void
        {
            _api.setRank(param1);
            return;
        }// end function

        public function getForceTransformTime() : int
        {
            return _api.getForceTransformTime();
        }// end function

        public function setStarmanInvincibility(param1:int) : void
        {
            _api.setStarmanInvincibility(param1);
            return;
        }// end function

        public function setHurtInterrupt(param1:Function) : void
        {
            _api.setHurtInterrupt(param1);
            return;
        }// end function

        public function forceTaunt() : void
        {
            _api.forceTaunt();
            return;
        }// end function

        public function warioWareEffect(param1:Boolean, param2:Boolean) : void
        {
            _api.warioWareEffect(param1, param2);
            return;
        }// end function

        public function isUsingFinalSmash() : Boolean
        {
            return _api.isUsingFinalSmash();
        }// end function

        public function grab(param1:int = -1, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false) : Boolean
        {
            return _api.grab(param1, param2, param3, param4);
        }// end function

        public function release() : void
        {
            _api.release();
            return;
        }// end function

        public function triggerFSCutscene() : void
        {
            _api.triggerFSCutscene();
            return;
        }// end function

        public function killFSCutscene() : void
        {
            _api.killFSCutscene();
            return;
        }// end function

        public function getOriginalSizeRatio() : Number
        {
            return _api.getOriginalSizeRatio();
        }// end function

        public function setOriginalSizeRatio(param1:Number) : void
        {
            _api.setOriginalSizeRatio(param1);
            return;
        }// end function

        public function lockSizeStatus(param1:Boolean) : void
        {
            _api.lockSizeStatus(param1);
            return;
        }// end function

        public function getStartPosition() : Point
        {
            return _api.getStartPosition();
        }// end function

        public function setStartPosition(param1:Point) : void
        {
            _api.setStartPosition(param1);
            return;
        }// end function

        public function getSpawnPosition() : Point
        {
            return _api.getSpawnPosition();
        }// end function

        public function setSpawnPosition(param1:Point) : void
        {
            _api.setSpawnPosition(param1);
            return;
        }// end function

        public function setOffScreenIndicatorEnabled(param1:Boolean) : void
        {
            _api.setOffScreenIndicatorEnabled(param1);
            return;
        }// end function

        public function setHumanControl(param1:Boolean, param2:Number = 1) : void
        {
            _api.setHumanControl(param1, param2);
            return;
        }// end function

        public function getStandby() : Boolean
        {
            return _api.getStandby();
        }// end function

        public function setStandby(param1:Boolean) : void
        {
            _api.setStandby(param1);
            return;
        }// end function

        public function getHitLag() : int
        {
            return _api.getHitLag();
        }// end function

        public function setHitLag(param1:int) : void
        {
            _api.setHitLag(param1);
            return;
        }// end function

        public function grantFinalSmash() : void
        {
            _api.grantFinalSmash();
            return;
        }// end function

        public function setLivesEnabled(param1:Boolean) : void
        {
            _api.setLivesEnabled(param1);
            return;
        }// end function

        public function setLives(param1:int) : void
        {
            _api.setLives(param1);
            return;
        }// end function

        public function setMetalStatus(param1:Boolean) : void
        {
            _api.setMetalStatus(param1);
            return;
        }// end function

        public function getMetalStatus() : Boolean
        {
            return _api.getMetalStatus();
        }// end function

        public function getPoison() : Object
        {
            return _api.getPoison();
        }// end function

        public function setPoison(param1:int, param2:int = 15, param3:int = 300) : void
        {
            _api.setPoison(param1, param2, param3);
            return;
        }// end function

        public function hasSmashBallAura() : Boolean
        {
            return _api.hasSmashBallAura();
        }// end function

        public function getFinalSmashCutscene() : MovieClip
        {
            return _api.getFinalSmashCutscene();
        }// end function

        public function getFinalSmashReticule() : MovieClip
        {
            return _api.getFinalSmashReticule();
        }// end function

        public function destroy() : MovieClip
        {
            return _api.destroy();
        }// end function

        public function getMatchStatistics() : Object
        {
            return _api.getMatchStatistics();
        }// end function

        public function getKirbyHatMC() : MovieClip
        {
            return _api.getKirbyHatMC();
        }// end function

        public function getMidairJumpCount() : int
        {
            return _api.getMidairJumpCount();
        }// end function

        public function setMidairJumpCount(param1:int) : void
        {
            _api.setMidairJumpCount(param1);
            return;
        }// end function

        public function setIASA(param1:Boolean) : void
        {
            _api.setIASA(param1);
            return;
        }// end function

    }
}
