package
{
   public class o13847 extends o19042
   {
      
      private static const o18250:Number = 0.03333333333333333;
      
      private static const o17616:Number = 15;
      
      private static const o13877:Number = 10;
       
      
      public var o10696:Vector.<o13847>;
      
      public var o9725:Vector.<o18509>;
      
      public var o3527:Vector.<o19627>;
      
      public var o11066:Vector.<o19627>;
      
      public var o395:Vector.<o13847>;
      
      private var o30:Number = 1;
      
      private var o15678:o7848 = null;
      
      private var o18354:int = 0;
      
      private var o11457:int = 0;
      
      public var o13373:o7848 = null;
      
      private var o14968:Vector.<o18509>;
      
      private var o1363:o4332;
      
      private var o14601:o4332;
      
      private var o10471:Boolean = false;
      
      private var o10687:Boolean = false;
      
      private var o12901:Boolean = false;
      
      private var o13150:int = -1;
      
      private var o10848:int = -1;
      
      public function o13847()
      {
         o9725 = new Vector.<o18509>();
         o3527 = new Vector.<o19627>();
         o11066 = new Vector.<o19627>();
         o14968 = new Vector.<o18509>();
         super();
      }
      
      public function o16955(param1:o8925, param2:o7848, param3:Number, param4:o18509, param5:uint, param6:uint, param7:Array, param8:uint, param9:Vector.<o13847>, param10:o4411) : void
      {
         var _loc11_:int = 0;
         var _loc13_:* = null;
         var _loc12_:* = null;
         this.o1432 = param2;
         this.o13373 = param2;
         this.o13376 = param1;
         this.o7742 = 0;
         this.o6365 = param5;
         this.o3046 = param6;
         this.o10464 = param7;
         this.o11457 = o13376.o20325;
         this.o18354 = o13376.o13485;
         this.o30 = param1.o30;
         this.o395 = param9;
         this.o2752 = param10;
         super.o9943();
         param9.push(this);
         if(param2 && param2.body)
         {
            this.body.o8564(param2.body.position.x,param2.body.position.y);
            o6691.rotation = param3;
         }
         o4519.o8116.o2996.o2368(param7,body.position.x,body.position.y,o30,param5,o8723.o3969 | o8723.o18180).defer(o10646);
         _loc11_ = 0;
         while(_loc11_ < 15)
         {
            o9725.push(new o18509(0,0));
            _loc13_ = o4519.o8116.o13427.o11961(o19627,[o4519.o8116.o5830.o9009(o11457)]) as o19627;
            if(_loc13_ != null)
            {
               o3527.push(_loc13_);
            }
            _loc12_ = o4519.o8116.o13427.o11961(o19627,["assets.effects.protonArcBoltPartical",o11381.o2131]) as o19627;
            if(_loc12_ != null)
            {
               o11066.push(_loc12_);
            }
            _loc11_++;
         }
         o6691.o9824 = false;
         o1363 = o4519.o8116.o11954.o10869();
         o14601 = o4519.o8116.o11954.o10869();
      }
      
      public function o2318() : void
      {
         var _loc1_:Number = NaN;
         if(o10471)
         {
            o13640();
         }
         if(o1432 && o1432.body)
         {
            this.body.position.x = o1432.body.position.x;
            this.body.position.y = o1432.body.position.y;
         }
         if(o15678 == null || o15678.o8289())
         {
            o12293();
         }
         if(o15678)
         {
            _loc1_ = o5157(this.o1432.o6691,this.o15678.o6691);
            if(_loc1_ > o30)
            {
               o15678 = null;
               o10687 = true;
            }
         }
         if(o10687)
         {
            o10687 = false;
            o4519.o8116.o2996.o2368(o10464,body.position.x,body.position.y,o30,o6365,o8723.o3969 | o8723.o18180).defer(o10646);
         }
         if(o15678)
         {
            o2391();
            o6822();
            o5725(o15678);
         }
         else
         {
            o10687 = true;
            o10471 = false;
         }
         if(o13150)
         {
            o1051.o19115(o13150);
         }
         o13150 = o1051.o9310(this,0.0333333333333333,o12293);
      }
      
      public function o12293() : void
      {
         var _loc3_:int = 0;
         var _loc2_:* = o11066;
         for each(var _loc1_ in o11066)
         {
            if(_loc1_)
            {
               _loc1_.o6691.o9824 = false;
            }
         }
         var _loc5_:int = 0;
         var _loc4_:* = o3527;
         for each(_loc1_ in o3527)
         {
            if(_loc1_)
            {
               _loc1_.o6691.o9824 = false;
            }
         }
         o10687 = true;
         o15678 = null;
         o12901 = false;
      }
      
      private function o5157(param1:o4332, param2:o4332) : Number
      {
         if(param1.position == null && param2.position == null)
         {
            return 0;
         }
         var _loc5_:Number = param1.position.x;
         var _loc3_:Number = param1.position.y;
         var _loc6_:Number = param2.position.x;
         var _loc4_:Number = param2.position.y;
         return Math.sqrt((_loc6_ - _loc5_) * (_loc6_ - _loc5_) + (_loc4_ - _loc3_) * (_loc4_ - _loc3_));
      }
      
      private function o2391() : void
      {
         var _loc2_:* = NaN;
         var _loc9_:Number = this.o2752.o14372.x;
         var _loc12_:Number = this.o2752.o14372.y;
         var _loc5_:Number = o15678.body.position.x;
         var _loc6_:Number = o15678.body.position.y;
         var _loc4_:Number = o5157(this.o1432.o6691,this.o15678.o6691);
         var _loc7_:Number = this.body.position.x + (_loc4_ < 150?_loc4_:150) * Math.cos(o1432.o6691.rotation);
         var _loc10_:Number = this.body.position.y + (_loc4_ < 150?_loc4_:150) * Math.sin(o1432.o6691.rotation);
         var _loc8_:Number = o15678.body.position.x + (_loc4_ < 150?_loc4_:150) * Math.cos(!!o15678.o6691?o15678.o6691.rotation:0);
         var _loc1_:Number = o15678.body.position.y + (_loc4_ < 150?_loc4_:150) * Math.sin(!!o15678.o6691?o15678.o6691.rotation:0);
         var _loc3_:int = 0;
         var _loc11_:o18509 = new o18509();
         _loc2_ = 0;
         while(_loc2_ <= 1)
         {
            if(_loc3_ < o9725.length)
            {
               o9725[_loc3_].x = Math.pow(_loc2_,3) * (_loc5_ + 3 * (_loc7_ - _loc8_) - _loc9_) + 3 * Math.pow(_loc2_,2) * (_loc9_ - 2 * _loc7_ + _loc8_) + 3 * _loc2_ * (_loc7_ - _loc9_) + _loc9_;
               o9725[_loc3_].y = Math.pow(_loc2_,3) * (_loc6_ + 3 * (_loc10_ - _loc1_) - _loc12_) + 3 * Math.pow(_loc2_,2) * (_loc12_ - 2 * _loc10_ + _loc1_) + 3 * _loc2_ * (_loc10_ - _loc12_) + _loc12_;
               _loc3_++;
               _loc2_ = Number(_loc2_ + 1 / 15);
               continue;
            }
            break;
         }
      }
      
      private function o6822() : void
      {
         var _loc1_:int = 0;
         var _loc2_:o18509 = new o18509();
         _loc1_ = 0;
         while(_loc1_ < 15)
         {
            if(_loc1_ < o9725.length)
            {
               if(_loc1_ < o3527.length && o3527[_loc1_] != null)
               {
                  o3527[_loc1_].o6691.position.x = o9725[_loc1_].x;
                  o3527[_loc1_].o6691.position.y = o9725[_loc1_].y;
                  o3527[_loc1_].o6691.scaleX = 0.15 + Math.random() / 3;
                  o3527[_loc1_].o6691.scaleY = 0.15 + Math.random() / 3;
                  o3527[_loc1_].o6691.o16990 = o11381.o2131 + 0.01;
                  o3527[_loc1_].o6691.o9824 = !!o12901?Math.random() * 10 > 8?false:true:false;
               }
               if(_loc1_ < o11066.length && o11066[_loc1_] != null)
               {
                  if(_loc1_ - 1 >= 0)
                  {
                     o1363 = o11066[_loc1_ - 1].o6691;
                     o14601 = o11066[_loc1_].o6691;
                  }
                  else
                  {
                     o1363 = o11066[0].o6691;
                     o14601.position = new o2415();
                     o14601.position.x = o2752.o14372.x;
                     o14601.position.y = o2752.o14372.y;
                  }
                  _loc2_.x = o1363.position.x - o14601.position.x;
                  _loc2_.y = o1363.position.y - o14601.position.y;
                  if(_loc1_ < o11066.length && o11066[_loc1_] != null)
                  {
                     o11066[_loc1_].o6691.position.x = o9725[_loc1_].x;
                     o11066[_loc1_].o6691.position.y = o9725[_loc1_].y;
                     o11066[_loc1_].o6691.rotation = _loc2_.rotation;
                     o11066[_loc1_].o6691.scaleX = o4519.o8116.o19711(o5157(o1363,o14601)) * 2;
                     o11066[_loc1_].o6691.o9824 = o12901;
                  }
               }
               _loc1_++;
               continue;
            }
            break;
         }
         o12901 = true;
      }
      
      private function o4824() : void
      {
         o10848 = -1;
      }
      
      private function o5725(param1:o7848) : void
      {
         var _loc3_:* = null;
         var _loc6_:* = null;
         var _loc7_:Number = NaN;
         var _loc4_:* = null;
         var _loc2_:* = null;
         if(param1 == null || o2752 == null || param1.o6691 == null || param1.o6691.position == null)
         {
            return;
         }
         var _loc5_:o6270 = param1 as o6270;
         if(_loc5_ && o10848 == -1)
         {
            _loc3_ = o4519.o8116.o13427.o11961(o2130,[o4519.o8116.o5830.o9009(o13376.o6307)]) as o2130;
            if(_loc3_ != null)
            {
               _loc3_.o6691.position.x = param1.o6691.position.x;
               _loc3_.o6691.position.y = param1.o6691.position.y;
               _loc3_.o6691.rotation = param1.o6691.rotation;
               _loc3_.o6691.scaleX = 0.5;
               _loc3_.o6691.scaleY = 0.5;
               o10848 = o1051.o9310(this,0.5,o4824);
            }
         }
         if(!o19888)
         {
            if(_loc5_)
            {
               _loc6_ = o15460.o4078;
               _loc6_.x = o15678.o6691.position.x - o1432.body.position.x;
               _loc6_.y = o15678.o6691.position.y - o1432.body.position.y;
               _loc7_ = o13376.o5725 * o20409(_loc6_.o17573);
               _loc7_ = _loc7_ * o2493;
               _loc7_ = _loc7_ * o10886.o1815;
               if(param1 && o2752.o4670.o7077 > 0 && param1 is o6925)
               {
                  _loc4_ = o6925(param1);
                  o4519.o8116.o8361.o20009(_loc4_,o2940.o19216().initialise(this.o5973,3,o2752.o4670.o7077,o2752.o4670.o11401));
               }
               if(this.o19888)
               {
                  return;
               }
               _loc2_ = o4016.o10062().initialise(_loc7_,o2752.o4670.o3,o2752.o1432,null,0,o2752.o4670.o15985,this.o10886.o12680,0,false,this.o10886.o7859,0,false,o2752.o4670.o1775,this.o10886.o14685,this.o10886.o18873,o2752.o4670.id);
               o4519.o8116.o8361.o5725(o6270(param1),_loc2_);
               if(param1 && o2752.o4670.o4687 > 0)
               {
                  param1.o13423(o2752.o4670.o4687,o2752.o4670.o10273,o2752.o4670.o3,o2752.o1432,null,-1,o2752.o4670.o1775,o2752.o4670.id);
               }
            }
         }
      }
      
      private function o20409(param1:Number) : Number
      {
         var _loc2_:* = 1;
         var _loc3_:Number = o4519.o8116.o4550(o13376.o14120);
         if(param1 <= _loc3_ * _loc3_)
         {
            _loc2_ = Number(_loc2_ * 1);
         }
         else if(param1 <= _loc3_ * _loc3_ * 4)
         {
            _loc2_ = Number(_loc2_ * 0.75);
         }
         else
         {
            _loc2_ = Number(_loc2_ * 0.5);
         }
         return _loc2_;
      }
      
      private function o10646(param1:Array) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:* = null;
         var _loc5_:* = 0;
         var _loc7_:int = 0;
         var _loc6_:* = param1;
         for each(var _loc4_ in param1)
         {
            if(_loc4_ is o18442 || _loc4_ is o5640)
            {
               if(_loc4_ && _loc4_.body && _loc4_.body.position && this.body && this.body.position)
               {
                  _loc2_ = o5157(this.o1432.o6691,_loc4_.o6691);
                  if(_loc5_ == 0)
                  {
                     _loc3_ = _loc4_;
                     _loc5_ = _loc2_;
                  }
                  if(_loc2_ < _loc5_)
                  {
                     _loc3_ = _loc4_;
                     _loc5_ = _loc2_;
                  }
               }
            }
         }
         if(_loc3_ == null)
         {
            o10471 = true;
         }
         o15678 = _loc3_;
         o10687 = false;
      }
      
      private function o19805() : void
      {
         var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
         o4519.o8116.o4812.o20325.o13157.play(0.5,0,0,false,_loc1_.o10088());
      }
      
      override public function o13640() : void
      {
         var _loc1_:int = 0;
         var _loc4_:int = 0;
         var _loc3_:* = o395;
         for each(var _loc2_ in o395)
         {
            if(_loc2_ == this)
            {
               o10696.splice(_loc1_,1);
               break;
            }
            _loc1_++;
         }
         o1051.o19115(o13150);
         o1051.o19115(o10848);
         o10696.push(this);
      }
      
      override public function o19115() : void
      {
         var _loc1_:int = 0;
         var _loc5_:int = 0;
         var _loc4_:* = o395;
         for each(var _loc2_ in o395)
         {
            if(_loc2_ == this)
            {
               o10696.splice(_loc1_,1);
               break;
            }
            _loc1_++;
         }
         if(o11066)
         {
            var _loc7_:int = 0;
            var _loc6_:* = o11066;
            for each(var _loc3_ in o11066)
            {
               _loc3_.o13640();
            }
         }
         o11066 = null;
         if(o3527)
         {
            var _loc9_:int = 0;
            var _loc8_:* = o3527;
            for each(_loc3_ in o3527)
            {
               _loc3_.o13640();
            }
         }
         o3527 = null;
         if(o1363)
         {
            o1363.o19115();
         }
         o1363 = null;
         if(o14601)
         {
            o14601.o19115();
         }
         o14601 = null;
         o1051.o19115(o13150);
         o1051.o19115(o10848);
         super.o13640();
         super.o19115();
      }
   }
}
