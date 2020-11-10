package
{
   import assets.AchievementTemplate;
   import com.ninjakiwi.gateway.nk.NKGateway;
   import com.ninjakiwi.gateway.nk.NKGatewayUser;
   import flash.events.Event;
   import flash.system.System;
   import flash.text.TextField;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class o12522 extends o12868
   {
       
      
      private var o13397:o14200;
      
      private var o12471:TextField;
      
      private var o1631:TextField;
      
      private var o12859:int = 0;
      
      private var o9154:Number = 0;
      
      private var o3624:Number = 0;
      
      private var o13162:Boolean = false;
      
      private var o7668:Timer;
      
      private var o15717:Boolean = false;
      
      public function o12522(param1:Boolean, param2:Boolean, param3:String)
      {
         super(0,param2);
         o13397 = new o14200(this.loaderInfo,param3);
         o13397.o20602 = param1;
         o13397.o15894.o4848.o18278.o19419 = o13397;
         o4519.o8116.o9589 = new o18976(o13397);
      }
      
      public function get o19419() : o14200
      {
         return o13397;
      }
      
      private function o14941(param1:String) : void
      {
      }
      
      public function o4729() : void
      {
         o14941("invalidSession");
         o15717 = true;
         this.o1470();
         o16989.o14605();
      }
      
      private function o17597(param1:Event) : void
      {
         if(o13162 && false && false)
         {
            o12859 = o12859 + 1;
            o3624 = getTimer();
            if(o3624 - o9154 >= 1000)
            {
               o1631.text = "FPS: " + Math.round(o12859 * 1000 / (o3624 - o9154)).toString() + ", " + o16724.o10417(int(System.totalMemory / 1024)) + "kb";
               o9154 = o3624;
               o12859 = 0;
            }
         }
      }
      
      override protected function o5879() : o13064
      {
         var _loc1_:o13064 = new o14043(o13397);
         o13397.o15894.o4848.o1700(_loc1_);
         return _loc1_;
      }
      
      public function o3744() : void
      {
         if(o13162 && false && false)
         {
            o1631 = new TextField();
            o1631.text = "00 fps";
            o1631.textColor = 65280;
            o1631.width = 800;
            o1631.y = 50;
            o1631.mouseEnabled = false;
            stage.addChild(o1631);
            this.addEventListener("enterFrame",o17597,false,0,true);
         }
         if(o19419.o9276 == false)
         {
            return;
         }
         stage.addChild(NKGateway.container);
         var _loc1_:Object = {};
         var _loc2_:Object = {};
         _loc1_["barUrl"] = o2555.o17203("assets.nkstatic.com/nklogin/nkBar.swf");
         _loc1_["policyUrl"] = o2555.o17203("assets.nkstatic.com/crossdomain.xml");
         _loc1_["cacheBust"] = true;
         _loc2_["notonnk"] = o4519.o17061;
         NKGateway.load("SAS4",_loc1_,_loc2_).then(o14452);
         o13397.o15894.o4848.addEventListener(o6701.o7641,o14106,false,0,true);
         o13397.o15894.o4848.addEventListener(o6701.o1025,o147,false,0,true);
         o13397.o15894.o4848.addEventListener(o6701.o19715,o20308,false,0,true);
         o8339("connecting to NK: " + getTimer());
      }
      
      private function o11476(param1:String) : void
      {
         o14941("addDebugMsg " + param1);
      }
      
      private function o14106(param1:Event) : void
      {
         o14941("onSaveStart");
         o11476("Saving...");
      }
      
      private function o147(param1:Event) : void
      {
         o14941("onSaveComplete");
         if(o19419.o15894.o4848.isGuest)
         {
            o11476("Guest");
         }
         else
         {
            o11476("NK User");
         }
      }
      
      private function o9838() : void
      {
         o14941("onTryAgain");
         o19419.saveData();
      }
      
      private function o20308(param1:Event) : void
      {
         o14941("onSaveError");
         o11476("Save error: " + o13397.o15894.o4848.o12015);
         var _loc2_:String = o13397.o5099.o9009("dialogMessage.nkSaveError.title") + ". Click ok to try again";
         var _loc3_:String = o13397.o15894.o4848.o12015;
         if(_loc3_.indexOf("Save data out of date") >= 0)
         {
            o4729();
         }
         else
         {
            (o16989 as o14043).o3750(_loc2_,_loc3_,o9838);
         }
      }
      
      private function o8908() : void
      {
         o14941("onRevertToGuestAccount");
         if(o15717)
         {
            return;
         }
         this.o19419.o15894.o14986(null);
         this.o16989.screen = 0;
      }
      
      private function o14452(param1:NKGateway) : void
      {
         if(this.o19419.o9276 == false)
         {
            return;
         }
         o4519.o8116.profileData.gateway = param1;
         if(param1 != null)
         {
            o4519.o8116.o17066();
         }
         o10846.o19505.o16989 = this.o16989;
         param1.checkedForExistingUserSignal.add(o8507);
         param1.newUserFinishedLoadingSignal.add(o10667);
         if(o4519.o17061)
         {
            o7078();
            o4519.kong.startPollingForUserChange();
            o4519.kong.addEventListener(o4519.kong.KONG_EVENT_USER_CHANGED,o7078);
         }
         param1.setUI("achievement",AchievementTemplate);
      }
      
      private function o7078(param1:Event = null) : void
      {
         var _loc4_:* = null;
         var _loc2_:* = null;
         var _loc3_:* = null;
         o14941("# matchNKBarLoginToKongLogin 2");
         if(!o4519.kong.isGuest())
         {
            o14941("getKongUsername");
            _loc4_ = o4519.kong.getKongUsername();
            _loc2_ = o4519.kong.getKongUserId();
            _loc3_ = o4519.kong.getKongGameAuthToken();
            o14941("matchNKBarLoginToKongLogin name:" + _loc4_);
            o4519.o8116.profileData.gateway.loginAsAlternateUser("kong",_loc4_,_loc2_,_loc3_);
         }
         else
         {
            o14941("matchNKBarLoginToKongLogin guest");
            o4519.o8116.profileData.gateway.forceLogOut();
         }
      }
      
      private function o8507(param1:Boolean) : void
      {
         if(this.o19419.o9276 == false)
         {
            return;
         }
         if(o15717)
         {
            return;
         }
         o19419.o202.o15222 = 1008;
         o921.o6541(param1);
         if(param1)
         {
            o16989.screen = 28;
         }
         else
         {
            try
            {
               this.o19419.o14986(null);
            }
            catch(o19631:Error)
            {
               o6277();
               return;
            }
            o1470();
         }
      }
      
      private function o1470() : void
      {
         o14941("showLoginScreen");
         if(o12891.o19505 != null)
         {
            o12891.o19505.o3698 = true;
         }
         o16989.o19931();
         o16989.screen = 26;
      }
      
      private function o6277() : void
      {
         o14941("showGuestDataErrorDialog");
         o16989.o12407("Guest data error","Click ok to reset the data. Otherwise contact support if you want to try restoring your guest data.",o5226);
      }
      
      private function o5226() : void
      {
         o14941("confirmGuestDataReset");
         try
         {
            o19419.o15894.o4848.o662();
            this.o19419.o14986(null);
         }
         catch(o19631:Error)
         {
            o6277();
            return;
         }
         o1470();
      }
      
      private function o10667(param1:NKGatewayUser) : void
      {
         var _loc3_:* = null;
         if(o15717)
         {
            return;
         }
         if(this.o19419.o9276 == false)
         {
            return;
         }
         param1.logOutSignal.add(o20297);
         if(param1 == null)
         {
            return;
         }
         try
         {
            this.o19419.o14986(param1);
         }
         catch(o19631:Error)
         {
            _loc3_ = o19631.o1216 == null?"Unknown error":o19631.o1216;
            this.o16989.o12407("Account data exception",_loc3_);
            this.o19419.o15894.o4848.o2719.o11809("LOGIN ERROR: setupNkUser exception. ");
            return;
         }
         var _loc2_:int = this.o19419.data.o11400.length;
         o19419.o15894.o4848.o2719.o19984();
         this.o19419.o4722 = true;
         if(this.o19419.o8576)
         {
            this.o19419.o202.o11075 = this.o19419.data.o8118;
            if(o19419.o15894.o3501)
            {
               o7668 = new Timer(1000);
               o7668.addEventListener("timer",o14494,false,0,true);
               o7668.start();
            }
            else
            {
               this.screen = 5;
            }
         }
         else
         {
            o16989.o19931();
            if(o19419.o15894.o3501)
            {
               o7668 = new Timer(1000);
               o7668.addEventListener("timer",o14494,false,0,true);
               o7668.start();
            }
            else
            {
               o16989.screen = 0;
            }
         }
         o19419.o15894.o4848.o8371();
         o10846.o19505.o4115();
      }
      
      private function o14494(param1:Event) : void
      {
         if(o19419.o15894.o3501 == false)
         {
            o7668.removeEventListener("timer",o14494);
            o7668 = null;
            this.screen = 0;
         }
      }
      
      private function o20297() : void
      {
         if(o12891.o19505 != null)
         {
            o12891.o19505.o3698 = true;
         }
         if(o15717)
         {
            return;
         }
         if(this.o19419.o9276 == false)
         {
            return;
         }
         this.o19419.o14986(null);
         o1470();
      }
   }
}
