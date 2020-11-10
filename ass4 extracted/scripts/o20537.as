package
{
   public class o20537 extends o19042
   {
       
      
      public var o10696:Vector.<o20537>;
      
      private var rotation:Number;
      
      private var o14372:o18509;
      
      public function o20537()
      {
         super();
      }
      
      override public function o5179() : void
      {
      }
      
      public function o16955(param1:o4411, param2:o7848, param3:o8925, param4:o18509, param5:Number, param6:o18509, param7:uint, param8:uint, param9:Number, param10:uint) : void
      {
         this.o1432 = param2;
         this.rotation = param5;
         this.o13376 = param3;
         this.o2752 = param1;
         this.o14372 = param4;
         var _loc11_:o14506 = o4519.o8116.o2996.o4816(param2.body.position.x,param2.body.position.y,param2.body.position.x + param6.x * 600,param2.body.position.y + param6.y * 600,param7,param8,null,param3.o18640,param10);
         _loc11_.defer(o12135);
      }
      
      protected function o12135(param1:*, param2:* = null) : void
      {
         var _loc3_:* = null;
         var _loc4_:int = 0;
         var _loc9_:* = undefined;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param1 is Array)
         {
            _loc3_ = param1;
         }
         else
         {
            _loc3_ = [param1];
         }
         _loc4_ = 0;
         while(_loc4_ < _loc3_.length)
         {
            _loc9_ = _loc3_[_loc4_];
            _loc6_ = _loc9_.entity as o6270;
            if(_loc6_)
            {
               _loc7_ = o15460.o4078;
               _loc7_.x = _loc9_.x - o1432.body.position.x;
               _loc7_.y = _loc9_.y - o1432.body.position.y;
               _loc8_ = o13376.o5725 * o20409(_loc7_.o17573);
               _loc8_ = _loc8_ * o2493;
               _loc8_ = _loc8_ * o10886.o1815;
               if(_loc4_ == _loc3_.length - 1)
               {
                  _loc5_ = o13376.o18640 % Math.floor(o13376.o18640);
                  if(_loc5_ > 0 && _loc5_ < 1)
                  {
                     _loc8_ = _loc8_ * _loc5_;
                  }
               }
               o128(o2752,this,_loc6_,_loc8_,rotation);
            }
            _loc4_++;
         }
         if(_loc9_ != null && !(_loc9_.x == 0 && _loc9_.y == 0))
         {
            _loc7_ = o15460.o4078;
            _loc7_.x = _loc9_.x - o14372.x;
            _loc7_.y = _loc9_.y - o14372.y;
            o2752.o13937(o14372.x,o14372.y,_loc7_.rotation,_loc7_.o3215 / 100);
         }
         else
         {
            o2752.o13937(o14372.x,o14372.y,rotation,6);
         }
         o13640();
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
      
      override public function o13640() : void
      {
         o14372 = null;
         super.o13640();
         o10696.push(this);
      }
      
      override public function o19115() : void
      {
         o14372 = null;
         super.o19115();
      }
   }
}
