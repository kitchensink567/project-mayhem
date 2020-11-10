package
{
   import flash.utils.ByteArray;
   
   public class o3047 extends o8023 implements o6212
   {
      
      public static var o2154:o12600 = null;
      
      public static var o15006:Vector.<o3047> = new Vector.<o3047>();
      
      public static var o9892:int = o11851;
      
      public static var o10061:Vector.<o20743> = new Vector.<o20743>();
      
      private static var o15149:o7600 = new o7600(69);
      
      public static var o4547:int = 1;
      
      public static var o470:Boolean = false;
      
      public static const o7539:int = 10000000;
      
      public static const o19593:int = 0;
      
      public static const o13276:int = 1;
      
      public static const o17123:int = 2;
      
      public static const o11851:int = 0;
      
      public static const o8722:int = 1;
      
      public static const o18472:int = 2;
      
      public static var o6037:Vector.<o19173> = null;
      
      public static var o12413:int = -1;
      
      public static var o14789:int = -1;
      
      private static const o10357:int = 10;
       
      
      private var o19505;
      
      protected var o20384:o7600;
      
      public var position:o18509;
      
      public var o10413:Boolean = true;
      
      protected var o20712:int = 0;
      
      public var o4951:int = 0;
      
      private var o20251:int = 0;
      
      private var o16524:int = 0;
      
      public var o5019:String = null;
      
      public function o3047()
      {
         position = new o18509();
         super();
         if(o4519.o13206 && o4519.o13206.o2685)
         {
            o16524 = o4519.o13206.o2685.o750;
            o470 = o14200.o19505.o202.o10211;
            o14789 = o4519.o13206.o2685.o9721;
            o12413 = o4519.o13206.o2685.o4326;
            o4547 = o10176.o13327();
         }
         if(o2154 == null)
         {
            o2154 = new o8023();
            o18442.o10763.o16280(o2154,o1106.o14307,o17875);
         }
         o19505 = this;
         o15006.push(this);
         if(!o6037)
         {
            o6037 = o4519.o8116.o476.o15751();
         }
      }
      
      public static function reset() : void
      {
         o15006.splice(0,4294967295);
         o10061.splice(0,4294967295);
         o9892 = 0;
         o15149.o11478(69);
         o4547 = 1;
         o6037 = null;
      }
      
      private static function o17875(param1:o15974) : void
      {
         if(param1.entity is o18442)
         {
            o1051.o9310(null,0.001,o10705);
         }
      }
      
      private static function o10705() : void
      {
         if(o10061 && o4519.o13206.o8289())
         {
            o10061.length = 0;
            return;
         }
         var _loc2_:o20743 = null;
         var _loc1_:int = 0;
         while(o10061.length > 0)
         {
            _loc2_ = o10061[0];
            if(_loc2_ && _loc2_.o1432.o1710() == true)
            {
               _loc2_.o1432.o18421(_loc2_.o18948,_loc2_.grade,_loc2_.id,_loc2_.o17018,_loc2_.o2840,_loc2_.o12555,_loc2_.o1673,_loc2_.o17014,_loc2_.o5751);
               o10061.splice(0,1);
               _loc1_++;
               if(_loc1_ < 10)
               {
                  continue;
               }
               break;
            }
            break;
         }
      }
      
      public static function o15922(param1:Class = null) : int
      {
         var _loc2_:int = 0;
         if(param1 == o4519.o8116.o20291["com.ninjakiwi.sas4.scripts.enemies.FatZombie"])
         {
            _loc2_ = 10;
         }
         else if(param1 == o4519.o8116.o20291["com.ninjakiwi.sas4.scripts.enemies.Regurgitator"])
         {
            _loc2_ = 300;
         }
         else if(param1 == o4519.o8116.o20291["com.ninjakiwi.sas4.scripts.enemies.Repatitis"])
         {
            _loc2_ = 5;
         }
         else
         {
            _loc2_ = 1;
         }
         return _loc2_;
      }
      
      public function o949(param1:int) : void
      {
         this.o20712 = param1;
         o20384 = new o7600(param1);
      }
      
      public function o3370(param1:Class = null, param2:Number = 0, param3:o18509 = null, param4:int = 0, param5:int = 0, param6:Boolean = false, param7:Boolean = true, param8:Boolean = true, param9:int = 0, param10:int = -1) : o18442
      {
         var _loc11_:* = 0;
         if(param1 == null)
         {
            return null;
         }
         if(param10 != -1)
         {
            _loc11_ = param10;
         }
         else
         {
            _loc11_ = int(o20712);
            o20712 = o20712 + o15922(param1);
         }
         if(o1710() == false && param6 == false)
         {
            if(o10413)
            {
               o10061.push(new o20743(param1,param2,this,_loc11_,param3,param4,param5,param7,param8,param9));
            }
            return null;
         }
         return o18421(param1,param2,_loc11_,param3,param4,param5,param7,param8,param9);
      }
      
      public function o18421(param1:Class, param2:Number, param3:int, param4:o18509 = null, param5:int = 0, param6:int = 0, param7:Boolean = true, param8:Boolean = true, param9:int = 0) : o18442
      {
         var _loc15_:* = null;
         var _loc12_:Boolean = false;
         if(param4 == null)
         {
            param4 = new o18509(position.x,position.y);
         }
         var _loc13_:o18442 = o4519.o8116.o2996.o2998(param1,[param2,param4,param5],param3) as o18442;
         if(_loc13_ == null)
         {
            return null;
         }
         var _loc17_:int = 0;
         var _loc16_:* = o6037;
         for each(var _loc11_ in o6037)
         {
            if(_loc11_ is o14128)
            {
               _loc15_ = _loc11_ as o14128;
               _loc12_ = false;
               _loc13_ = _loc15_.o6249(_loc13_,o14789,o12413,o4547);
            }
         }
         _loc13_.o6691.rotation = o4519.o8116.random.o10418(param3) * 3.14159265358979 * 2;
         _loc13_.o8858 = o4519.o32;
         var _loc10_:Boolean = o4519.o13206.o2685.o4326 == 2?true:false;
         _loc13_.o12555 = param6;
         var _loc14_:Boolean = false;
         if(param9 == 0)
         {
            if(o14620(_loc13_))
            {
               _loc14_ = true;
            }
         }
         else if(param9 == 2)
         {
            _loc14_ = true;
         }
         else if(param9 == 1)
         {
            _loc14_ = false;
         }
         if(_loc14_ && !_loc13_.o17050 && !_loc13_.o18691 && _loc13_.type != 19 && _loc10_ && param9 == 2)
         {
            _loc13_.o17012(o14794.o10865());
         }
         else if(_loc14_ && !_loc13_.o17050 && !_loc13_.o18691 && _loc13_.type != 19 && _loc10_ && o19315(_loc13_))
         {
            _loc13_.o17012(o14794.o10865());
         }
         else if(_loc14_)
         {
            _loc13_.o17012(o14794.o7835(_loc13_.type,_loc13_.grade));
         }
         else
         {
            _loc13_.o17012([]);
         }
         if(param8 == false)
         {
            _loc13_.o20133 = 0;
         }
         if(param7 == false)
         {
            _loc13_.o1918 = 0;
         }
         o2154.dispatchData(new o6961(_loc13_));
         o6249(_loc13_);
         return _loc13_;
      }
      
      public function o19315(param1:o18442) : Boolean
      {
         var _loc2_:Number = o4519.o8116.random.o10418(this.o5973 + param1.o5973 * 137654);
         if(_loc2_ <= o14576.o11078)
         {
            return true;
         }
         return false;
      }
      
      public function o1710() : Boolean
      {
         return o4519.o8116.o2996.o20698(o18442).length < o4519.o8116.o6913;
      }
      
      protected function o6249(param1:o18442) : void
      {
      }
      
      protected function o14620(param1:o18442) : Boolean
      {
         if((int(o4519.o8116.random.o10418(this.o5973 + param1.grade * 137654) * 3) + param1.type) % 3 == 0)
         {
            switch(int(param1.type))
            {
               case 0:
                  if(param1.o5973 % 10 < 4)
                  {
                     return true;
                  }
                  break;
               case 1:
                  if(param1.o5973 % 10 < 6)
                  {
                     return true;
                  }
                  break;
            }
         }
         return false;
      }
      
      public function getCacheAssets() : Vector.<String>
      {
         return null;
      }
      
      public function get o12086() : Boolean
      {
         return true;
      }
      
      public function set o12086(param1:Boolean) : void
      {
      }
      
      public function get o9153() : Boolean
      {
         return false;
      }
      
      public function set o9153(param1:Boolean) : void
      {
      }
      
      public function get o5973() : int
      {
         if(o20251 == 0)
         {
            trace("Enemy State ID: " + o20251 + " Name: " + this + " More: " + this.o5019 + " " + this.name);
         }
         return o20251;
      }
      
      public function set o5973(param1:int) : void
      {
         if(param1 == 0)
         {
            trace("State ID: " + param1 + " Name: " + this + " More: " + this.o5019 + " " + this.name);
         }
         o20251 = param1;
      }
      
      public function get o10887() : int
      {
         return o16524;
      }
      
      public function set o10887(param1:int) : void
      {
         o16524 = param1;
      }
      
      public function get name() : String
      {
         return o5019;
      }
      
      public function set name(param1:String) : void
      {
         o5019 = param1;
      }
      
      public function o20630(param1:int, param2:ByteArray) : void
      {
      }
      
      public function o18192(param1:ByteArray) : void
      {
      }
      
      public function o14232(param1:ByteArray, param2:int = 0) : void
      {
      }
   }
}
