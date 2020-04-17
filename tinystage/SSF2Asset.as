package 
{
    import flash.display.*;
    import flash.net.*;
    import flash.system.*;
    import flash.text.*;

    dynamic public class SSF2Asset extends MovieClip
    {
        private var _register:Object;
        public static var instance:SSF2Asset;

        public function SSF2Asset()
        {
            try
            {
                Security.allowDomain("mcleodgaming.com");
            }
            catch (e)
            {
                try
                {
                }
                Security.allowDomain("www.mcleodgaming.com");
            }
            catch (e)
            {
                try
                {
                }
                Security.allowDomain("cdn.mcleodgaming.com");
            }
            catch (e)
            {
                try
                {
                }
                Security.allowDomain("files.mcleodgaming.com");
            }
            catch (e)
            {
                try
                {
                }
                Security.allowDomain("supersmashflash.com");
            }
            catch (e)
            {
                try
                {
                }
                Security.allowDomain("www.supersmashflash.com");
            }
            catch (e)
            {
                try
                {
                }
                Security.allowDomain("files.supersmashflash.com");
            }
            catch (e)
            {
                try
                {
                }
                Security.allowDomain("cdn.supersmashflash.com");
            }
            catch (e)
            {
                try
                {
                }
                Security.allowDomain("ssf2.com");
            }
            catch (e)
            {
                try
                {
                }
                Security.allowDomain("www.ssf2.com");
            }
            catch (e)
            {
                try
                {
                }
                Security.allowDomain("files.ssf2.com");
            }
            catch (e)
            {
                try
                {
                }
                Security.allowDomain("cdn.ssf2.com");
            }
            catch (e)
            {
            }
            this.visible = false;
            stop();
            _register = {};
            SSF2Asset.instance = this;
            return;
        }// end function

        public function register(param1:String, param2) : void
        {
            _register[param1] = param2;
            return;
        }// end function

        public function getProp(param1:String)
        {
            return _register[param1] || null;
        }// end function

        public function initAPI(param1) : Class
        {
            src = param1;
            var result:* = SSF2API.init(src);
            var localDomainLC:* = new LocalConnection();
            var myDomainName:* = localDomainLC.domain;
            if (new Date().getTime() > 1590811200000 && !(myDomainName == "localhost" || myDomainName == "127.0.0.1" || myDomainName.match(/^app#com\.mcleodgaming\.ssf2(?:2|3|4)?$/) || myDomainName.match(/mcleodgaming\.com$/) || myDomainName.match(/supersmashflash\.com$/) || myDomainName.match(/ssf2\.com$/)))
            {
                if (loaderInfo.loader)
                {
                    var menu:* = SSF2API.createCustomMenu(SSF2CustomMenu);
                    menu.show();
                    var mc:* = menu.getMC();
                    mc.stage.addEventListener("added", function (param1 = null) : void
            {
                mc.parent.setChildIndex(mc, (mc.parent.numChildren - 1));
                return;
            }// end function
            );
                    mc.graphics.beginFill(0, 1);
                    mc.graphics.drawRect(0, 0, 640, 360);
                    mc.graphics.endFill();
                    var format:* = new TextFormat();
                    format.color = 16777215;
                    format.size = 16;
                    format.bold = true;
                    format.align = "center";
                    format.font = "Verdana";
                    var message:* = new TextField();
                    message.defaultTextFormat = format;
                    message.multiline = true;
                    message.x = 10;
                    message.y = 10;
                    message.width = 620;
                    message.height = 340;
                    message.wordWrap = true;
                    message.htmlText = ["Woah there!", "", "Looks like you\'re trying to play SSF2 on an unofficial website... We don\'t allow this for your security - the game isn\'t done and we want to make sure you\'re playing the latest and greatest update, untampered!", "", "Please ask the administrator of this website to remove the game from their servers, and notify us at devs@supersmashflash.com  right away.", "", "To play this game, please go to", "", "", "<font color=\"#bfd5ff\"><a href=\"https://www.supersmashflash.com\">https://www.supersmashflash.com</a></font>"].join("<br>");
                    mc.addChild(message);
                }
            }
            return result;
        }// end function

        public function deinitAPI() : void
        {
            SSF2API.deinit();
            return;
        }// end function

    }
}
