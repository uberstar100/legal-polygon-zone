// Decompiled by AS3 Sorcerer 6.20
// www.as3sorcerer.com

//SSF2StageQuality

package 
{
    public class SSF2StageQuality 
    {


        public static function init(_arg_1:Array=null, _arg_2:Array=null, _arg_3:Array=null, _arg_4:Array=null, _arg_5:Array=null, _arg_6:Array=null):void
        {
            var _local_9:Array;
            var _local_10:Array;
            var _local_11:Array;
            var _local_12:*;
            var _local_13:*;
            var _local_14:*;
            var _local_15:*;
            var _local_7:String = SSF2API.getQualitySettings().stage_effects;
            var _local_8:String = SSF2API.getQualitySettings().ambient_lighting;
            SSF2API.print((("Applying stage effects quality setting: " + _local_7) + "."));
            if (_local_7 == "disabled")
            {
                _local_9 = null;
                _local_10 = _arg_2;
                _local_11 = _arg_3;
            }
            else
            {
                if (_local_7 == "simple")
                {
                    _local_10 = _arg_4;
                    _local_11 = _arg_5;
                };
            };
            if (((!(_local_7 == "enabled")) && (!(_local_7 == null))))
            {
                if (_local_9 != null)
                {
                    _local_12 = 0;
                    while (_local_12 < _local_9.length)
                    {
                        if (_local_9[_local_12] != null)
                        {
                            SSF2Utils.setTint(_local_9[_local_12], 0.7, 0.7, 0.7, 1, 0, 0, 0, 0);
                        }
                        else
                        {
                            SSF2API.print((("*****ERROR***** The tintedMC in position " + _local_12) + " is inaccessible!!!"));
                        };
                        _local_12++;
                    };
                    SSF2API.print((("" + _local_12) + " MC's tinted successfully."));
                };
                if (_local_10 != null)
                {
                    _local_13 = 0;
                    while (_local_13 < _local_10.length)
                    {
                        if (_local_10[_local_13] != null)
                        {
                            _local_10[_local_13].visible = false;
                        }
                        else
                        {
                            SSF2API.print((("*****ERROR***** The hiddenMC in position " + _local_13) + " is inaccessible!!!"));
                        };
                        _local_13++;
                    };
                    SSF2API.print((("" + _local_13) + " MC's hidden successfully."));
                };
                if (_local_11 != null)
                {
                    _local_14 = 0;
                    while (_local_14 < _local_11.length)
                    {
                        if (_local_11[_local_14] != null)
                        {
                            _local_11[_local_14].visible = false;
                        }
                        else
                        {
                            SSF2API.print((("*****ERROR***** The hiddenCamBG in position " + _local_14) + " is inaccessible!!!"));
                        };
                        _local_14++;
                    };
                    SSF2API.print((("" + _local_14) + " BG MC's hidden successfully."));
                };
            };
            if (((!(_local_8 == "enabled")) && (!(_local_8 == null))))
            {
                if (_arg_6 != null)
                {
                    _local_15 = 0;
                    while (_local_15 < _arg_6.length)
                    {
                        if (_arg_6[_local_15] != null)
                        {
                            _arg_6[_local_15].visible = false;
                        }
                        else
                        {
                            SSF2API.print((("*****ERROR***** The ambientLightMC in position " + _local_15) + " is inaccessible!!!"));
                        };
                        _local_15++;
                    };
                    SSF2API.print((("" + _local_15) + " ambient light MC's hidden successfully."));
                };
            };
            SSF2API.print("Done applying quality settings!");
        }


    }
}//package 

