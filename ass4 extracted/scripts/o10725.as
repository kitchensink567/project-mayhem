package
{
   public class o10725 extends o19042
   {
       
      
      public var o10696:Vector.<o10725>;
      
      private var rotation:Number;
      
      private var o8961:String;
      
      private var o13124:String;
      
      private var o10243:String;
      
      private var o14372:o18509;
      
      private var o3140:Number;
      
      public function o10725()
      {
         super();
      }
      
      override public function o5179() : void
      {
      }
      
      public function o16955(param1:o4411, param2:o7848, param3:o8925, param4:o18509, param5:Number, param6:o18509, param7:uint, param8:uint, param9:Number, param10:uint, param11:String = null, param12:String = null, param13:o18509 = null, param14:Number = 0) : void
      {
         this.o1432 = param2;
         this.rotation = param5;
         this.o13376 = param3;
         this.o2752 = param1;
         this.o14372 = param4;
         if(param14 == 0)
         {
            param14 = o11381.o11085;
         }
         else
         {
            this.o3140 = param14;
         }
         if(param3.o13485 > 0)
         {
            o8961 = o4519.o8116.o5830.o9009(param3.o13485);
         }
         if(param3.o4766 > 0)
         {
            o13124 = o4519.o8116.o5830.o9009(param3.o4766);
         }
         if(param12)
         {
            o8961 = param12;
         }
         if(param11)
         {
            o13124 = param11;
         }
         if(param3.o6307 > 0)
         {
            o10243 = o4519.o8116.o5830.o9009(param3.o6307);
         }
         var _loc17_:Number = param2.body.position.x;
         var _loc16_:Number = param2.body.position.y;
         if(param13)
         {
            this.o14372 = new o18509(param4.x + param13.x,param4.y + param13.y);
            _loc17_ = _loc17_ + param13.x;
            _loc16_ = _loc16_ + param13.y;
         }
         var _loc15_:o14506 = o4519.o8116.o2996.o4816(_loc17_,_loc16_,_loc17_ + param6.x * 600,_loc16_ + param6.y * 600,param7,param8,null,param3.o18640,param10);
         _loc15_.defer(o12135);
      }
      
      protected function o12135(param1:*, param2:* = null) : void
      {
         var _loc3_:* = null;
         var _loc4_:int = 0;
         var _loc13_:* = undefined;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc12_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc9_:* = null;
         var _loc7_:* = null;
         if(param1 is Array)
         {
            _loc3_ = param1;
         }
         else
         {
            _loc3_ = [param1];
         }
         var _loc8_:Boolean = false;
         var _loc10_:int = Math.ceil(Math.round(o13376.o18640 * 10) / 10) as int;
         if(_loc3_.length >= 2 && _loc3_.length == _loc10_)
         {
            _loc8_ = true;
         }
         _loc4_ = 0;
         while(_loc4_ < _loc3_.length)
         {
            _loc13_ = _loc3_[_loc4_];
            _loc5_ = _loc13_.entity as o6270;
            if(_loc5_)
            {
               _loc6_ = o15460.o4078;
               _loc6_.x = _loc13_.x - o1432.body.position.x;
               _loc6_.y = _loc13_.y - o1432.body.position.y;
               _loc12_ = o13376.o5725 * o20409(_loc6_.o17573);
               _loc12_ = _loc12_ * o2493;
               _loc12_ = _loc12_ * o10886.o1815;
               if(_loc4_ == _loc3_.length - 1 && _loc8_)
               {
                  _loc11_ = Math.round(o13376.o18640 * 10) / 10 % Math.floor(o13376.o18640);
                  if(_loc11_ > 0 && _loc11_ < 1)
                  {
                     _loc12_ = _loc12_ * _loc11_;
                  }
               }
               if(o10243)
               {
                  _loc9_ = o4519.o8116.o13427.o11961(o2130,[o10243,o11381.o2131]) as o2130;
                  if(_loc9_ != null)
                  {
                     _loc9_.o6691.position.x = _loc13_.x;
                     _loc9_.o6691.position.y = _loc13_.y;
                     _loc9_.o6691.rotation = rotation + 3.14159265358979;
                  }
               }
               o128(o2752,this,_loc5_,_loc12_,rotation);
            }
            else
            {
               o1517(_loc13_.x,_loc13_.y,rotation);
               _loc7_ = new o257(_loc13_.x,_loc13_.y);
               o4519.o8116.o4812.o4404.o11304.play(0.5,0,0,false,_loc7_.o10088(),0,3);
            }
            _loc4_++;
         }
         if(o13124)
         {
            if(_loc13_ != null && !(_loc13_.x == 0 && _loc13_.y == 0))
            {
               _loc6_ = o15460.o4078;
               _loc6_.x = _loc13_.x - o14372.x;
               _loc6_.y = _loc13_.y - o14372.y;
               o6822(o14372.x,o14372.y,_loc6_.rotation,_loc6_.o3215 / 100);
            }
            else
            {
               o6822(o14372.x,o14372.y,rotation,6);
            }
         }
         o13640();
      }
      
      override public function o13640() : void
      {
         o14372 = null;
         o8961 = null;
         o13124 = null;
         o10243 = null;
         super.o13640();
         o10696.push(this);
      }
      
      override public function o19115() : void
      {
         o14372 = null;
         o8961 = null;
         o13124 = null;
         o10243 = null;
         super.o19115();
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
      
      public function o6822(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:o2130 = o4519.o8116.o13427.o11961(o2130,[o13124,o3140]) as o2130;
         if(_loc5_ != null)
         {
            _loc5_.o6691.position.x = param1;
            _loc5_.o6691.position.y = param2;
            _loc5_.o6691.rotation = param3;
            _loc5_.o6691.o2158 = 7;
            _loc5_.o6691.scaleX = param4;
         }
      }
      
      private function o1517(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:* = null;
         if(o8961)
         {
            _loc4_ = o4519.o8116.o13427.o11961(o2130,[o8961,o11381.o2131]) as o2130;
            if(_loc4_ != null)
            {
               _loc4_.o6691.position.x = param1;
               _loc4_.o6691.position.y = param2;
               _loc4_.o6691.rotation = param3 + 3.14159265358979;
            }
         }
      }
   }
}
