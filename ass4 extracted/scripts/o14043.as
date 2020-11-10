package
{
   import assets.ui.dialog.MobilePromoPanelDialogAsset;
   import assets.ui.screen.ProfileMPDialogAsset;
   import flash.display.MovieClip;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.NetStatusEvent;
   import flash.events.UncaughtErrorEvent;
   
   public class o14043 extends o13064
   {
      
      private static var o19505:o14043;
       
      
      private var o8027:o14200;
      
      private var o8714:Function;
      
      private var o12205:Function;
      
      private var o10993:Boolean = false;
      
      private var o6736:Boolean = false;
      
      public function o14043(param1:o14200)
      {
         super();
         o8027 = param1;
      }
      
      private static function o12(param1:Object) : String
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc5_:* = null;
         var _loc4_:String = "";
         if(param1 is Error)
         {
            _loc2_ = param1 as Error;
            _loc4_ = "ER: " + _loc2_.o3826();
         }
         else if(param1 is ErrorEvent)
         {
            _loc3_ = param1 as ErrorEvent;
            _loc4_ = "EE: "(_loc3_.errorID as String);
         }
         else if(param1 is NetStatusEvent)
         {
            _loc5_ = param1 as NetStatusEvent;
            try
            {
               _loc4_ = "ENS: " + _loc5_ + ". info code: " + _loc5_.info.code;
            }
            catch(o6162:Error)
            {
               _loc4_ = "ENS, E: " + o6162;
            }
         }
         else
         {
            _loc4_ = "E: " + param1;
         }
         if(_loc4_ == null)
         {
            _loc4_ = "UNKNOWN ERROR";
         }
         _loc4_ = "V:" + o9609.o12834.toString() + ". " + _loc4_;
         return _loc4_;
      }
      
      public static function o11809(param1:Object) : void
      {
         var _loc2_:String = o12(param1);
         if(o19505.o6736 == false)
         {
            o19505.o8027.o15894.o4848.o2719.o11809(_loc2_);
            o19505.o6736 = true;
         }
         o19505.o12407("Error",_loc2_);
      }
      
      public function get data() : o14200
      {
         return o8027;
      }
      
      override protected function o6134() : o16533
      {
         return new o17145(data);
      }
      
      override public function o16384(param1:MovieClip, param2:Boolean) : void
      {
         o19505 = this;
         if(param1.stage == null)
         {
            throw new Error("Stage not set");
         }
         param1.stage.addEventListener("activate",o5787,false,0,true);
         param1.stage.addEventListener("deactivate",o5403,false,0,true);
         Main.o18987.o16316 = o16316;
         o4519.o8116.o4100.o16316 = o16316;
         o4519.o8116.o2535.o16316 = o16316;
         super.o16384(param1,param2);
         o8027.o15894.o4848.o18278.o16280(o4519.o8116,o19869.o17670,o9264);
         o8027.o15894.o4848.o18278.o16280(o4519.o8116,o19869.o391,o98);
      }
      
      override public function o13640() : void
      {
         o8027.o15894.o4848.o18278.o12657(o19869.o17670,o9264);
         o8027.o15894.o4848.o18278.o12657(o19869.o391,o98);
         o8027 = null;
         o8714 = null;
         o12205 = null;
         o10993 = false;
         super.o13640();
      }
      
      private function o98(param1:o19869) : void
      {
         var _loc3_:* = null;
         var _loc2_:* = null;
         if(o8027.o7923 != null)
         {
            _loc3_ = o8027.o5292.o3911.o3100(param1.o19898.o5693);
            if(_loc3_ != null)
            {
               this.o13000();
            }
            else
            {
               _loc2_ = o8027.o5292.o3911.o14690(param1.o19898.o5693);
               if(_loc2_ != null && _loc2_.o19860().length > 0)
               {
                  this.o13000();
               }
            }
         }
      }
      
      private function o9264(param1:o19869) : void
      {
         if(param1.o19898.o5693 == 618 || param1.o19898.o5693 == 627)
         {
            return;
         }
         if(param1.error != "PURCHASE_CANCELLED")
         {
            o12407("Purchase failed: " + param1.error,param1.o1216);
         }
      }
      
      public function o5787(param1:Event) : void
      {
         data.o202.o3063 = true;
      }
      
      public function o5403(param1:Event) : void
      {
         data.o202.o3063 = false;
      }
      
      override public function o16316(param1:UncaughtErrorEvent) : void
      {
         var _loc2_:String = "Error";
         var _loc3_:String = o12(param1.error);
         if(o6736 == false)
         {
            o8027.o15894.o4848.o2719.o11809(_loc3_);
            o6736 = true;
         }
         this.o12407(_loc2_,_loc3_);
      }
      
      override public function set screen(param1:int) : void
      {
         if(param1 == 0 && o10993 == false)
         {
            o10993 = true;
            param1 = 41;
         }
         if(param1 == 0 || param1 == 41 || param1 == 5)
         {
            o9975();
         }
         if(param1 == 6)
         {
            o13615();
         }
         if(data.o15894.o4848.o2719 != null)
         {
            data.o15894.o4848.o2719.o17945();
         }
         .super.screen = param1;
      }
      
      override protected function o17260() : o12239
      {
         return new o12891(o8027);
      }
      
      override protected function o14299() : o3644
      {
         return new o17282(o8027);
      }
      
      override protected function o1042() : o19406
      {
         var _loc1_:o17595 = new o17595(data);
         return _loc1_;
      }
      
      override protected function o4507() : o4023
      {
         return new o14785(data);
      }
      
      override protected function o11301() : o18257
      {
         return new o19048(data);
      }
      
      override protected function o15213() : o14585
      {
         return new o12069(data);
      }
      
      override protected function o16310() : o978
      {
         return new o9555(data);
      }
      
      override protected function o12175() : o6132
      {
         return new o17621(o8027);
      }
      
      override protected function o1966() : o5853
      {
         return new o5571(this.o8027,0);
      }
      
      public function o14462(param1:int, param2:String) : void
      {
         var _loc3_:String = o8027.o10206("dialogMessage.notEnoughCash.title");
         var _loc4_:String = o8027.o10206("dialogMessage.notEnoughCash.message");
         _loc4_ = _loc4_.replace("[PURCHASE_NAME]",param2);
         _loc4_ = _loc4_.replace("[CASH_REQUIRED]",param1);
         this.o20948(null);
      }
      
      override public function o13483(param1:String, param2:String, param3:Function, param4:Function = null, param5:Boolean = true) : o12306
      {
         this.o8714 = param3;
         this.o12205 = param4;
         var _loc6_:o12306 = o14192(param2);
         _loc6_.o17920 = param5;
         _loc6_.o13483(param1,param2,o10630,o15210);
         return _loc6_;
      }
      
      override public function o12407(param1:String, param2:String, param3:Function = null) : void
      {
         this.o8714 = param3;
         this.o12205 = null;
         o14192(param2).o12407(param1,param2,o10630);
      }
      
      private function o10630() : void
      {
         o4519.o8116.o4812.ui.o14759.play();
         if(o8714 != null)
         {
            o8714();
         }
         this.o8714 = null;
         this.o12205 = null;
      }
      
      private function o15210() : void
      {
         o4519.o8116.o4812.ui.o14759.play();
         if(o12205 != null)
         {
            o12205();
         }
         this.o8714 = null;
         this.o12205 = null;
      }
      
      private function o9975() : void
      {
         var _loc1_:o7304 = o4519.o8116.o8756;
         _loc1_.o17836();
         _loc1_.o5186.o12614();
      }
      
      private function o13615() : void
      {
         var _loc1_:o7304 = o4519.o8116.o8756;
         if(_loc1_.o5186 != null)
         {
            _loc1_.o5186.o5611();
            _loc1_.o733();
         }
      }
      
      override protected function o12528() : o10855
      {
         return new o13363(data);
      }
      
      override protected function o13170() : o18703
      {
         return new o7013(data);
      }
      
      override protected function o10270() : o14374
      {
         return new o2177(data);
      }
      
      override protected function o2036() : o1931
      {
         return new o6006(data);
      }
      
      override public function get o470() : Boolean
      {
         return data.o202.o10211 && data.o202.o18730 == false;
      }
      
      override protected function o8572() : o7394
      {
         return new o18819(o8027,this);
      }
      
      override public function o6578(param1:int) : void
      {
         if(o10846.o19505.o6382)
         {
            super.o6578(param1);
         }
      }
      
      override public function o16801(param1:o8443) : o17639
      {
         var _loc2_:o7534 = new o7534();
         _loc2_.o16384(new ProfileMPDialogAsset(),this);
         this.o9642(_loc2_);
         _loc2_.o9072(null);
         _loc2_.o20588(param1);
         return _loc2_;
      }
      
      override public function o10349(param1:Function) : void
      {
         var _loc3_:* = null;
         var _loc4_:Number = this.data.data.o11086;
         var _loc5_:Number = new Date().time;
         var _loc6_:* = 86400000;
         var _loc2_:Number = _loc5_ - _loc4_;
         if(_loc2_ > _loc6_)
         {
            this.data.data.o11086 = _loc5_;
            _loc3_ = new o17603();
            _loc3_.o16384(new MobilePromoPanelDialogAsset(),this);
            this.o9642(_loc3_);
            _loc3_.o9072(param1,param1);
         }
         else
         {
            param1();
         }
      }
   }
}
