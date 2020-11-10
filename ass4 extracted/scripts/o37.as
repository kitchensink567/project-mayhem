package
{
   import assets.ui.hud.CritHitText;
   import assets.ui.hud.LootPickupTextAnimateAsset;
   import assets.ui.hud.MaxCapacityText;
   import assets.ui.hud.ResistChemicalText;
   import assets.ui.hud.ResistEnergyText;
   import assets.ui.hud.ResistPhysicalText;
   import assets.ui.hud.ResistThermalText;
   import assets.ui.hud.SuperCritHitText;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class o37
   {
       
      
      private var o437:MovieClip;
      
      private var o6035:o15704;
      
      private var o12954:o15704;
      
      private var o3506:o15704;
      
      private var o9850:o15704;
      
      private var o17499:o15704;
      
      private var o8562:o15704;
      
      private var o12996:o15704;
      
      private var o9379:o15704;
      
      private var o8795:o15704;
      
      public function o37(param1:MovieClip)
      {
         super();
         this.o437 = param1;
         param1.mouseEnabled = false;
         param1.mouseChildren = false;
      }
      
      public function init() : void
      {
         var _loc2_:* = null;
         var _loc1_:* = null;
         o6035 = o7523(CritHitText,10,o19992);
         o12954 = o7523(SuperCritHitText,10,o20023);
         o12996 = o7523(MaxCapacityText,10,o13900);
         var _loc3_:int = 10;
         o3506 = o7523(ResistChemicalText,_loc3_,o6432);
         o9850 = o7523(ResistEnergyText,_loc3_,o6292);
         o17499 = o7523(ResistPhysicalText,_loc3_,o6482);
         o8562 = o7523(ResistThermalText,_loc3_,o8790);
         o9379 = o7523(LootPickupTextAnimateAsset,10,o4884);
         o8795 = o7523(LootPickupTextAnimateAsset,10,o20935);
         var _loc5_:int = 0;
         var _loc4_:* = o9379.o10696;
         for each(_loc2_ in o9379.o10696)
         {
            _loc2_.mouseEnabled = false;
            _loc2_.mouseChildren = false;
            _loc1_ = _loc2_.getChildByName("pickupTextContainer") as MovieClip;
            _loc1_.gotoAndStop(1);
         }
         var _loc7_:int = 0;
         var _loc6_:* = o8795.o10696;
         for each(_loc2_ in o8795.o10696)
         {
            _loc2_.mouseEnabled = false;
            _loc2_.mouseChildren = false;
            _loc1_ = _loc2_.getChildByName("pickupTextContainer") as MovieClip;
            _loc1_.gotoAndStop(1);
         }
      }
      
      private function o7523(param1:Class, param2:int, param3:Function) : o15704
      {
         var _loc6_:int = 0;
         var _loc5_:* = null;
         var _loc4_:Vector.<MovieClip> = new Vector.<MovieClip>();
         _loc6_ = 0;
         while(_loc6_ < param2)
         {
            _loc5_ = new param1();
            _loc4_.push(_loc5_);
            _loc6_++;
         }
         return new o15704(o437,_loc4_);
      }
      
      private function o19093(param1:o15704, param2:Function) : void
      {
         var _loc5_:int = 0;
         var _loc4_:* = param1.o10696;
         for each(var _loc3_ in param1.o10696)
         {
            if(_loc3_.parent != null)
            {
               o16681.o1209(_loc3_);
               _loc3_.parent.removeChild(_loc3_);
            }
         }
         param1.o13640();
      }
      
      public function o13640() : void
      {
         o19093(o6035,o19992);
         o19093(o12954,o20023);
         o19093(o3506,o6432);
         o19093(o9850,o6292);
         o19093(o17499,o6482);
         o19093(o8562,o8790);
         o19093(o9379,o4884);
         o19093(o8795,o20935);
         o19093(o12996,o13900);
         o437 = null;
         o6035 = null;
         o12954 = null;
         o3506 = null;
         o9850 = null;
         o17499 = null;
         o8562 = null;
         o12996 = null;
         o9379 = null;
         o8795 = null;
      }
      
      public function o9105(param1:Number, param2:Number) : void
      {
         o437.x = -param1;
         o437.y = -param2;
      }
      
      private function o857(param1:o15704, param2:Number, param3:Number) : MovieClip
      {
         var _loc4_:MovieClip = param1.o11893();
         if(_loc4_ != null)
         {
            _loc4_.gotoAndPlay(1);
            _loc4_.x = param2;
            _loc4_.y = param3;
         }
         return _loc4_;
      }
      
      public function o313(param1:Number, param2:Number) : void
      {
         o857(o6035,param1,param2);
      }
      
      public function o15359(param1:Number, param2:Number) : void
      {
         o857(o12954,param1,param2);
      }
      
      public function o4412(param1:Number, param2:Number) : void
      {
         o857(o12996,param1,param2);
      }
      
      public function o18524(param1:Number, param2:Number) : void
      {
         o857(o3506,param1,param2);
      }
      
      public function o12132(param1:Number, param2:Number) : void
      {
         o857(o9850,param1,param2);
      }
      
      public function o11848(param1:Number, param2:Number) : void
      {
         o857(o17499,param1,param2);
      }
      
      public function o17681(param1:Number, param2:Number) : void
      {
         o857(o8562,param1,param2);
      }
      
      public function o12105(param1:int, param2:Number, param3:Number) : MovieClip
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:MovieClip = o857(o8795,param2,param3);
         if(_loc6_ != null)
         {
            _loc4_ = _loc6_.getChildByName("pickupTextContainer") as MovieClip;
            _loc4_.gotoAndStop(param1);
            _loc5_ = _loc4_.getChildAt(0) as MovieClip;
            _loc5_.gotoAndPlay(1);
         }
         return _loc6_;
      }
      
      public function o1526(param1:String, param2:Number, param3:Number) : MovieClip
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc8_:* = null;
         var _loc7_:MovieClip = o857(o9379,param2,param3);
         if(_loc7_ != null)
         {
            _loc4_ = _loc7_.getChildByName("pickupTextContainer") as MovieClip;
            _loc4_.gotoAndStop(10);
            _loc5_ = _loc4_.getChildAt(0) as MovieClip;
            _loc5_.gotoAndPlay(1);
            _loc6_ = _loc5_.getChildByName("pickupTextContainer") as MovieClip;
            _loc6_.gotoAndStop(1);
            _loc8_ = _loc6_.getChildByName("label") as TextField;
            o16681.o1256(_loc8_,param1);
         }
         return _loc7_;
      }
      
      private function o19992(param1:MovieClip) : void
      {
         o6035.o15828(param1);
      }
      
      private function o20023(param1:MovieClip) : void
      {
         o12954.o15828(param1);
      }
      
      private function o13900(param1:MovieClip) : void
      {
         o12996.o15828(param1);
      }
      
      private function o6432(param1:MovieClip) : void
      {
         o3506.o15828(param1);
      }
      
      private function o6292(param1:MovieClip) : void
      {
         o9850.o15828(param1);
      }
      
      private function o6482(param1:MovieClip) : void
      {
         o17499.o15828(param1);
      }
      
      private function o8790(param1:MovieClip) : void
      {
         o8562.o15828(param1);
      }
      
      private function o4884(param1:MovieClip) : void
      {
         o9379.o15828(param1);
      }
      
      private function o20935(param1:MovieClip) : void
      {
         o8795.o15828(param1);
      }
      
      private function o375(param1:o15704, param2:Function) : void
      {
         var _loc5_:* = null;
         var _loc4_:int = 0;
         var _loc7_:int = 0;
         var _loc6_:* = param1.o11818;
         for each(var _loc3_ in param1.o11818)
         {
            if(_loc3_)
            {
               _loc5_ = param1.o10696[_loc4_];
               if(_loc5_.currentFrameLabel == "End")
               {
                  _loc5_.gotoAndStop(1);
                  param2(_loc5_);
               }
            }
            _loc4_++;
         }
      }
      
      public function o12114() : void
      {
         o375(o6035,o19992);
         o375(o12954,o20023);
         o375(o3506,o6432);
         o375(o9850,o6292);
         o375(o17499,o6482);
         o375(o8562,o8790);
         o375(o9379,o4884);
         o375(o8795,o20935);
         o375(o12996,o13900);
      }
   }
}
