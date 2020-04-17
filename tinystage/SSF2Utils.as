package 
{
    import fl.motion.*;
    import flash.display.*;
    import flash.filters.*;
    import flash.geom.*;
    import flash.utils.*;

    public class SSF2Utils extends Object
    {
        private static var paletteRect:Rectangle = new Rectangle();
        private static var palettePoint:Point = new Point();

        public function SSF2Utils()
        {
            return;
        }// end function

        public static function toRadians(param1:Number) : Number
        {
            return param1 * (3.14159 / 180);
        }// end function

        public static function toDegrees(param1:Number) : Number
        {
            return param1 * (180 / 3.14159);
        }// end function

        public static function getDistance(param1:Point, param2:Point) : Number
        {
            if (param1 == null || param2 == null)
            {
                return 0;
            }
            return Math.sqrt(Math.pow(param1.x - param2.x, 2) + Math.pow(param1.y - param2.y, 2));
        }// end function

        public static function calculateXSpeed(param1:Number, param2:Number) : Number
        {
            return param1 * Math.cos(param2 * 3.14159 / 180);
        }// end function

        public static function calculateYSpeed(param1:Number, param2:Number) : Number
        {
            return param1 * Math.sin(param2 * 3.14159 / 180);
        }// end function

        public static function calculateSpeed(param1:Number, param2:Number) : Number
        {
            return Math.sqrt(Math.pow(param1, 2) + Math.pow(param2, 2));
        }// end function

        public static function forceBase360(param1:Number) : Number
        {
            while (param1 < 0)
            {
                
                param1 = param1 + 360;
            }
            while (param1 >= 360)
            {
                
                param1 = param1 - 360;
            }
            return param1;
        }// end function

        public static function calculateDifferenceBetweenAngles(param1:Number, param2:Number) : Number
        {
            var _loc_3:* = param2 - param1;
            while (_loc_3 < -180)
            {
                
                _loc_3 = _loc_3 + 360;
            }
            while (_loc_3 > 180)
            {
                
                _loc_3 = _loc_3 - 360;
            }
            return _loc_3;
        }// end function

        public static function getVelocityVector(param1:Number, param2:Number) : Point
        {
            var _loc_3:* = new Point();
            _loc_3.x = param1 * Math.cos(param2 * 3.14159 / 180);
            _loc_3.y = param1 * Math.sin(param2 * 3.14159 / 180);
            return _loc_3;
        }// end function

        public static function getAngleBetween(param1:Point, param2:Point) : Number
        {
            return SSF2Utils.forceBase360(Math.atan2(-(param2.y - param1.y), param2.x - param1.x) * 180 / 3.14159);
        }// end function

        public static function safeGotoAndStop(param1:MovieClip, param2) : void
        {
            var _loc_3:* = 0;
            if (param2 is int || param2 is Number)
            {
                if (param2 <= param1.totalFrames)
                {
                    param1.gotoAndStop(param2);
                }
            }
            else if (param2 is String)
            {
                _loc_3 = 0;
                while (_loc_3 < param1.currentLabels.length)
                {
                    
                    if (param1.currentLabels[_loc_3].name == param2)
                    {
                        param1.gotoAndStop(param2);
                        break;
                    }
                    _loc_3++;
                }
            }
            return;
        }// end function

        public static function setTint(param1:DisplayObject, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number) : void
        {
            var _loc_10:* = new ColorTransform();
            _loc_10.redMultiplier = param2;
            _loc_10.greenMultiplier = param3;
            _loc_10.blueMultiplier = param4;
            _loc_10.alphaMultiplier = param5;
            _loc_10.redOffset = param6;
            _loc_10.greenOffset = param7;
            _loc_10.blueOffset = param8;
            _loc_10.alphaOffset = param9;
            param1.transform.colorTransform = _loc_10;
            return;
        }// end function

        public static function rotateRectangleAroundOrigin(param1:Rectangle, param2:Number) : Rectangle
        {
            var _loc_15:* = param1.clone();
            var _loc_12:* = null;
            var _loc_13:* = null;
            var _loc_14:* = null;
            var _loc_11:* = null;
            var _loc_17:* = 0;
            var _loc_16:* = 0;
            var _loc_10:* = 0;
            var _loc_9:* = 0;
            var _loc_18:* = 0;
            var _loc_19:* = 0;
            var _loc_7:* = 0;
            var _loc_8:* = 0;
            var _loc_6:* = 0;
            var _loc_5:* = 0;
            var _loc_4:* = 0;
            var _loc_3:* = 0;
            if (param2 != 0)
            {
                _loc_12 = new Point(_loc_15.x, _loc_15.y);
                _loc_13 = new Point(_loc_15.x + _loc_15.width, _loc_15.y);
                _loc_14 = new Point(_loc_15.x + _loc_15.width, _loc_15.y + _loc_15.height);
                _loc_11 = new Point(_loc_15.x, _loc_15.y + _loc_15.height);
                _loc_18 = SSF2Utils.toRadians(SSF2Utils.getAngleBetween(new Point(), _loc_12));
                _loc_19 = SSF2Utils.toRadians(SSF2Utils.getAngleBetween(new Point(), _loc_13));
                _loc_7 = SSF2Utils.toRadians(SSF2Utils.getAngleBetween(new Point(), _loc_14));
                _loc_8 = SSF2Utils.toRadians(SSF2Utils.getAngleBetween(new Point(), _loc_11));
                _loc_6 = Point.distance(new Point(), _loc_12);
                _loc_5 = Point.distance(new Point(), _loc_13);
                _loc_4 = Point.distance(new Point(), _loc_14);
                _loc_3 = Point.distance(new Point(), _loc_11);
                _loc_12 = Point.polar(_loc_6, _loc_18 + SSF2Utils.toRadians(param2));
                _loc_13 = Point.polar(_loc_5, _loc_19 + SSF2Utils.toRadians(param2));
                _loc_14 = Point.polar(_loc_4, _loc_7 + SSF2Utils.toRadians(param2));
                _loc_11 = Point.polar(_loc_3, _loc_8 + SSF2Utils.toRadians(param2));
                _loc_12.y = _loc_12.y * -1;
                _loc_13.y = _loc_13.y * -1;
                _loc_14.y = _loc_14.y * -1;
                _loc_11.y = _loc_11.y * -1;
                _loc_17 = Math.min(_loc_12.x, _loc_13.x, _loc_14.x, _loc_11.x);
                _loc_16 = Math.min(_loc_12.y, _loc_13.y, _loc_14.y, _loc_11.y);
                _loc_10 = Math.max(_loc_12.x, _loc_13.x, _loc_14.x, _loc_11.x);
                _loc_9 = Math.max(_loc_12.y, _loc_13.y, _loc_14.y, _loc_11.y);
                _loc_15.x = _loc_17;
                _loc_15.y = _loc_16;
                _loc_15.width = _loc_10 - _loc_17;
                _loc_15.height = _loc_9 - _loc_16;
            }
            return _loc_15;
        }// end function

        public static function cast(param1, param2:Class = null)
        {
            var _loc_3:* = null;
            if (!param1)
            {
                return null;
            }
            if (!param2 && (param1 is SSF2Character || param1 is SSF2Projectile || param1 is SSF2Item || param1 is SSF2Enemy || param1 is SSF2Stage || param1 is SSF2Platform || param1 is SSF2CollisionBoundary || param1 is SSF2Camera || param1 is SSF2GameTimer || param1 is SSF2Target))
            {
                return param1;
            }
            if (param2)
            {
                _loc_3 = new param2(param1.$ext.getAPI());
            }
            else
            {
                var _loc_4:* = param1.getType();
                while (_loc_4 === "SSF2Character")
                {
                    
                    _loc_3 = new SSF2Character(param1.$ext.getAPI());
                    do
                    {
                        
                        _loc_3 = new SSF2Projectile(param1.$ext.getAPI());
                        do
                        {
                            
                            _loc_3 = new SSF2Item(param1.$ext.getAPI());
                            do
                            {
                                
                                _loc_3 = new SSF2Enemy(param1.$ext.getAPI());
                                do
                                {
                                    
                                    _loc_3 = new SSF2Stage(param1.$ext.getAPI());
                                    do
                                    {
                                        
                                        _loc_3 = new SSF2Platform(param1.$ext.getAPI());
                                        do
                                        {
                                            
                                            _loc_3 = new SSF2CollisionBoundary(param1.$ext.getAPI());
                                            do
                                            {
                                                
                                                _loc_3 = new SSF2Camera(param1.$ext.getAPI());
                                                do
                                                {
                                                    
                                                    _loc_3 = new SSF2GameTimer(param1.$ext.getAPI());
                                                    do
                                                    {
                                                        
                                                        _loc_3 = new SSF2Target(param1.$ext.getAPI());
                                                        break;
                                                    }
                                                }while (_loc_4 === "SSF2Projectile")
                                            }while (_loc_4 === "SSF2Item")
                                        }while (_loc_4 === "SSF2Enemy")
                                    }while (_loc_4 === "SSF2Stage")
                                }while (_loc_4 === "SSF2Platform")
                            }while (_loc_4 === "SSF2CollisionBoundary")
                        }while (_loc_4 === "SSF2Camera")
                    }while (_loc_4 === "SSF2GameTimer")
                }while (_loc_4 === "SSF2Target")
            }
            return _loc_3;
        }// end function

        private static function cloneObject(param1:Object) : Object
        {
            return JSON.parse(JSON.stringify(param1));
        }// end function

        private static function getCostumeObject(param1:Object = null) : Object
        {
            param1 = param1 ? (SSF2Utils.cloneObject(param1)) : ({});
            var _loc_2:* = {};
            _loc_2.hue = 0;
            _loc_2.saturation = 0;
            _loc_2.brightness = 0;
            _loc_2.contrast = 0;
            _loc_2.redMultiplier = 1;
            _loc_2.greenMultiplier = 1;
            _loc_2.blueMultiplier = 1;
            _loc_2.alphaMultiplier = 1;
            _loc_2.redOffset = 0;
            _loc_2.greenOffset = 0;
            _loc_2.blueOffset = 0;
            _loc_2.alphaOffset = 0;
            for (_loc_3 in _loc_2)
            {
                
                if (param1[_loc_3] === undefined)
                {
                    param1[_loc_3] = _loc_2[_loc_3];
                }
            }
            return param1;
        }// end function

        public static function setColorFilters(param1:DisplayObject, param2:Object) : void
        {
            var _loc_5:* = null;
            var _loc_4:* = null;
            if (!param2)
            {
                param1.filters = null;
                return;
            }
            param2 = SSF2Utils.getCostumeObject(param2);
            var _loc_3:* = [];
            if (!(param2.hue == 0 && param2.saturation == 0 && param2.brightness == 0 && param2.contrast == 0))
            {
                _loc_5 = new AdjustColor();
                _loc_5.hue = param2.hue || 0;
                _loc_5.saturation = param2.saturation || 0;
                _loc_5.brightness = param2.brightness || 0;
                _loc_5.contrast = param2.contrast || 0;
                _loc_3.push(new ColorMatrixFilter(_loc_5.CalculateFinalFlatArray()));
            }
            if (!(param2.redMultiplier == 1 && param2.greenMultiplier == 1 && param2.blueMultiplier == 1 && param2.alphaMultiplier == 1 && param2.redOffset == 0 && param2.greenOffset == 0 && param2.blueOffset == 0 && param2.alphaOffset == 0))
            {
                _loc_4 = [];
                _loc_4 = _loc_4.concat([param2.redMultiplier || 1, 0, 0, 0, param2.redOffset || 0]);
                _loc_4 = _loc_4.concat([0, param2.greenMultiplier || 1, 0, 0, param2.greenOffset || 0]);
                _loc_4 = _loc_4.concat([0, 0, param2.blueMultiplier || 1, 0, param2.blueOffset || 0]);
                _loc_4 = _loc_4.concat([0, 0, 0, param2.alphaMultiplier || 1, param2.alphaOffset || 0]);
                _loc_3.push(new ColorMatrixFilter(_loc_4));
            }
            param1.filters = _loc_3;
            return;
        }// end function

        public static function replacePalette(param1:MovieClip, param2:Object, param3:int = 1, param4:Boolean = false, param5:Boolean = false) : void
        {
            var _loc_7:* = 0;
            var _loc_6:* = null;
            if ((param2 || param4) && param1)
            {
                _loc_7 = 0;
                _loc_6 = null;
                _loc_7 = 0;
                while (_loc_7 < param1.numChildren)
                {
                    
                    if (param1.getChildAt(_loc_7) is Bitmap)
                    {
                        _loc_6 = param1.getChildAt(_loc_7) as Bitmap;
                        if (param4)
                        {
                            if (!param1.__cachedPalette || !param1.__cachedPalette[_loc_6.bitmapData])
                            {
                                param1.__cachedPalette = param1.__cachedPalette || new Dictionary(true);
                                param1.__cachedPalette[_loc_6.bitmapData] = _loc_6.bitmapData.clone();
                            }
                            else
                            {
                                _loc_6.bitmapData.draw(param1.__cachedPalette[_loc_6.bitmapData]);
                            }
                        }
                        if (param2)
                        {
                            SSF2Utils.replacePaletteHelper(_loc_6.bitmapData, param2);
                        }
                        _loc_6.smoothing = param5;
                    }
                    else if (param1.getChildAt(_loc_7) is MovieClip && param3 > 0)
                    {
                        SSF2Utils.replacePalette(param1.getChildAt(_loc_7) as MovieClip, param2, (param3 - 1), param4, param5);
                    }
                    _loc_7++;
                }
            }
            return;
        }// end function

        private static function replacePaletteHelper(param1:BitmapData, param2:Object) : void
        {
            var _loc_3:* = 0;
            SSF2Utils.paletteRect.width = param1.width;
            SSF2Utils.paletteRect.height = param1.height;
            _loc_3 = 0;
            while (_loc_3 < param2.colors.length)
            {
                
                if (param2.colors[_loc_3] != param2.replacements[_loc_3])
                {
                    param1.threshold(param1, SSF2Utils.paletteRect, SSF2Utils.palettePoint, "==", param2.colors[_loc_3], param2.replacements[_loc_3], 4294967295, true);
                }
                _loc_3++;
            }
            return;
        }// end function

        public static function decel(param1:Number, param2:Number) : Number
        {
            var _loc_3:* = false;
            if (param1 == 0)
            {
                return 0;
            }
            if (param2 >= 0)
            {
                param1 = param1 * param2;
            }
            else
            {
                _loc_3 = param1 > 0;
                param1 = param1 - (param1 > 0 ? (Math.abs(param2)) : (-Math.abs(param2)));
                if (_loc_3 && param1 < 0 || !_loc_3 && param1 > 0)
                {
                    param1 = 0;
                }
            }
            if (Math.abs(param1) < 0.5)
            {
                param1 = 0;
            }
            return param1;
        }// end function

        public static function setBrightness(param1:MovieClip, param2:Number) : void
        {
            if (Math.abs(param2) > 100)
            {
                param2 = param2 > 0 ? (100) : (-100);
            }
            var _loc_3:* = new ColorTransform();
            _loc_3.redOffset = param2 * 2.55;
            _loc_3.greenOffset = param2 * 2.55;
            _loc_3.blueOffset = param2 * 2.55;
            param1.transform.colorTransform = _loc_3;
            return;
        }// end function

        public static function safeRemoveMC(param1:MovieClip) : void
        {
            if (param1.parent)
            {
                param1.parent.removeChild(param1);
            }
            return;
        }// end function

        public static function getControlsAngle(param1:Object) : Number
        {
            if (param1.UP && !param1.DOWN && param1.LEFT && !param1.RIGHT)
            {
                return 135;
            }
            if (param1.UP && !param1.DOWN && !param1.LEFT && param1.RIGHT)
            {
                return 45;
            }
            if (!param1.UP && param1.DOWN && param1.LEFT && !param1.RIGHT)
            {
                return 225;
            }
            if (!param1.UP && param1.DOWN && !param1.LEFT && param1.RIGHT)
            {
                return 315;
            }
            if (param1.UP && !param1.DOWN && !param1.LEFT && !param1.RIGHT)
            {
                return 90;
            }
            if (!param1.UP && param1.DOWN && !param1.LEFT && !param1.RIGHT)
            {
                return 270;
            }
            if (!param1.UP && !param1.DOWN && param1.LEFT && !param1.RIGHT)
            {
                return 180;
            }
            if (!param1.UP && !param1.DOWN && !param1.LEFT && param1.RIGHT)
            {
                return 0;
            }
            return -1;
        }// end function

    }
}
