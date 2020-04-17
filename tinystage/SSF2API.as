package 
{
    import flash.display.*;
    import flash.geom.*;

    public class SSF2API extends Object
    {
        private static var m_api:Object;
        public static const VERSION_MAJOR:int = 0;
        public static const VERSION_MINOR:int = 45;
        public static const VERSION_REVISION:int = 0;
        public static const BASE_CLASSES:Object = {SSF2GameObject:SSF2GameObject, SSF2Character:SSF2Character, SSF2Enemy:SSF2Enemy, SSF2Item:SSF2Item, SSF2Platform:SSF2Platform, SSF2Projectile:SSF2Projectile, SSF2Stage:SSF2Stage, SSF2Platform:SSF2Platform, SSF2CollisionBoundary:SSF2CollisionBoundary, SSF2Target:SSF2Target, SSF2CustomMatch:SSF2CustomMatch, SSF2CustomMode:SSF2CustomMode, SSF2Camera:SSF2Camera, SSF2GameTimer:SSF2GameTimer, SSF2Beacon:SSF2Beacon};

        public function SSF2API()
        {
            return;
        }// end function

        public static function init(param1) : Class
        {
            if (m_api)
            {
                return SSF2API;
            }
            m_api = param1;
            return SSF2API;
        }// end function

        public static function deinit() : void
        {
            m_api = null;
            return;
        }// end function

        public static function signal(param1:int, param2:Object = null) : void
        {
            if (!isReady())
            {
                return;
            }
            m_api.signal(param1, param2);
            return;
        }// end function

        public static function getAPIVersion() : String
        {
            return "0.45.0";
        }// end function

        public static function print(param1:String) : void
        {
            m_api.print(param1);
            return;
        }// end function

        public static function getProp(param1:String)
        {
            return SSF2Asset.instance.getProp(param1);
        }// end function

        public static function getUID() : int
        {
            SSF2API.print("Warning!! SSF2API.getUID() is deprecated. Please use generateUID() instead");
            return m_api.getUID();
        }// end function

        public static function getCharacter(param1)
        {
            if (param1 is MovieClip)
            {
                SSF2API.MovieClip(param1).stop();
            }
            if (!isReady())
            {
                return null;
            }
            return m_api.getCharacter(param1);
        }// end function

        public static function getCharacters() : Array
        {
            if (!isReady())
            {
                return [];
            }
            return m_api.getCharacters();
        }// end function

        public static function getPlayer(param1)
        {
            if (param1 is MovieClip)
            {
                SSF2API.MovieClip(param1).stop();
            }
            if (!isReady())
            {
                return null;
            }
            return m_api.getPlayer(param1);
        }// end function

        public static function getPlayers() : Array
        {
            if (!isReady())
            {
                return [];
            }
            return m_api.getPlayers();
        }// end function

        public static function getProjectile(param1)
        {
            if (param1 is MovieClip)
            {
                SSF2API.MovieClip(param1).stop();
            }
            if (!isReady())
            {
                return null;
            }
            return m_api.getProjectile(param1);
        }// end function

        public static function getProjectiles() : Array
        {
            if (!isReady())
            {
                return [];
            }
            return m_api.getProjectiles();
        }// end function

        public static function getItem(param1)
        {
            if (param1 is MovieClip)
            {
                SSF2API.MovieClip(param1).stop();
            }
            if (!isReady())
            {
                return null;
            }
            return m_api.getItem(param1);
        }// end function

        public static function getItems() : Array
        {
            if (!isReady())
            {
                return [];
            }
            return m_api.getItems();
        }// end function

        public static function getEnemy(param1)
        {
            if (param1 is MovieClip)
            {
                SSF2API.MovieClip(param1).stop();
            }
            if (!isReady())
            {
                return null;
            }
            return m_api.getEnemy(param1);
        }// end function

        public static function getEnemies() : Array
        {
            if (!isReady())
            {
                return [];
            }
            return m_api.getEnemies();
        }// end function

        public static function getTarget(param1)
        {
            if (param1 is MovieClip)
            {
                SSF2API.MovieClip(param1).stop();
            }
            if (!isReady())
            {
                return null;
            }
            return m_api.getTarget(param1);
        }// end function

        public static function getTargets() : Array
        {
            if (!isReady())
            {
                return [];
            }
            return m_api.getTargets();
        }// end function

        public static function getStage()
        {
            if (!isReady())
            {
                return null;
            }
            return m_api.getStage();
        }// end function

        public static function getCollisionBoundary(param1)
        {
            if (!isReady())
            {
                return null;
            }
            return m_api.getCollisionBoundary(param1);
        }// end function

        public static function getPlatform(param1)
        {
            if (!isReady())
            {
                return null;
            }
            return m_api.getPlatform(param1);
        }// end function

        public static function getPlatforms(param1:Object = null) : Array
        {
            if (!isReady())
            {
                return [];
            }
            return m_api.getPlatforms(param1);
        }// end function

        public static function getPlatformBetweenPoints(param1:Point, param2:Point, param3:Object = null)
        {
            if (!isReady())
            {
                return null;
            }
            return m_api.getPlatformBetweenPoints(param1, param2, param3);
        }// end function

        public static function getCamBounds() : MovieClip
        {
            SSF2API.print("Warning!! SSF2API.getCamBounds() is deprecated. Please use SSF2API.getStage().getCameraBounds() instead");
            if (!isReady())
            {
                return null;
            }
            return m_api.getCamBounds();
        }// end function

        public static function getDeathBounds() : MovieClip
        {
            SSF2API.print("Warning!! SSF2API.getDeathBounds() is deprecated. Please use SSF2API.getStage().getDeathBounds() instead");
            if (!isReady())
            {
                return null;
            }
            return m_api.getDeathBounds();
        }// end function

        public static function hitTestGround(param1:Number, param2:Number, param3:Object = null)
        {
            if (!isReady())
            {
                return null;
            }
            return m_api.hitTestGround(param1, param2, param3);
        }// end function

        public static function hitTestGroundBetweenPoints(param1:Point, param2:Point, param3:Object = null)
        {
            if (!isReady())
            {
                return null;
            }
            return m_api.hitTestGroundBetweenPoints(param1, param2, param3);
        }// end function

        public static function lightFlash(param1:Boolean = true) : void
        {
            SSF2API.print("Warning!! SSF2API.lightFlash() is deprecated. Please use SSF2API.getCamera().lightFlash() instead");
            if (!isReady())
            {
                return;
            }
            m_api.lightFlash(param1);
            return;
        }// end function

        public static function setCamStageFocus(param1:int) : void
        {
            SSF2API.print("Warning!! SSF2API.setCamStageFocus() is deprecated. Please use SSF2API.getCamera().setCamStageFocus() instead");
            if (!isReady())
            {
                return;
            }
            m_api.setCamStageFocus(param1);
            return;
        }// end function

        public static function removeCamStageFocus() : void
        {
            SSF2API.print("Warning!! SSF2API.removeCamStageFocus() is deprecated. Please use SSF2API.getCamera().removeCamStageFocus() instead");
            if (!isReady())
            {
                return;
            }
            m_api.removeCamStageFocus();
            return;
        }// end function

        public static function addEventListener(param1:String, param2:Function, param3:Object = null) : void
        {
            if (!isReady())
            {
                return;
            }
            m_api.addEventListener(param1, param2, param3);
            return;
        }// end function

        public static function hasEventListener(param1:String, param2:Function = null) : Boolean
        {
            if (!isReady())
            {
                return false;
            }
            return m_api.hasEventListener(param1, param2);
        }// end function

        public static function removeEventListener(param1:String, param2:Function) : void
        {
            if (!isReady())
            {
                return;
            }
            m_api.removeEventListener(param1, param2);
            return;
        }// end function

        public static function playSound(param1, param2:Boolean = false) : int
        {
            return m_api.playSound(param1, param2);
        }// end function

        public static function stopSound(param1:int) : void
        {
            m_api.stopSound(param1);
            return;
        }// end function

        public static function playMusic(param1:String, param2:int) : void
        {
            m_api.playMusic(param1, param2);
            return;
        }// end function

        public static function stopMusic() : void
        {
            m_api.stopMusic();
            return;
        }// end function

        public static function getCurrentMusicInfo() : Object
        {
            return m_api.getCurrentMusicInfo();
        }// end function

        public static function shakeCamera(param1:int) : void
        {
            SSF2API.print("Warning!! SSF2API.shakeCamera() is deprecated. Please use SSF2API.getCamera().shake() instead");
            if (!isReady())
            {
                return;
            }
            m_api.shakeCamera(param1);
            return;
        }// end function

        public static function matchGo() : void
        {
            if (!isReady())
            {
                return;
            }
            m_api.matchGo();
            return;
        }// end function

        public static function matchGoComplete() : void
        {
            if (!isReady())
            {
                return;
            }
            m_api.matchGoComplete();
            return;
        }// end function

        public static function random() : Number
        {
            if (!isReady())
            {
                return 0;
            }
            return m_api.random();
        }// end function

        public static function randomInteger(param1:int, param2:int) : int
        {
            if (!isReady())
            {
                return 0;
            }
            return m_api.randomInteger(param1, param2);
        }// end function

        public static function safeRandom() : Number
        {
            if (!isReady())
            {
                return 0;
            }
            return m_api.safeRandom();
        }// end function

        public static function safeRandomInteger(param1:int, param2:int) : int
        {
            if (!isReady())
            {
                return 0;
            }
            return m_api.safeRandomInteger(param1, param2);
        }// end function

        public static function fixBG() : void
        {
            if (!isReady())
            {
                return;
            }
            m_api.fixBG();
            return;
        }// end function

        public static function attachEffect(param1, param2:Object = null) : MovieClip
        {
            if (!isReady())
            {
                return null;
            }
            return m_api.attachEffect(param1, param2);
        }// end function

        public static function attachEffectOverlay(param1, param2:Object = null) : MovieClip
        {
            if (!isReady())
            {
                return null;
            }
            return m_api.attachEffectOverlay(param1, param2);
        }// end function

        public static function calculateChargeDamage(param1:Object) : Number
        {
            if (!isReady())
            {
                return 0;
            }
            return m_api.calculateChargeDamage(param1);
        }// end function

        public static function calculateKnockback(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Boolean) : Number
        {
            return m_api.calculateKnockback(param1, param2, param3, param4, param5, param6, param7);
        }// end function

        public static function calculateKnockbackVelocity(param1:Number) : Number
        {
            return m_api.calculateKnockbackVelocity(param1);
        }// end function

        public static function getTimestamp() : Date
        {
            if (!isReady())
            {
                return null;
            }
            return m_api.getTimestamp();
        }// end function

        public static function getElapsedFrames() : int
        {
            if (!isReady())
            {
                return 0;
            }
            return m_api.getElapsedFrames();
        }// end function

        public static function isHazardsOn() : Boolean
        {
            if (!isReady())
            {
                return false;
            }
            return m_api.isHazardsOn();
        }// end function

        public static function generateItem(param1:String, param2:Number, param3:Number, param4:Boolean = false)
        {
            if (!isReady())
            {
                return null;
            }
            return m_api.generateItem(param1, param2, param3, param4);
        }// end function

        public static function getRandomAssist() : Class
        {
            if (!isReady())
            {
                return null;
            }
            return m_api.getRandomAssist();
        }// end function

        public static function getRandomPokemon() : Class
        {
            if (!isReady())
            {
                return null;
            }
            return m_api.getRandomPokemon();
        }// end function

        public static function spawnAssist(param1:Class, param2 = null)
        {
            if (!isReady())
            {
                return null;
            }
            return m_api.spawnAssist(param1, param2);
        }// end function

        public static function spawnPokemon(param1:Class, param2 = null)
        {
            if (!isReady())
            {
                return null;
            }
            return m_api.spawnPokemon(param1, param2);
        }// end function

        public static function spawnCharacter(param1:Class)
        {
            return m_api.spawnCharacter(param1);
        }// end function

        public static function spawnEnemy(param1)
        {
            return m_api.spawnEnemy(param1);
        }// end function

        public static function spawnItem(param1:Class)
        {
            return m_api.spawnItem(param1);
        }// end function

        public static function spawnProjectile(param1:Class, param2 = null)
        {
            return m_api.spawnProjectile(param1, param2);
        }// end function

        public static function spawnCollisionBoundary(param1:Class)
        {
            if (!isReady())
            {
                return null;
            }
            return m_api.spawnCollisionBoundary(param1);
        }// end function

        public static function spawnPlatform(param1:Class, param2:Boolean = true)
        {
            if (!isReady())
            {
                return null;
            }
            return m_api.spawnPlatform(param1, param2);
        }// end function

        public static function isReady() : Boolean
        {
            return m_api && m_api.isReady();
        }// end function

        public static function hitboxTest(param1, param2:uint, param3, param4:uint) : Array
        {
            return m_api.hitboxTest(param1, param2, param3, param4);
        }// end function

        public static function getQualitySettings() : Object
        {
            if (!isReady())
            {
                return null;
            }
            return m_api.getQualitySettings();
        }// end function

        public static function currentActiveFinalSmash()
        {
            if (!isReady())
            {
                return null;
            }
            return m_api.currentActiveFinalSmash();
        }// end function

        public static function getSmashBallInstance()
        {
            if (!isReady())
            {
                return null;
            }
            return m_api.getSmashBallInstance();
        }// end function

        public static function enableSmashBallSpawn(param1:Boolean) : void
        {
            if (!isReady())
            {
                return;
            }
            m_api.enableSmashBallSpawn(param1);
            return;
        }// end function

        public static function isSmashBallSpawnEnabled() : Boolean
        {
            if (!isReady())
            {
                return false;
            }
            return m_api.isSmashBallSpawnEnabled();
        }// end function

        public static function isDebug() : Boolean
        {
            if (!isReady())
            {
                return false;
            }
            return m_api.isDebug();
        }// end function

        public static function addHUDDetection(param1:MovieClip) : void
        {
            if (!isReady())
            {
                return;
            }
            m_api.addHUDDetection(param1);
            return;
        }// end function

        public static function removeHUDDetection(param1:MovieClip) : void
        {
            if (!isReady())
            {
                return;
            }
            m_api.removeHUDDetection(param1);
            return;
        }// end function

        public static function addTimedCameraTarget(param1, param2:int) : void
        {
            SSF2API.print("Warning!! SSF2API.addTimedCameraTarget() is deprecated. Please use SSF2API.getCamera().addTimedTarget() instead");
            if (!isReady())
            {
                return;
            }
            m_api.addTimedCameraTarget(param1, param2);
            return;
        }// end function

        public static function removeTimedCameraTarget(param1) : void
        {
            SSF2API.print("Warning!! SSF2API.removeTimedCameraTarget() is deprecated. Please use SSF2API.getCamera().deleteTimedTarget() instead");
            if (!isReady())
            {
                return;
            }
            m_api.removeTimedCameraTarget(param1);
            return;
        }// end function

        public static function hasFeature(param1:uint) : Boolean
        {
            if (!isReady())
            {
                return false;
            }
            return m_api.hasFeature(param1);
        }// end function

        public static function getItemFrequency() : int
        {
            if (!isReady())
            {
                return 0;
            }
            return m_api.getItemFrequency();
        }// end function

        public static function setItemFrequency(param1:Number) : void
        {
            if (!isReady())
            {
                return;
            }
            m_api.setItemFrequency(param1);
            return;
        }// end function

        public static function addCustomItem(param1:Object) : void
        {
            if (!isReady())
            {
                return;
            }
            m_api.addCustomItem(param1);
            return;
        }// end function

        public static function getAvailableItemList() : Array
        {
            if (!isReady())
            {
                return [];
            }
            return m_api.getAvailableItemList();
        }// end function

        public static function getMatchSettings() : Object
        {
            if (!isReady())
            {
                return null;
            }
            return m_api.getMatchSettings();
        }// end function

        public static function getGameSettings() : Object
        {
            if (!isReady())
            {
                return null;
            }
            return m_api.getGameSettings();
        }// end function

        public static function generateUID() : int
        {
            if (!isReady())
            {
                return 0;
            }
            return m_api.generateUID();
        }// end function

        public static function getRandomItemSpawnLocation() : Point
        {
            if (!isReady())
            {
                return null;
            }
            return m_api.getRandomItemSpawnLocation();
        }// end function

        public static function isFSCutscenePlaying() : Boolean
        {
            if (!isReady())
            {
                return false;
            }
            return m_api.isFSCutscenePlaying();
        }// end function

        public static function isGameEnded() : Boolean
        {
            if (!isReady())
            {
                return false;
            }
            return m_api.isGameEnded();
        }// end function

        public static function getRandomCharacterID(param1:Boolean = true) : String
        {
            return m_api.getRandomCharacterID(param1);
        }// end function

        public static function getRandomStageID(param1:Boolean = true, param2:Boolean = true) : String
        {
            return m_api.getRandomStageID(param1, param2);
        }// end function

        public static function createCustomMatch(param1:Class, param2:SSF2CustomMode, param3:Object) : SSF2CustomMatch
        {
            return m_api.createCustomMatch(param1, param2, param3);
        }// end function

        public static function createCustomMenu(param1:Class)
        {
            return m_api.createCustomMenu(param1);
        }// end function

        public static function endGame(param1:Object = null) : void
        {
            m_api.endGame(param1);
            return;
        }// end function

        public static function getMCByLinkageName(param1:String) : MovieClip
        {
            return m_api.getMCByLinkageName(param1);
        }// end function

        public static function getCharacterStats(param1:String) : Object
        {
            return m_api.getCharacterStats(param1);
        }// end function

        public static function queueResources(param1:Array) : void
        {
            m_api.queueResources(param1);
            return;
        }// end function

        public static function loadResources(param1:Object) : void
        {
            m_api.loadResources(param1);
            return;
        }// end function

        public static function getGameTimer()
        {
            return m_api.getGameTimer();
        }// end function

        public static function getCamera()
        {
            return m_api.getCamera();
        }// end function

        public static function freezeInputs(param1:Boolean) : void
        {
            m_api.freezeInputs(param1);
            return;
        }// end function

        public static function getItemStatsList(param1:Boolean = true, param2:Boolean = true) : Array
        {
            return m_api.getItemStatsList(param1, param2);
        }// end function

        public static function getRandomItemStats(param1:Boolean = true, param2:Boolean = true) : Object
        {
            return m_api.getRandomItemStats(param1, param2);
        }// end function

        public static function getAverageFPS() : Number
        {
            if (!isReady())
            {
                return 0;
            }
            return m_api.getAverageFPS();
        }// end function

        public static function setFrameRate(param1:Number) : void
        {
            m_api.setFrameRate(param1);
            return;
        }// end function

        public static function getAssistTrophyStatsList(param1:String = "common") : Array
        {
            return m_api.getAssistTrophyStatsList(param1);
        }// end function

        public static function getPokemonStatsList(param1:String = "common") : Array
        {
            return m_api.getPokemonStatsList(param1);
        }// end function

        public static function getGlobalVar(param1:String)
        {
            return m_api.getGlobalVar(param1);
        }// end function

        public static function setGlobalVar(param1:String, param2) : void
        {
            m_api.setGlobalVar(param1, param2);
            return;
        }// end function

        public static function getSnapshot(param1:Object = null) : BitmapData
        {
            return m_api.getSnapshot(param1);
        }// end function

        public static function getTargetTestSaveData(param1:String, param2:String) : Object
        {
            return m_api.getTargetTestSaveData(param1, param2);
        }// end function

        public static function getManifest() : Object
        {
            return m_api.getManifest();
        }// end function

        public static function isGameStarted() : Boolean
        {
            if (!isReady())
            {
                return false;
            }
            return !m_api.isGameStarted();
        }// end function

        public static function getCustomMode()
        {
            if (!isReady())
            {
                return null;
            }
            return m_api.getCustomMode();
        }// end function

        public static function getGameMode() : int
        {
            return m_api.getGameMode();
        }// end function

        public static function getCustomMatch()
        {
            if (!isReady())
            {
                return null;
            }
            return m_api.getCustomMatch();
        }// end function

        public static function getUnlockableData() : Object
        {
            return m_api.getUnlockableData();
        }// end function

        public static function triggerUnlock(param1:String) : Boolean
        {
            return m_api.triggerUnlock(param1);
        }// end function

        public static function getCostumeData(param1:String, param2:int, param3:int = -1) : Object
        {
            return m_api.getCostumeData(param1, param2, param3);
        }// end function

        public static function getMetalCostume(param1:String) : Object
        {
            return m_api.getMetalCostume(param1);
        }// end function

        public static function getWinners() : Array
        {
            return m_api.getWinners();
        }// end function

        public static function getLosers() : Array
        {
            return m_api.getLosers();
        }// end function

    }
}
