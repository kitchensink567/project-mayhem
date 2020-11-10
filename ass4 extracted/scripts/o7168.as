package
{
   import assets.ui.dialog.MasteryLevelRewardsDialogAsset;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   
   public class o7168 extends o9743
   {
       
      
      private var o16989:o13064;
      
      private var o9679:o20565;
      
      private var o9950:o20421;
      
      private var o16466:TextField;
      
      private var o7405:int = 0;
      
      private var o3165:int = 60;
      
      public var o6512:Dictionary;
      
      public var o10057:Dictionary;
      
      private var o1946:o12290;
      
      private var o6935:o12290;
      
      public const o12228:int = 2;
      
      private var o3304:Boolean = true;
      
      public var o9819:Boolean = false;
      
      private var o3443:Function = null;
      
      private var o5305:Boolean = false;
      
      public function o7168()
      {
         super();
      }
      
      private function o10307(param1:MovieClip, param2:Array) : void
      {
         var _loc4_:int = 0;
         var _loc3_:* = null;
         _loc4_ = 0;
         while(_loc4_ < 8)
         {
            _loc3_ = new o16463();
            _loc3_.o16384(param1.getChildByName("btnMastery" + _loc4_.toString()) as MovieClip,o16989);
            this.o5452(_loc3_);
            param2.push(_loc3_);
            _loc4_++;
         }
      }
      
      private function o9231(param1:int, param2:Number) : int
      {
         if(param2 < 0)
         {
            param2 = 0;
         }
         else if(param2 > 1)
         {
            param2 = 1;
         }
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(o6512[param1] != null)
         {
            _loc3_ = o6512[param1];
         }
         if(o10057[param1] != null)
         {
            _loc4_ = o10057[param1];
         }
         if(_loc4_ == 0)
         {
            return _loc3_;
         }
         return _loc3_ + _loc4_ * param2;
      }
      
      override protected function o6662(param1:Event) : void
      {
         var _loc6_:* = null;
         var _loc4_:* = null;
         var _loc9_:Number = NaN;
         super.o6662(param1);
         if(asset == null || asset.stage == null || o12514)
         {
            return;
         }
         var _loc12_:int = 0;
         var _loc11_:* = o9950.o19568;
         for each(var _loc2_ in o9950.o19568)
         {
            o11692(_loc2_.o18747);
         }
         var _loc3_:o14200 = o4519.o8116.profileData;
         var _loc8_:o11995 = _loc3_.o7923.o13012;
         var _loc10_:o4609 = _loc3_.o5292.o20827;
         var _loc7_:int = 0;
         var _loc5_:Vector.<o15625> = o9950.o19568;
         if(o3304)
         {
            _loc7_ = 0;
            var _loc14_:int = 0;
            var _loc13_:* = _loc10_.o20687;
            for each(_loc6_ in _loc10_.o20687)
            {
               if(_loc7_ < _loc5_.length)
               {
                  _loc4_ = _loc5_[_loc7_] as o16463;
                  _loc9_ = o10057[_loc6_.id];
                  if(_loc9_ > 0.5)
                  {
                     _loc4_.o9576();
                  }
                  _loc7_++;
                  continue;
               }
               break;
            }
            o3304 = false;
         }
         if(o7405 <= o3165)
         {
            _loc7_ = 0;
            var _loc16_:int = 0;
            var _loc15_:* = _loc10_.o20687;
            for each(_loc6_ in _loc10_.o20687)
            {
               if(_loc7_ < _loc5_.length)
               {
                  _loc4_ = _loc5_[_loc7_] as o16463;
                  _loc4_.o13248(o9231(_loc6_.id,o7405 / o3165));
                  _loc7_++;
                  continue;
               }
               break;
            }
            o7405 = Number(o7405) + 1;
            if(o7405 > o3165)
            {
               _loc7_ = 0;
               var _loc18_:int = 0;
               var _loc17_:* = _loc10_.o20687;
               for each(_loc6_ in _loc10_.o20687)
               {
                  if(_loc7_ < _loc5_.length)
                  {
                     _loc4_ = _loc5_[_loc7_] as o16463;
                     _loc4_.o12163();
                     _loc7_++;
                     continue;
                  }
                  break;
               }
               if(o3443 != null)
               {
                  o3443();
               }
            }
         }
         if(o5305 && o9819)
         {
            o7770.enabled = o7405 > o3165;
         }
      }
      
      public function o16384(param1:MovieClip, param2:o13064, param3:Dictionary, param4:Dictionary, param5:Boolean, param6:Boolean, param7:Function = null) : void
      {
         var _loc9_:int = 0;
         super.init(param1);
         this.o3443 = param7;
         this.o9819 = param5;
         this.o6512 = param3;
         this.o10057 = param4;
         this.o16989 = param2;
         this.o5305 = param6;
         o9679 = new o20565(this);
         o16466 = container.getChildByName("lblManufacturerLocked") as TextField;
         var _loc8_:Array = [];
         _loc9_ = 0;
         while(_loc9_ < 2)
         {
            o10307(container.getChildByName("column" + _loc9_.toString()) as MovieClip,_loc8_);
            _loc9_++;
         }
         this.o9950 = o9679.o3538(_loc8_);
         o9950.addEventListener(o5595.o16737,o16817,false,0,true);
         o1946 = o9679.o15961("btnDebugReset","Reset",container);
         o1946.addEventListener("click",o16089,false,0,true);
         o1946.visible = false;
         o6935 = o9679.o15961("btnDebugAddAll","Add All",container);
         o6935.addEventListener("click",o16260,false,0,true);
         o6935.visible = false;
         o47();
      }
      
      protected function o16089(param1:Event) : void
      {
      }
      
      protected function o16260(param1:Event) : void
      {
      }
      
      private function o4970(param1:o6993, param2:int, param3:Boolean) : void
      {
         var _loc4_:o12821 = new o12821();
         _loc4_.o16384(new MasteryLevelRewardsDialogAsset());
         o16989.o9642(_loc4_);
         _loc4_.o9848(param1,param2,param3);
      }
      
      protected function o16817(param1:o11507) : void
      {
         if(param1.o6457 == -1)
         {
            return;
         }
         var _loc3_:o16463 = o9950.o19568[param1.o6457] as o16463;
         var _loc4_:o14200 = o4519.o8116.profileData;
         var _loc8_:o4609 = _loc4_.o5292.o20827;
         var _loc6_:o6993 = _loc8_.o8206(param1.o6457);
         var _loc2_:int = o9231(param1.o6457,0);
         var _loc5_:int = o9231(param1.o6457,1);
         var _loc7_:int = _loc8_.o320(_loc2_);
         var _loc9_:int = _loc8_.o320(_loc5_);
         o16989.o4970(_loc6_,o9231(param1.o6457,1),o9819 && _loc7_ != _loc9_);
         o9950.o2120 = -1;
      }
      
      private function o47() : void
      {
         var _loc7_:* = null;
         var _loc2_:* = null;
         var _loc6_:* = false;
         var _loc1_:o14200 = o4519.o8116.profileData;
         var _loc5_:Boolean = _loc1_.o7923.o13012.o6185();
         var _loc9_:o4609 = _loc1_.o5292.o20827;
         if(o16466 != null)
         {
            o16466.visible = _loc5_;
         }
         var _loc3_:Vector.<o15625> = o9950.o19568;
         var _loc11_:int = 0;
         var _loc10_:* = _loc3_;
         for each(var _loc4_ in _loc3_)
         {
            _loc4_.visible = false;
         }
         var _loc8_:int = 0;
         var _loc13_:int = 0;
         var _loc12_:* = _loc9_.o20687;
         for each(_loc7_ in _loc9_.o20687)
         {
            if(_loc8_ < _loc3_.length)
            {
               _loc2_ = _loc3_[_loc8_] as o16463;
               _loc6_ = _loc7_.o2409 == 5 && _loc5_;
               _loc2_.o3650(_loc9_,_loc7_,o9231(_loc7_.id,0),_loc6_);
               _loc2_.visible = true;
               _loc8_++;
               continue;
            }
            break;
         }
      }
      
      override public function o13640() : void
      {
         o9679.o13640();
         o9950.removeEventListener(o5595.o16737,o16817);
         o1946.removeEventListener("click",o16089);
         o6935.removeEventListener("click",o16260);
         o16989 = null;
         o9679 = null;
         o16466 = null;
         o1946 = null;
         o3443 = null;
         o6935 = null;
         super.o13640();
      }
   }
}
