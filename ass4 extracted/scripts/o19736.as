package
{
   public class o19736 extends o19042
   {
      
      private static const delta:Number = 0.03333333333333333;
       
      
      public var o10696:Vector.<o19736>;
      
      private var o4239:Number = 0;
      
      private var o16044:Number = 0;
      
      private var o11457:int = 0;
      
      private var o18354:int = 0;
      
      private var o18955:Number = 1;
      
      private var o13909:Number = 1;
      
      private var o15268:Number = 1;
      
      private var o16554:int;
      
      private const o16168:Number = 15;
      
      private var o13943:Number = 0;
      
      public function o19736()
      {
         super();
      }
      
      public function o16955(param1:o18509, param2:Number, param3:o18509, param4:o8925, param5:o7848, param6:uint, param7:uint, param8:Array) : void
      {
         this.o1432 = param5;
         this.o13376 = param4;
         o7742 = 0;
         o13943 = 0;
         this.o6365 = param6;
         this.o3046 = param7;
         this.o10464 = param8;
         this.o15268 = param4.o18640;
         o18955 = 3.14159265358979 / 4;
         o13909 = o4519.o8116.o4550(o13376.o30);
         o16044 = o4519.o8116.o4550(o13376.o16685);
         o11457 = o13376.o20325;
         o18354 = o13376.o13485;
         o30 = 15;
         super.o9943();
         fixture.o16280(this,o2841.o1516,o9663);
         body.o8564(param1.x,param1.y);
         body.o6141(param3.x,param3.y);
         o6691.rotation = param2;
         o16554 = o1051.o4767(this,0.0333333333333333,o7664);
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
      
      private function o9663(param1:o4217) : void
      {
         var _loc2_:* = null;
         var _loc4_:* = null;
         var _loc6_:Number = NaN;
         var _loc3_:* = null;
         var _loc5_:o6270 = o4519.o8116.o2996.o14389(param1.o11541.body) as o6270;
         if(_loc5_)
         {
            _loc2_ = o4519.o8116.o13427.o11961(o2130,[o4519.o8116.o5830.o9009(o11457)]) as o2130;
            if(_loc2_ != null)
            {
               _loc2_.o6691.position.x = body.position.x;
               _loc2_.o6691.position.y = body.position.y;
               _loc2_.o6691.rotation = o6691.rotation;
               _loc2_.o6691.scaleX = o13909 / 200;
               _loc2_.o6691.scaleY = o13909 / 200;
            }
         }
         else
         {
            _loc4_ = o4519.o8116.o13427.o11961(o2130,[o4519.o8116.o5830.o9009(o18354)]) as o2130;
            if(_loc4_ != null)
            {
               _loc4_.o6691.position.x = body.position.x;
               _loc4_.o6691.position.y = body.position.y;
               _loc4_.o6691.rotation = o6691.rotation + 3.14159265358979;
            }
         }
         o13669();
         if(!o19888)
         {
            if(_loc5_)
            {
               _loc6_ = o13376.o5725;
               _loc6_ = _loc6_ * o2493;
               _loc6_ = _loc6_ * o10886.o1815;
               _loc3_ = o4016.o10062().initialise(_loc6_,o13376.o3,o1432,this,0,o13376.o15985,o10886.o12680,0,false,o10886.o7859,0,false,o13376.o1775,o10886.o14685,o10886.o18873,o13376.id);
               o4519.o8116.o8361.o5725(_loc5_,_loc3_);
               if(o13376.o4687 > 0)
               {
                  o7848(_loc5_).o13423(o13376.o4687 * o2493,o13376.o10273,o13376.o3,o1432,this,-1,o13376.o1775,o13376.id);
               }
               o15268 = o15268 - 1;
               o4519.o8116.o2996.o2368(o10464,body.position.x,body.position.y,o13909,o6365,o8723.o3969 | o8723.o18180).defer(o13172);
            }
            else
            {
               o13640();
            }
         }
         else
         {
            o13640();
         }
      }
      
      private function o13172(param1:Array) : void
      {
         var _loc2_:* = null;
         var _loc5_:Number = NaN;
         var _loc3_:* = null;
         var _loc7_:Number = o13376.o5725 * o20409(o4239);
         _loc7_ = _loc7_ * o2493;
         _loc7_ = _loc7_ * o10886.o1815;
         var _loc6_:Array = [];
         var _loc9_:int = 0;
         var _loc8_:* = param1;
         for each(var _loc4_ in param1)
         {
            _loc2_ = o15460.o4078;
            _loc2_.x = _loc4_.body.position.x - body.position.x;
            _loc2_.y = _loc4_.body.position.y - body.position.y;
            _loc5_ = _loc2_.o13655(o6691.rotation);
            if(_loc5_ > -o18955 / 2 && _loc5_ < o18955 / 2)
            {
               _loc6_.push(_loc4_);
            }
         }
         var _loc11_:int = 0;
         var _loc10_:* = _loc6_;
         for each(_loc4_ in _loc6_)
         {
            _loc3_ = o4016.o10062().initialise(_loc7_,o13376.o3,o1432,this,o6691.rotation,o13376.o15985,o10886.o12680,0,false,o10886.o7859,0,false,o13376.o1775,o10886.o14685,o10886.o18873,o13376.id);
            o4519.o8116.o8361.o5725(o6270(_loc4_),_loc3_);
            if(o13376.o4687 > 0)
            {
               _loc4_.o13423(o13376.o4687 * o2493,o13376.o10273,o13376.o3,o1432,this,-1,o13376.o1775,o13376.id);
            }
            o15268 = o15268 - 1;
            if(o15268 > 0)
            {
               continue;
            }
            break;
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
         o1051.o19115(o16554);
         super.o13640();
         o10696.push(this);
      }
      
      override public function o19115() : void
      {
         o1051.o19115(o16554);
         super.o19115();
      }
   }
}
