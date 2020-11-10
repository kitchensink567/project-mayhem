package
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class o7848 extends o8023 implements o6212
   {
      
      protected static const o11557:Number = 1.0;
      
      private static var o4461:Dictionary = new Dictionary();
       
      
      private var id:int = 0;
      
      private var o16524:int = 0;
      
      public var o6691:o4332 = null;
      
      public var body:o10262 = null;
      
      public var o30:Number = 0;
      
      public var o16166:o7331 = null;
      
      private var o11676:o16864 = null;
      
      private var o18985:o11310;
      
      private var o18735:Boolean = true;
      
      private var o14080:Boolean = false;
      
      public var o5019:String = null;
      
      protected var o10107:Vector.<o10111>;
      
      private var o19329:int = -1;
      
      private var o11666:int = 0;
      
      protected var o16738:Vector.<o1683>;
      
      private var o570:int = -1;
      
      private var o2083:int = 0;
      
      private const o12947:int = 15;
      
      public function o7848()
      {
         o10107 = new Vector.<o10111>();
         o16738 = new Vector.<o1683>();
         super();
      }
      
      public function o10783(param1:int, param2:o10262, param3:o4332, param4:o16864, param5:Boolean = true) : void
      {
         this.body = param2;
         this.o6691 = param3;
         this.o5973 = param1;
         this.o11676 = param4;
         if(param3 != null && param5)
         {
            o10698();
         }
         if(param3 != null)
         {
            if(param3.o16396 != null)
            {
               o16166 = param4.o6798(param3.o16396.assetID);
            }
            else
            {
               o16166 = param4.o6798(null);
            }
            o16166.o11525(param3);
         }
         else
         {
            o16166 = param4.o6798(null);
         }
      }
      
      override public function o19115() : void
      {
         if(o8289())
         {
            return;
         }
         if(o16166 != null)
         {
            o16166.o19115();
         }
         if(o6691 != null)
         {
            o6691.o19115();
         }
         if(o18985 != null)
         {
            o18985.o19115();
         }
         super.o19115();
      }
      
      public function getCacheAssets() : Vector.<String>
      {
         return null;
      }
      
      public function o10698() : void
      {
         var _loc1_:* = null;
         if(body == null)
         {
            return;
         }
         o6691.position = body.position;
         if(!body.o8940)
         {
            _loc1_ = {"value":0};
            body.o2535.o20896(body.id,_loc1_);
            o18985 = new o11310(this,_loc1_);
            o1051.o4767(this,0.0333333333333333,o18985.o5111);
         }
      }
      
      public function set x(param1:Number) : void
      {
         body.position.x = param1;
      }
      
      public function set y(param1:Number) : void
      {
         body.position.y = param1;
      }
      
      public function get x() : Number
      {
         return body.position.x;
      }
      
      public function get y() : Number
      {
         return body.position.y;
      }
      
      protected function o16922(param1:o11417) : void
      {
         if(o6691 != null)
         {
            o6691.o16396 = param1.o16396;
         }
      }
      
      public function get o12086() : Boolean
      {
         return o18735;
      }
      
      public function set o12086(param1:Boolean) : void
      {
         o18735 = param1;
      }
      
      public function get o9153() : Boolean
      {
         return o14080;
      }
      
      public function set o9153(param1:Boolean) : void
      {
         o14080 = param1;
      }
      
      public function get o5973() : int
      {
         var _loc1_:int = 0;
         if(id == 0 && !(this as o17517) is o17517)
         {
            _loc1_ = 0;
         }
         return id;
      }
      
      public function set o5973(param1:int) : void
      {
         var _loc2_:int = 0;
         if(param1 == 0 && !(this as o17517) is o17517)
         {
            _loc2_ = 0;
         }
         id = param1;
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
         param1.writeFloat(body.position.x);
         param1.writeFloat(body.position.y);
      }
      
      public function o14232(param1:ByteArray, param2:int = 0) : void
      {
         body.o8564(param1.readFloat(),param1.readFloat());
      }
      
      public function o13423(param1:Number, param2:Number, param3:int, param4:o7848, param5:o7848 = null, param6:int = -1, param7:Number = 0, param8:int = -1, param9:int = 0) : int
      {
         var _loc11_:o17517 = this as o17517;
         if(o8289() || _loc11_ != null && _loc11_.o12487)
         {
            return -1;
         }
         if(param1 == 0 || param2 == 0)
         {
            return -1;
         }
         var _loc12_:* = param2;
         if(param2 == -1)
         {
            _loc12_ = 1;
         }
         o11666 = Number(o11666) + 1;
         var _loc10_:int = Number(o11666);
         var _loc13_:o10111 = o10111.o1346().init(_loc10_,param1 / _loc12_ * 1,param2,param3,param4,param5,param7,param8,param9);
         o10107.push(_loc13_);
         if(param6 == -1)
         {
            param6 = param3;
         }
         _loc13_.o14661 = o11739(param6,param2);
         if(o19329 == -1)
         {
            o19329 = o1051.o4767(this,1,o15967,0,true);
         }
         return _loc10_;
      }
      
      public function o17092(param1:int) : void
      {
         var _loc3_:int = 0;
         var _loc2_:* = null;
         _loc3_ = o10107.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = o10107[_loc3_];
            if(_loc2_.id == param1)
            {
               o10107.splice(_loc3_,1);
               o11882(_loc2_.o14661);
               break;
            }
            _loc3_--;
         }
         if(o10107.length == 0)
         {
            o1051.o19115(o19329);
            o19329 = -1;
         }
      }
      
      public function o19542() : void
      {
         var _loc1_:int = 0;
         _loc1_ = o10107.length - 1;
         while(_loc1_ >= 0)
         {
            o17092(o10107[_loc1_].id);
            _loc1_--;
         }
      }
      
      public function o10281(param1:int) : Boolean
      {
         var _loc3_:int = 0;
         var _loc2_:* = null;
         _loc3_ = 0;
         while(_loc3_ < o10107.length)
         {
            _loc2_ = o10107[_loc3_];
            if(_loc2_.id == param1)
            {
               return true;
            }
            _loc3_++;
         }
         return false;
      }
      
      public function o14145(param1:int) : o10111
      {
         var _loc3_:int = 0;
         var _loc2_:* = null;
         _loc3_ = 0;
         while(_loc3_ < o10107.length)
         {
            _loc2_ = o10107[_loc3_];
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function o977(param1:int, param2:Number) : void
      {
         var _loc3_:o10111 = o14145(param1);
         if(_loc3_)
         {
            _loc3_.o6193 = param2;
            o969(_loc3_.o14661,param2);
         }
      }
      
      protected function o15967() : void
      {
         var _loc2_:int = 0;
         var _loc1_:* = null;
         _loc2_ = 0;
         while(_loc2_ < o10107.length)
         {
            _loc1_ = o10107[_loc2_];
            o4519.o8116.o8361.o5725(o6270(this),o4016.o10062().initialise(_loc1_.o11436,_loc1_.o3,_loc1_.o19754,_loc1_.o7869,0,0,0,0,true,false,_loc1_.o18236,false,_loc1_.o11244,-1,false,_loc1_.o1783));
            if(_loc1_.o6193 != -1)
            {
               _loc1_.o6193 = _loc1_.o6193 - 1;
               if(_loc1_.o6193 <= 0)
               {
                  o10107.splice(_loc2_,1);
                  _loc2_--;
                  o11882(_loc1_.o14661);
               }
            }
            _loc2_++;
         }
         if(o10107.length == 0)
         {
            o1051.o19115(o19329);
            o19329 = -1;
         }
      }
      
      public function o11739(param1:int, param2:Number = 0) : int
      {
         o2083 = Number(o2083) + 1;
         var _loc3_:int = Number(o2083);
         var _loc4_:o1683 = new o1683(_loc3_,param1,param2);
         o16738.push(_loc4_);
         if(o570 == -1)
         {
            o570 = o1051.o4767(this,1,o2732,0,true);
         }
         o17308();
         return _loc3_;
      }
      
      public function o11882(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         _loc2_ = 0;
         while(_loc2_ < o16738.length)
         {
            _loc3_ = o16738[_loc2_];
            if(_loc3_.id == param1)
            {
               o16738.splice(_loc2_,1);
               break;
            }
            _loc2_++;
         }
         o17308();
         if(o16738.length == 0)
         {
            o1051.o19115(o570);
            o570 = -1;
         }
      }
      
      public function o969(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:* = null;
         _loc3_ = 0;
         while(_loc3_ < o16738.length)
         {
            _loc4_ = o16738[_loc3_];
            if(_loc4_.id == param1)
            {
               _loc4_.o6193 = param2;
               break;
            }
            _loc3_++;
         }
      }
      
      protected function o2732() : void
      {
         var _loc1_:int = 0;
         var _loc2_:* = null;
         _loc1_ = 0;
         while(_loc1_ < o16738.length)
         {
            _loc2_ = o16738[_loc1_];
            if(_loc2_.o6193 != -1)
            {
               _loc2_.o6193 = _loc2_.o6193 - 1;
               if(_loc2_.o6193 <= 0)
               {
                  o16738.splice(_loc1_,1);
                  _loc1_--;
               }
            }
            _loc1_++;
         }
         o17308();
         if(o16738.length == 0)
         {
            o1051.o19115(o570);
            o570 = -1;
         }
      }
      
      protected function o17308() : void
      {
      }
      
      public function o4929(param1:int, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:Number = 1, param8:o4332 = null) : void
      {
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:int = o5056(param1,param2,param3);
         if(o4461[_loc11_])
         {
            _loc9_ = o4461[_loc11_];
         }
         else
         {
            _loc10_ = Mem.create(this,o6163) as o6163;
            _loc10_.o7003 = 0;
            _loc10_.o1562 = param1;
            _loc10_.o20642 = param2;
            _loc10_.o20621 = param3;
            _loc9_ = _loc10_.o17114();
            _loc9_ = _loc9_.filter(o17988);
            _loc9_[15] = param7;
            o4461[_loc11_] = _loc9_;
         }
         if(param8 != null)
         {
            param8.colorTransform = Vector.<Number>(_loc9_);
            param8.o6034 = Vector.<Number>([param4,param5,param6,0]);
         }
         else if(o6691 != null)
         {
            o6691.colorTransform = Vector.<Number>(_loc9_);
            o6691.o6034 = Vector.<Number>([param4,param5,param6,0]);
         }
      }
      
      private function o17988(param1:Number, param2:int, param3:Array) : Boolean
      {
         if((param2 + 1) % 5 == 0)
         {
            return false;
         }
         return true;
      }
      
      private function o5056(param1:int, param2:int, param3:int) : Number
      {
         return param1 << 16 | param2 << 8 | param3;
      }
   }
}

class o11310
{
    
   
   private var entity:o7848;
   
   private var o4001:Object;
   
   function o11310(param1:o7848, param2:Object)
   {
      super();
      this.entity = param1;
      this.o4001 = param2;
   }
   
   public function o5111() : void
   {
      if(o4001.value != 0)
      {
         entity.o6691.rotation = o4001.value;
      }
   }
   
   public function o19115() : void
   {
      this.entity = null;
      this.o4001 = null;
   }
}
