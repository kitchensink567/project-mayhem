package
{
   public class o15232 extends o19042
   {
       
      
      public var o10696:Vector.<o15232>;
      
      private var target:o7848;
      
      private var o13696:Array;
      
      private var o13909:Number;
      
      private var o4239:Number = 0;
      
      private var o16044:Number = 0;
      
      private var o11457:int = 0;
      
      private var o14110:o18509;
      
      private const delta:Number = 0.03333333333333333;
      
      private var o18839:o9686;
      
      private var o20014:int = -1;
      
      private var o16554:int = -1;
      
      private var o5201:Boolean = false;
      
      private const o16168:Number = 15;
      
      private var o13943:Number = 0;
      
      private var o3532:Boolean = false;
      
      private var o18640:Number = 0;
      
      public function o15232()
      {
         o14110 = new o18509();
         super();
      }
      
      public function o16955(param1:o18509, param2:Number, param3:o18509, param4:o8925, param5:o7848, param6:uint, param7:uint, param8:Array, param9:Array, param10:Boolean = false) : void
      {
         this.o1432 = param5;
         this.o13696 = param9;
         this.o13376 = param4;
         this.o3532 = param10;
         o30 = 15;
         if(param10)
         {
            o18640 = param4.o18640;
            o30 = 45;
         }
         o7742 = 0;
         o13943 = 0;
         this.o6365 = param6;
         this.o3046 = param7;
         this.o10464 = param8;
         o13909 = o4519.o8116.o4550(o13376.o30);
         o16044 = o4519.o8116.o4550(o13376.o16685);
         o11457 = o13376.o20325;
         super.o9943();
         fixture.o16280(this,o2841.o1516,o9663);
         body.o8564(param1.x,param1.y);
         o14110.x = param3.x;
         o14110.y = param3.y;
         body.o6141(o14110.x,o14110.y);
         o6691.rotation = param2;
         this.o16166.play();
         this.o16166.o12265 = true;
         if(o13376.o1089 != 0)
         {
            o18839 = new o9686();
            o18839.init(o4519.o8116.o5830.o9009(o13376.o1089),-75,0,o6691.o16990 - 0.0001,o13376.o15108 / o13376.o16685,this,this.o6691);
         }
         o16554 = o1051.o4767(this,0.0333333333333333,o7664);
         if(param4.o9012)
         {
            o5201 = false;
            o4519.o8116.o2996.o2368(param9,body.position.x,body.position.y,500,param6).defer(o9065);
            o20014 = o1051.o4767(this,0.0333333333333333,o11206);
         }
      }
      
      private function o7664() : void
      {
         o4239 = o4239 + o16044 * 0.0333333333333333;
         o13943 = o13943 + 0.0333333333333333;
         if(o13943 >= 15)
         {
            o13640();
         }
      }
      
      private function o9065(param1:Array) : void
      {
         var _loc2_:int = 0;
         var _loc4_:* = null;
         var _loc3_:Number = NaN;
         o5201 = true;
         _loc2_ = 0;
         while(_loc2_ < param1.length)
         {
            if(param1[_loc2_])
            {
               _loc4_ = o15460.o4078;
               _loc4_.x = param1[_loc2_].body.position.x - body.position.x;
               _loc4_.y = param1[_loc2_].body.position.y - body.position.y;
               _loc3_ = _loc4_.o13655(o6691.rotation);
               if(_loc3_ < 3.14159265358979 / 4 && _loc3_ > -0.785398163397448)
               {
                  target = param1[_loc2_];
                  return;
               }
            }
            _loc2_++;
         }
      }
      
      private function o11206() : void
      {
         if(o5201 == false)
         {
            return;
         }
         if(target == null || target.o8289())
         {
            o1051.o19115(o20014);
            target = null;
            return;
         }
         var _loc2_:o18509 = o15460.o16789;
         _loc2_.x = target.body.position.x - body.position.x;
         _loc2_.y = target.body.position.y - body.position.y;
         var _loc1_:Number = _loc2_.o13655(o6691.rotation) * -1;
         var _loc3_:* = Number(o13376.o7645 * 0.0333333333333333 * (_loc1_ < 0?-1:1));
         if(Math.abs(_loc3_) > Math.abs(_loc1_))
         {
            _loc3_ = _loc1_;
         }
         o6691.rotation = o6691.rotation + _loc3_;
         o14110.rotate(_loc3_);
         body.o6141(o14110.x,o14110.y);
      }
      
      private function o9663(param1:o4217) : void
      {
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(o3532)
         {
            _loc5_ = o7848(o4519.o8116.o2996.o14389(param1.o11541.body));
            if(_loc5_ is o6270 && o18640 > 0)
            {
               _loc6_ = o13376.o5725 * o20409(o4239);
               _loc6_ = _loc6_ * o2493;
               _loc6_ = _loc6_ * o10886.o1815;
               _loc3_ = o4016.o10062().initialise(_loc6_,o13376.o3,o1432,this,o6691.rotation,o13376.o15985,o10886.o12680,0,false,o10886.o7859,0,false,o13376.o1775,o10886.o14685,o10886.o18873,o13376.id);
               o4519.o8116.o8361.o5725(_loc5_ as o6270,_loc3_);
               if(o13376.o7077 > 0 && _loc5_ is o6925)
               {
                  _loc4_ = o6925(_loc5_);
                  o4519.o8116.o8361.o20009(_loc4_,o2940.o19216().initialise(o5973,3,o13376.o7077,o13376.o11401));
               }
               if(o13376.o4687 > 0)
               {
                  _loc5_.o13423(o13376.o4687 * o2493,o13376.o10273,o13376.o3,o1432,this,-1,o13376.o1775,o13376.id);
               }
               o18640 = Number(o18640) - 1;
               if(o18640 > 0)
               {
                  return;
               }
            }
         }
         var _loc2_:o2130 = o4519.o8116.o13427.o11961(o2130,[o4519.o8116.o5830.o9009(o11457)]) as o2130;
         if(_loc2_ != null)
         {
            _loc2_.o6691.position.x = body.position.x;
            _loc2_.o6691.position.y = body.position.y;
            _loc2_.o6691.scaleX = o13909 / 80;
            _loc2_.o6691.scaleY = o13909 / 80;
         }
         o13669();
         if(!o19888)
         {
            o4519.o8116.o2996.o2368(o10464,body.position.x,body.position.y,o13909,o6365,o8723.o3969 | o8723.o18180,Math.ceil(o13376.o18640)).defer(o13172);
         }
         else
         {
            o13640();
         }
      }
      
      private function o13172(param1:Array) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc5_:Number = o13376.o5725 * o20409(o4239);
         _loc5_ = _loc5_ * o2493;
         _loc5_ = _loc5_ * o10886.o1815;
         var _loc7_:int = 0;
         var _loc6_:* = param1;
         for each(var _loc4_ in param1)
         {
            if(_loc4_)
            {
               _loc2_ = o4016.o10062().initialise(_loc5_,o13376.o3,o1432,this,o6691.rotation,o13376.o15985,o10886.o12680,0,false,o10886.o7859,0,false,o13376.o1775,o10886.o14685,o10886.o18873,o13376.id);
               o4519.o8116.o8361.o5725(o6270(_loc4_),_loc2_);
               if(o13376.o7077 > 0 && _loc4_ is o6925)
               {
                  _loc3_ = o6925(_loc4_);
                  o4519.o8116.o8361.o20009(_loc3_,o2940.o19216().initialise(o5973,3,o13376.o7077,o13376.o11401));
               }
               if(o13376.o4687 > 0)
               {
                  _loc4_.o13423(o13376.o4687 * o2493,o13376.o10273,o13376.o3,o1432,this,-1,o13376.o1775,o13376.id);
               }
            }
         }
         o13640();
      }
      
      private function o20409(param1:Number) : Number
      {
         var _loc2_:* = 1;
         var _loc3_:Number = o4519.o8116.o4550(o13376.o14120);
         if(param1 <= _loc3_)
         {
            _loc2_ = Number(_loc2_ * 1);
         }
         else if(param1 <= _loc3_ * 2)
         {
            _loc2_ = Number(_loc2_ * 0.75);
         }
         else
         {
            _loc2_ = Number(_loc2_ * 0.5);
         }
         return _loc2_;
      }
      
      private function o13669() : void
      {
         var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
         o4519.o8116.o4812.o20325.o13157.play(0.5,0,0,false,_loc1_.o10088());
      }
      
      override public function o13640() : void
      {
         o4239 = 0;
         o13943 = 0;
         super.o13640();
         o1051.o19115(o20014);
         o1051.o19115(o16554);
         if(o18839)
         {
            o18839.o19115();
         }
         o18839 = null;
         target = null;
         o13696 = null;
         o10696.push(this);
      }
      
      override public function o19115() : void
      {
         if(o18839)
         {
            o18839.o19115();
         }
         o18839 = null;
         o1051.o19115(o20014);
         o1051.o19115(o16554);
         target = null;
         o13696 = null;
         super.o19115();
      }
   }
}
