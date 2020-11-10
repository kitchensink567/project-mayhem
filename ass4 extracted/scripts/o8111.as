package
{
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   
   public class o8111 extends o7848
   {
      
      public static const o1153:int = o19504.o4386();
      
      public static const o1097:int = 1;
      
      public static const o6740:int = 2;
       
      
      public var o13696:Array;
      
      public var o10464:Array;
      
      public var o3046:uint;
      
      public var o15131:uint;
      
      public var o2752:o4411 = null;
      
      public var o13376:o8925 = null;
      
      public var o1432:o17517 = null;
      
      public var o14448:Vector.<o8111>;
      
      public var o8566:Boolean = false;
      
      public var o14622:o4332 = null;
      
      private var o19423:o7331 = null;
      
      public var o13563:String;
      
      public var o10230:String;
      
      public var o5176:String;
      
      public var o20440:String;
      
      private var o14120:Number = 0;
      
      private var o1435:o16518;
      
      private var o11433:o4332 = null;
      
      private const o5079:int = -16;
      
      private var o16554:int = 0;
      
      private var o1288:int = 0;
      
      private var o19477:int = 0;
      
      private var currentTarget:o7848 = null;
      
      private var o4574:Vector.<o7848>;
      
      private var o18478:Number = 5.026548245743669;
      
      private var o17490:Boolean = false;
      
      private var o8303:int = -1;
      
      public function o8111()
      {
         o13696 = [o18442,o5640];
         o10464 = [o18442,o10384,o5640];
         o3046 = o8723.o18481 | o8723.o3732 | o8723.o3969 | o8723.o18180 | o8723.o19523;
         o15131 = o8723.o3969 | o8723.o18180 | o8723.o19523;
         o14448 = new Vector.<o8111>();
         o13563 = "";
         o10230 = "";
         o5176 = "";
         o20440 = "";
         o4574 = new Vector.<o7848>();
         super();
      }
      
      public function o16955(param1:int, param2:o17517, param3:int) : void
      {
         var _loc4_:o10262 = o4519.o8116.o9869.o1968(1,7,false);
         var _loc6_:o4332 = o4519.o8116.o11954.o10869();
         o1432 = param2;
         var _loc8_:o17761 = new o17761(_loc4_.o2535);
         _loc8_.o16716(30);
         var _loc7_:uint = o8723.o3969 | o8723.o18180 | o8723.o19523 | o8723.o20596 | o8723.o14328;
         if(o8566)
         {
            _loc7_ = 0;
         }
         var _loc5_:o4039 = o4519.o8116.o20600.o15803(o8723.o20596,_loc7_,0,false);
         _loc5_.o10289 = _loc8_.id;
         _loc4_.o14230(_loc5_);
         _loc6_.o16396 = o17541.o13617("assets.turrets.hvmHeavyMachineGunSentry.Disabled");
         _loc6_.o16990 = o11381.o12215;
         super.o10783(param1,_loc4_,_loc6_,o4519.o8116.o11676);
         o14622 = o4519.o8116.o11954.o10869();
         o14622.o16396 = o17541.o13617("assets.turrets.hvmHeavyMachineGunSentry.Disabled");
         o14622.position = _loc6_.position;
         o4519.o8116.o11954.o9226(o14622);
         o14622.o16990 = o11381.o3483;
         o4519.o8116.o1184.o1557(param3).defer(o15022);
      }
      
      private function o15022(param1:o8925) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         this.o13376 = param1;
         o13563 = o4519.o8116.o5830.o9009(param1.o910);
         o10230 = o4519.o8116.o5830.o9009(param1.o19739);
         o5176 = o4519.o8116.o5830.o9009(param1.o19939);
         o20440 = o4519.o8116.o5830.o9009(param1.o8045);
         o16166.o10589(o5176);
         o16166.o12265 = false;
         o16166.play();
         o19423 = o4519.o8116.o11676.o6798(null);
         o19423.o10589(o20440);
         o19423.o11525(o14622);
         o19423.play();
         o19423.o12265 = false;
         if(!o8566)
         {
            if(param1.o3846 > 1)
            {
               o6691.rotation = -0.75 * 3.14159265358979;
               _loc2_ = 1;
               while(_loc2_ < param1.o3846)
               {
                  _loc3_ = new o8111();
                  _loc3_.o8566 = true;
                  _loc3_.o16955(o5973,o1432,param1.id);
                  o4519.o8116.o11954.o9226(_loc3_.o6691);
                  _loc3_.o6691.rotation = o6691.rotation + _loc2_ * (3.14159265358979 / 2);
                  _loc3_.o14622.rotation = o14622.rotation + _loc2_ * (3.14159265358979 / 2);
                  o14448.push(_loc3_);
                  _loc2_++;
               }
               o8564(body.position.x,body.position.y);
               o8303 = o1051.o4767(this,0.0333333333333333,o4948);
            }
         }
         o16166.o16280(this,o1490.o16612,o20483);
         o1051.o9310(this,0.05,o29);
      }
      
      private function o29() : void
      {
         o2752 = new o4411(new o5729(o1432 as o17517,o13376),this,o6691,o6691.o16990 + 0.001);
         o2752.o10464 = o10464;
         o2752.o3046 = o3046;
         o14120 = o4519.o8116.o4550(o2752.o4670.o14120);
         o2752.o16280(this,o11468.o6670,o7424);
         o2752.o681.o9824 = false;
      }
      
      private function o20483(param1:Event) : void
      {
         o16166.o12657(o1490.o16612,o20483);
         o1051.o19115(o8303);
         o6141(0,0);
         body.o9946(0);
         o16166.o10589(o13563);
         o16166.gotoAndStop(0);
         o19423.o10589(o10230);
         o19423.gotoAndStop(0);
         o8564(body.position.x,body.position.y);
         if(!o8566)
         {
            o11433 = o4519.o8116.o11954.o10869();
            o11433.o16396 = o17541.o13617("assets.turrets.ammoCounterIcon");
            o11433.position = o6691.position;
            o4519.o8116.o11954.o9226(o11433);
            o11433.o16990 = o11381.ui;
            o1435 = o7559.o4121.create("0",new Point(-2,-16));
            o1435.o10673 = -1;
            o3077();
         }
         o16554 = o1051.o4767(this,0.0333333333333333,o7664);
         o1288 = o1051.o4767(this,0.1,o1590);
         o19477 = o1051.o4767(this,2,o6584);
      }
      
      public function o3077() : void
      {
         if(o8566 && o14622 && o14622.position)
         {
            return;
         }
         if(o1435 && o1435.position)
         {
            o1435.text = o12067().toString();
            o1435.o2440 = o14622.position.x;
            o1435.o20177 = o14622.position.y;
         }
         if(o11433 && o11433.position)
         {
            o11433.position.x = o14622.position.x;
            o11433.position.y = o14622.position.y;
         }
      }
      
      public function o8564(param1:Number, param2:Number) : void
      {
         var _loc4_:int = 0;
         body.o8564(param1,param2);
         var _loc3_:o18509 = o15460.o4078;
         _loc4_ = 0;
         while(_loc4_ < o14448.length)
         {
            _loc3_.x = 0;
            _loc3_.y = 0;
            if(_loc4_ == 0 || _loc4_ == 1)
            {
               _loc3_.x = 50;
            }
            if(_loc4_ == 1 || _loc4_ == 2)
            {
               _loc3_.y = 50;
            }
            _loc3_.rotate(o14622.rotation);
            o14448[_loc4_].o8564(param1 + _loc3_.x,param2 + _loc3_.y);
            o14448[_loc4_].o14622.rotation = o14622.rotation + (_loc4_ + 1) * (3.14159265358979 / 2);
            _loc4_++;
         }
      }
      
      public function o6141(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         body.o6141(param1,param2);
         _loc3_ = 0;
         while(_loc3_ < o14448.length)
         {
            o14448[_loc3_].o6141(param1,param2);
            _loc3_++;
         }
      }
      
      private function o7424(param1:Event) : void
      {
         o16166.gotoAndPlay(0);
      }
      
      private function o12067() : int
      {
         var _loc1_:int = 0;
         if(o2752 && o14448)
         {
            _loc1_ = o2752.o20682;
            var _loc4_:int = 0;
            var _loc3_:* = o14448;
            for each(var _loc2_ in o14448)
            {
               if(_loc2_.o2752)
               {
                  _loc1_ = _loc1_ + _loc2_.o2752.o20682;
               }
            }
         }
         return _loc1_;
      }
      
      override public function o20630(param1:int, param2:ByteArray) : void
      {
         var _loc3_:int = param2.readByte();
         loop1:
         switch(int(_loc3_) - 1)
         {
            case 0:
               o19245();
               break;
            case 1:
               if(o1432 != o4519.o32)
               {
                  o2752.o20682 = param2.readShort();
                  var _loc6_:int = 0;
                  var _loc5_:* = o14448;
                  while(true)
                  {
                     for each(var _loc4_ in o14448)
                     {
                        _loc4_.o2752.o20682 = param2.readShort();
                     }
                     break loop1;
                  }
                  break;
               }
         }
      }
      
      public function o6584() : void
      {
         var _loc1_:ByteArray = new ByteArray();
         _loc1_.writeByte(2);
         _loc1_.writeShort(o2752.o20682);
         var _loc4_:int = 0;
         var _loc3_:* = o14448;
         for each(var _loc2_ in o14448)
         {
            _loc1_.writeShort(_loc2_.o2752.o20682);
         }
         dispatchData(new o2149(this,_loc1_));
      }
      
      private function o1590() : void
      {
         var _loc2_:* = null;
         var _loc1_:* = null;
         if(o5203(currentTarget) == false)
         {
            currentTarget = null;
            _loc2_ = o4519.o8116.o2996.o2368(o13696,body.position.x,body.position.y,o14120,o2752.o11119,o15131,1,o5203);
            _loc2_.defer(o16427);
         }
         else
         {
            _loc1_ = o4519.o8116.o2535.o4816(body.position.x,body.position.y,currentTarget.body.position.x,currentTarget.body.position.y,o8723.o17798,o15131);
            _loc1_.defer(o15742);
         }
      }
      
      private function o5203(param1:o7848) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         if(param1.o8289())
         {
            return false;
         }
         if(o2752.o4670.o7077 != 0 && (param1 is o6925 && o6925(param1).o9121()))
         {
            return false;
         }
         var _loc3_:Number = param1.body.position.x - this.body.position.x;
         var _loc2_:Number = param1.body.position.y - this.body.position.y;
         if(_loc3_ * _loc3_ + _loc2_ * _loc2_ > o14120 * o14120)
         {
            return false;
         }
         return true;
      }
      
      private function o15742(param1:*) : void
      {
         if(param1.x != 0 || param1.y != 0)
         {
            currentTarget = null;
         }
      }
      
      private function o16427(param1:Array) : void
      {
         if(param1.length > 0)
         {
            currentTarget = param1[0];
         }
      }
      
      private function o7664() : void
      {
         o3077();
         var _loc4_:* = 0.0333333333333333;
         if(o17490)
         {
            return;
         }
         if(o2752.o20682 <= 0)
         {
            o2752.o6976();
            if(o12067() <= 0)
            {
               o13626();
            }
            return;
         }
         if(currentTarget == null)
         {
            o2752.o6976();
            return;
         }
         var _loc2_:o18509 = o15460.o16789;
         _loc2_.x = currentTarget.body.position.x - body.position.x;
         _loc2_.y = currentTarget.body.position.y - body.position.y;
         var _loc1_:Number = _loc2_.o13655(o6691.rotation) * -1;
         var _loc3_:* = Number(o18478 * _loc4_ * (_loc1_ < 0?-1:1));
         if(Math.abs(_loc3_) > Math.abs(_loc1_))
         {
            _loc3_ = _loc1_;
         }
         o6691.rotation = o6691.rotation + _loc3_;
         if(Math.abs(_loc3_) <= o2752.o4670.o12804)
         {
            o2752.trigger();
         }
         else
         {
            o2752.o6976();
         }
      }
      
      public function o19245() : void
      {
         var _loc1_:int = 0;
         if(o17490)
         {
            return;
         }
         o17490 = true;
         o15777(o1153);
         o19423.o10589(o4519.o8116.o5830.o9009(o2752.o4670.o10012));
         o6691.o9824 = false;
         body.o19115();
         o2752.o6976();
         _loc1_ = 0;
         while(_loc1_ < o14448.length)
         {
            o14448[_loc1_].o19245();
            _loc1_++;
         }
         o1051.o19115(o16554);
         o1051.o19115(o1288);
         o1051.o19115(o19477);
         o1051.o9310(this,0.1,o19115);
      }
      
      public function o13626() : void
      {
         var _loc2_:* = null;
         var _loc1_:* = undefined;
         if(o17490 == false && o1432 == o4519.o32 && o8566 == false)
         {
            _loc2_ = new ByteArray();
            _loc2_.writeByte(1);
            _loc1_ = this;
            dispatchData(new o2149(_loc1_,_loc2_));
         }
      }
      
      override public function o19115() : void
      {
         o4519.o9721.o2075.o471(o14622);
         if(o1435 != null)
         {
            o1435.o19115();
         }
         o1435 = null;
         if(o11433 != null)
         {
            o4519.o8116.o11954.o17454(o11433);
            o11433.o19115();
         }
         o14622 = null;
         if(o2752)
         {
            o2752.o19115();
         }
         o2752 = null;
         o13696 = null;
         o10464 = null;
         o14448 = null;
         if(o19423)
         {
            o19423.o19115();
         }
         o19423 = null;
         super.o19115();
      }
      
      private function o4948() : void
      {
         o8564(body.position.x,body.position.y);
      }
      
      override public function o18192(param1:ByteArray) : void
      {
      }
      
      override public function o14232(param1:ByteArray, param2:int = 0) : void
      {
      }
   }
}
