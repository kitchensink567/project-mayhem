package
{
   public class o9347 extends o10384
   {
      
      public static var o6365:uint = o8723.o19523;
       
      
      public var o9288:uint;
      
      public var o3761:uint;
      
      public var o8199:Number = 0;
      
      public var o1589:Number;
      
      public var o12487:Boolean = false;
      
      protected var o14601:o4332 = null;
      
      protected var o4775:o7331 = null;
      
      private var o5647:Number = 0.05;
      
      public var o7953:o18509;
      
      public var o10640:Boolean = true;
      
      public var o6955:Boolean = false;
      
      public function o9347()
      {
         o9288 = o8723.o10217;
         o3761 = o8723.o20122;
         o1589 = o11243;
         o7953 = new o18509();
         super();
      }
      
      public function o2348(param1:int, param2:int, param3:int, param4:uint, param5:uint, param6:Number, param7:int = -1) : void
      {
         var _loc12_:* = null;
         var _loc9_:* = null;
         this.o9288 = param4;
         this.o3761 = param5;
         var _loc8_:o10262 = o4519.o8116.o9869.o1968(0,0,false);
         var _loc16_:o13848 = o4519.o9721.o7352[param2];
         var _loc18_:Vector.<o18509> = o4519.o9721.o7963(_loc16_.o6041[0].id);
         var _loc13_:Vector.<Vector.<o18509>> = o12075.o7521(_loc18_);
         o7953 = new o18509();
         var _loc17_:int = 0;
         var _loc24_:int = 0;
         var _loc23_:* = _loc13_;
         for each(var _loc15_ in _loc13_)
         {
            var _loc22_:int = 0;
            var _loc21_:* = _loc15_;
            for each(var _loc14_ in _loc15_)
            {
               o7953.x = o7953.x + _loc14_.x;
               o7953.y = o7953.y + _loc14_.y;
               _loc17_++;
            }
         }
         if((param5 & o8723.o17798) != 0)
         {
            o10640 = true;
         }
         else
         {
            o10640 = false;
         }
         o7953.x = o7953.x / _loc17_;
         o7953.y = o7953.y / _loc17_;
         var _loc20_:* = 0;
         var _loc28_:int = 0;
         var _loc27_:* = _loc13_;
         for each(_loc15_ in _loc13_)
         {
            var _loc26_:int = 0;
            var _loc25_:* = _loc15_;
            for each(_loc14_ in _loc15_)
            {
               _loc14_.x = _loc14_.x - o7953.x;
               _loc14_.y = _loc14_.y - o7953.y;
               if(_loc14_.x > _loc20_)
               {
                  _loc20_ = Number(_loc14_.x);
               }
               if(_loc14_.y > _loc20_)
               {
                  _loc20_ = Number(_loc14_.y);
               }
            }
         }
         this.o30 = _loc20_;
         var _loc30_:int = 0;
         var _loc29_:* = _loc13_;
         for each(var _loc10_ in _loc13_)
         {
            _loc12_ = new o17761(_loc8_.o2535);
            _loc12_.o14486(_loc10_);
            _loc9_ = o4519.o8116.o20600.o15803(o6365,param4,o3761);
            _loc9_.o10289 = _loc12_.id;
            _loc8_.o14230(_loc9_);
         }
         _loc8_.o13392(o7953);
         var _loc19_:o4332 = o4519.o9721.o12831(param3);
         var _loc11_:o4332 = null;
         if(param7 != -1)
         {
            _loc11_ = o4519.o9721.o12831(param7);
         }
         super.o10783(param1,_loc8_,_loc19_,o4519.o8116.o11676,false);
         this.o6691 = _loc19_;
         this.o14601 = _loc11_;
         if(o16166)
         {
            o16166.gotoAndStop(0);
         }
         if(param7 != -1)
         {
            o4775 = o4519.o9721.o7833(param7);
            if(o4775)
            {
               o4775.gotoAndStop(0);
            }
         }
         if(param6 == 0)
         {
            o12487 = true;
         }
         o1589 = param6;
         this.o11243 = param6;
      }
      
      override public function o5725(param1:o4016) : void
      {
         if((param1.o7869 is o10416 || param1.o16334 is o17517) && !o10640)
         {
            return;
         }
         o317(param1.amount);
         o1483(param1.o9968,param1.o16334);
      }
      
      protected function o317(param1:Number) : void
      {
         o11243 = o11243 - param1;
      }
      
      public function set o11243(param1:Number) : void
      {
         o8199 = param1;
         if(o12487)
         {
            return;
         }
         if(o6955)
         {
            return;
         }
         if(o11243 <= 0)
         {
            if(o6691 != null)
            {
               o4929(0,0,0,0,0,0);
               if(o14601)
               {
                  o4929(0,0,0,0,0,0,1,o14601);
               }
            }
            o6955 = true;
            body.o19115();
         }
      }
      
      public function get o11243() : Number
      {
         return o8199;
      }
      
      override public function o19115() : void
      {
         if(o8289())
         {
            return;
         }
         super.o19115();
      }
      
      override public function get o13917() : Boolean
      {
         return true;
      }
      
      override public function o13423(param1:Number, param2:Number, param3:int, param4:o7848, param5:o7848 = null, param6:int = -1, param7:Number = 0, param8:int = -1, param9:int = 0) : int
      {
         if((param5 is o10416 || param4 is o17517) && !o10640 || o12487)
         {
            return -1;
         }
         return super.o13423(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      public function o7433(param1:Boolean = true) : void
      {
      }
      
      public function o13052(param1:Boolean = true) : void
      {
      }
      
      protected function o1483(param1:Boolean, param2:o7848) : void
      {
         var _loc3_:Number = 0.01 + Math.random();
         if(_loc3_ > o5647)
         {
            _loc3_ = o5647;
         }
         if(!param1)
         {
            if(param2 is o17517 || param2 is o10416)
            {
               o4519.o8116.o4812.o4404.o18609.play(_loc3_);
            }
            else
            {
               o4519.o8116.o4812.o4404.o17023.play(_loc3_);
            }
         }
      }
   }
}
