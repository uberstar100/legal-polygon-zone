package 
{

    public class SSF2StageQuality extends Object
    {

        public function SSF2StageQuality()
        {
            return;
        }// end function

        public static function init(param1:Array = null, param2:Array = null, param3:Array = null, param4:Array = null, param5:Array = null, param6:Array = null) : void
        {
            var _loc_9:* = null;
            var _loc_10:* = null;
            var _loc_11:* = null;
            var _loc_12:* = undefined;
            var _loc_13:* = undefined;
            var _loc_14:* = undefined;
            var _loc_15:* = undefined;
            var _loc_7:* = SSF2API.getQualitySettings().stage_effects;
            var _loc_8:* = SSF2API.getQualitySettings().ambient_lighting;
            SSF2API.print("Applying stage effects quality setting: " + _loc_7 + ".");
            if (_loc_7 == "disabled")
            {
                _loc_9 = null;
                _loc_10 = param2;
                _loc_11 = param3;
            }
            else if (_loc_7 == "simple")
            {
                _loc_10 = param4;
                _loc_11 = param5;
            }
            if (_loc_7 != "enabled" && _loc_7 != null)
            {
                if (_loc_9 != null)
                {
                    _loc_12 = 0;
                    while (_loc_12 < _loc_9.length)
                    {
                        
                        if (_loc_9[_loc_12] != null)
                        {
                            SSF2Utils.setTint(_loc_9[_loc_12], 0.7, 0.7, 0.7, 1, 0, 0, 0, 0);
                        }
                        else
                        {
                            SSF2API.print("*****ERROR***** The tintedMC in position " + _loc_12 + " is inaccessible!!!");
                        }
                        _loc_12 = _loc_12 + 1;
                    }
                    SSF2API.print("" + _loc_12 + " MC\'s tinted successfully.");
                }
                if (_loc_10 != null)
                {
                    _loc_13 = 0;
                    while (_loc_13 < _loc_10.length)
                    {
                        
                        if (_loc_10[_loc_13] != null)
                        {
                            _loc_10[_loc_13].visible = false;
                        }
                        else
                        {
                            SSF2API.print("*****ERROR***** The hiddenMC in position " + _loc_13 + " is inaccessible!!!");
                        }
                        _loc_13 = _loc_13 + 1;
                    }
                    SSF2API.print("" + _loc_13 + " MC\'s hidden successfully.");
                }
                if (_loc_11 != null)
                {
                    _loc_14 = 0;
                    while (_loc_14 < _loc_11.length)
                    {
                        
                        if (_loc_11[_loc_14] != null)
                        {
                            _loc_11[_loc_14].visible = false;
                        }
                        else
                        {
                            SSF2API.print("*****ERROR***** The hiddenCamBG in position " + _loc_14 + " is inaccessible!!!");
                        }
                        _loc_14 = _loc_14 + 1;
                    }
                    SSF2API.print("" + _loc_14 + " BG MC\'s hidden successfully.");
                }
            }
            if (_loc_8 != "enabled" && _loc_8 != null)
            {
                if (param6 != null)
                {
                    _loc_15 = 0;
                    while (_loc_15 < param6.length)
                    {
                        
                        if (param6[_loc_15] != null)
                        {
                            param6[_loc_15].visible = false;
                        }
                        else
                        {
                            SSF2API.print("*****ERROR***** The ambientLightMC in position " + _loc_15 + " is inaccessible!!!");
                        }
                        _loc_15 = _loc_15 + 1;
                    }
                    SSF2API.print("" + _loc_15 + " ambient light MC\'s hidden successfully.");
                }
            }
            SSF2API.print("Done applying quality settings!");
            return;
        }// end function

    }
}
