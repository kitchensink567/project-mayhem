package
{
   public class o1253
   {
       
      
      private var o8586:int = 0;
      
      public var o10239:o12420;
      
      public var o2397:Boolean = false;
      
      public var o9912:String;
      
      public var o6814:String;
      
      public var o1502:String;
      
      public var o20804:String;
      
      public var o14647:String;
      
      private var o13452:o16123;
      
      private var o20783:o16123;
      
      private var o17715:o16123;
      
      private var o18895:o10411;
      
      public var o17656:Vector.<o3743>;
      
      public var o5588:int;
      
      private var o4964:o16123;
      
      private var o12621:o15787;
      
      private var o10130:o16123;
      
      public function o1253()
      {
         o13452 = new o16123(0);
         o20783 = new o16123(0);
         o17715 = new o16123(0);
         o18895 = new o10411(false);
         o17656 = new Vector.<o3743>();
         o4964 = new o16123(0);
         o12621 = new o15787(0);
         o10130 = new o16123(0);
         super();
      }
      
      public function get o5689() : int
      {
         return o8586;
      }
      
      private function o14111(param1:int) : void
      {
         o5588 = param1 / 4 * (param1 / 4) / 20;
      }
      
      public function get grade() : int
      {
         return o13452.value;
      }
      
      public function get o8395() : int
      {
         return o20783.value;
      }
      
      public function get o4680() : int
      {
         return o17715.value;
      }
      
      public function get o1419() : Boolean
      {
         return o18895.value;
      }
      
      public function set o1419(param1:Boolean) : void
      {
         o18895.value = param1;
      }
      
      public function set grade(param1:int) : void
      {
         o13452.value = param1;
      }
      
      public function set o8395(param1:int) : void
      {
         o20783.value = param1;
      }
      
      public function set o4680(param1:int) : void
      {
         o17715.value = param1;
      }
      
      public function o13234(param1:int) : o3743
      {
         var _loc4_:int = 0;
         var _loc3_:* = this.o17656;
         for each(var _loc2_ in this.o17656)
         {
            if(_loc2_ != null && _loc2_.o4589 != null && _loc2_.o4589.o18172 == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get o10518() : int
      {
         if(o4964.value == 0)
         {
            o1281();
         }
         return o4964.value;
      }
      
      public function set o10518(param1:int) : void
      {
         o4964.value = param1;
      }
      
      public function get o15372() : int
      {
         return o10239.id;
      }
      
      public function get o5520() : int
      {
         return o17656.length;
      }
      
      public function get o19901() : Boolean
      {
         return o10239.o19901;
      }
      
      public function set o19901(param1:Boolean) : void
      {
         o10239.o19901 = param1;
      }
      
      public function get o13296() : Number
      {
         return o12621.value;
      }
      
      public function set o13296(param1:Number) : void
      {
         o12621.value = param1;
      }
      
      public function get o263() : int
      {
         return o10130.value;
      }
      
      public function set o263(param1:int) : void
      {
         o10130.value = param1;
      }
      
      public function o3897(param1:o11855, param2:Function) : void
      {
         var _loc3_:int = o10239.o19419[0];
         param1.init(o10239.o19419[0],param2);
      }
      
      public function o8815(param1:o16681) : o20006
      {
         return new o20006(o10239.o19419[0],param1,114,61);
      }
      
      public function o19133(param1:o16681) : o20006
      {
         return new o20006(o10239.o19419[0],param1,519,225);
      }
      
      public function o11074(param1:o16681) : o20006
      {
         return new o20006(o10239.o14623[0],param1,0,0);
      }
      
      public function init(param1:o12420, param2:int, param3:o17849, param4:int, param5:int) : o1253
      {
         this.o8586 = param5;
         this.o14111(param1.o20133);
         this.o10239 = param1;
         this.o13452.value = param2;
         if(param2 == 0)
         {
            param4 = 0;
         }
         this.o17715.value = param4;
         o9912 = param3.o9009(param1.name);
         o6814 = param3.o9009(param1.o7962);
         o1502 = param3.o9009(param1.o7962);
         o20804 = "???? Comes equipped with    hardened graphene goggles for near perfect unimpeded vision.";
         o14647 = "??? " + o9912;
         o20783.value = param1.o20559;
         return this;
      }
      
      public function o1281() : void
      {
         if(o4964.value == 0)
         {
            o4964.value = o3021();
         }
      }
      
      public function o18465(param1:int) : int
      {
         var _loc3_:int = 0;
         var _loc5_:o3743 = this.o17656[param1];
         var _loc4_:o14018 = _loc5_.o4589;
         var _loc2_:int = _loc4_.o11830(this,_loc5_.grade);
         return _loc3_ + _loc2_;
      }
      
      public function o3021() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.o10239.o9421;
         _loc1_ = 0;
         while(_loc1_ < o17656.length)
         {
            _loc2_ = _loc2_ + o18465(_loc1_);
            _loc1_++;
         }
         return _loc2_;
      }
      
      public function o1686(param1:o14200, param2:Object) : o1253
      {
         var _loc5_:int = 0;
         var _loc7_:* = null;
         var _loc10_:* = null;
         if(param2[97] == null)
         {
            _loc5_ = param1.data.o8334();
         }
         else
         {
            _loc5_ = param2[97];
         }
         var _loc12_:int = param2[105];
         var _loc11_:int = param2[2];
         var _loc13_:o12420 = o4519.o8116.o9511.o4256[_loc12_];
         var _loc4_:o17849 = o4519.o8116.o16619;
         if(param2[102] != null)
         {
            o17715.value = int(param2[102]);
         }
         else
         {
            o17715.value = 0;
         }
         var _loc8_:Vector.<o2347> = new Vector.<o2347>();
         var _loc3_:Array = param2[101];
         o17656 = new Vector.<o3743>();
         var _loc15_:int = 0;
         var _loc14_:* = _loc3_;
         for each(var _loc9_ in _loc3_)
         {
            _loc7_ = new o3743().o8169(param1,_loc9_);
            o17656.push(_loc7_);
            _loc10_ = _loc7_.o8265.o11697;
            _loc8_.push(_loc10_);
         }
         if(param2[404] != null)
         {
            o13296 = param2[404] / 100;
         }
         if(param2[426] != null)
         {
            o263 = param2[426];
         }
         var _loc6_:o7126 = new o7126(_loc13_,_loc8_,o13296);
         this.init(_loc6_,_loc11_,_loc4_,o17715.value,_loc5_);
         if(param2[106] == null)
         {
            o10518 = this.o3021();
         }
         else
         {
            this.o10518 = int(param2[103]);
            if(o10518 == 0)
            {
               o10518 = this.o3021();
            }
         }
         if(param2[104] != null)
         {
            o2397 = param2[104];
         }
         if(param2[544] != null)
         {
            o1419 = param2[544];
         }
         else
         {
            o1419 = false;
         }
         return this;
      }
      
      public function o8169(param1:o14200, param2:Object) : o1253
      {
         return o1686(param1,param2);
      }
      
      public function o19599() : Object
      {
         var _loc3_:Object = {};
         _loc3_[97] = this.o5689;
         _loc3_[105] = this.o10239.id;
         _loc3_[2] = this.o13452.value;
         var _loc1_:Array = [];
         var _loc5_:int = 0;
         var _loc4_:* = this.o17656;
         for each(var _loc2_ in this.o17656)
         {
            _loc1_.push(_loc2_.o14264(false));
         }
         _loc3_[101] = _loc1_;
         _loc3_[102] = o17715.value;
         _loc3_[106] = o10518;
         _loc3_[104] = o2397;
         _loc3_[404] = Math.round(o13296 * 100);
         _loc3_[426] = o263;
         _loc3_[544] = o1419;
         return _loc3_;
      }
      
      public function o14264() : Object
      {
         return o19599();
      }
   }
}
