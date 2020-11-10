package
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class o19322 extends o8023
   {
      
      public static const o15532:int = 1;
      
      public static const o8710:int = 2;
      
      public static const o1667:int = 3;
      
      public static const o15588:int = 4;
      
      public static const o12561:int = 1;
      
      public static const o19456:int = 2;
      
      public static const o10180:int = 3;
      
      public static const o15294:int = 4;
       
      
      public var o11620:Dictionary;
      
      public var o17638:Dictionary;
      
      private var o3187:Boolean = false;
      
      private var o18893:Boolean = false;
      
      public var o6795:Vector.<o8347>;
      
      private var o14877:int;
      
      public var o2876:Dictionary;
      
      private var o19572:o16124;
      
      public function o19322()
      {
         o11620 = new Dictionary();
         o17638 = new Dictionary();
         o6795 = new Vector.<o8347>();
         super();
         o14877 = int(Math.random() * 2147483647);
      }
      
      public function o5557() : void
      {
         var _loc4_:* = null;
         var _loc8_:* = null;
         var _loc2_:* = null;
         var _loc6_:* = null;
         var _loc1_:Dictionary = new Dictionary();
         var _loc3_:Dictionary = new Dictionary();
         var _loc9_:Dictionary = new Dictionary();
         var _loc5_:o17849 = o4519.o8116.o16619;
         var _loc11_:int = 0;
         var _loc10_:* = o11620;
         for each(_loc4_ in o11620)
         {
            if(_loc4_.o11570 == 1)
            {
               _loc1_[_loc5_.o9009(_loc4_.name)] = _loc4_;
            }
            else if(_loc4_.o11570 == 2)
            {
               _loc3_[_loc5_.o9009(_loc4_.name)] = _loc4_;
            }
            else if(_loc4_.o11570 == 3)
            {
               _loc9_[_loc5_.o9009(_loc4_.name)] = _loc4_;
            }
         }
         var _loc13_:int = 0;
         var _loc12_:* = _loc3_;
         for(var _loc7_ in _loc3_)
         {
            _loc8_ = _loc1_[_loc7_];
            _loc2_ = _loc3_[_loc7_];
            _loc6_ = _loc9_[_loc7_];
            if(_loc8_ != null)
            {
               _loc8_.o13099 = _loc2_;
               _loc2_.o10329 = _loc8_;
            }
            if(_loc6_ != null)
            {
               _loc6_.o10329 = _loc2_;
               _loc2_.o13099 = _loc6_;
            }
         }
      }
      
      private function o17897() : void
      {
         throw new Error("should already be preloaded");
      }
      
      private function o1716() : void
      {
         throw new Error("should already be preloaded");
      }
      
      public function o1557(param1:int) : o16124
      {
         id = param1;
         var promise:o16124 = new o16124();
         if(o3187)
         {
            promise.data = o11620[id];
            return promise;
         }
         throw new Error("should already be preloaded");
      }
      
      public function o18554(param1:int) : o16124
      {
         id = param1;
         var promise:o16124 = new o16124();
         if(o18893)
         {
            promise.data = o17638[id];
            return promise;
         }
         throw new Error("should already be preloaded");
      }
      
      public function o3762(param1:int) : Vector.<o8925>
      {
         var _loc2_:* = undefined;
         if(o3187)
         {
            _loc2_ = new Vector.<o8925>();
            var _loc5_:int = 0;
            var _loc4_:* = o11620;
            for each(var _loc3_ in o11620)
            {
               if(_loc3_.o11412 == param1)
               {
                  _loc2_.push(_loc3_);
               }
            }
            return _loc2_;
         }
         throw new Error("should already be preloaded");
      }
      
      public function o17420() : o16124
      {
         var promise:o16124 = new o16124();
         o17638 = new Dictionary();
         var o5174:o16124 = null;
         o5174 = o4519.o8116.o970.o17485(7);
         o5174.defer(function(param1:ByteArray):void
         {
            var _loc2_:* = null;
            param1.position = 0;
            while(param1.bytesAvailable > 0)
            {
               _loc2_ = new o15109();
               _loc2_.load(param1);
               o17638[_loc2_.id] = _loc2_;
            }
            o18893 = true;
            promise.data = o17638;
         });
         return promise;
      }
      
      public function o19348() : o16124
      {
         var promise:o16124 = new o16124();
         var o5174:o16124 = null;
         o5174 = o4519.o8116.o970.o17485(8);
         o5174.defer(function(param1:ByteArray):void
         {
            var _loc2_:* = null;
            param1.position = 0;
            o11620 = new Dictionary();
            o6795 = new Vector.<o8347>();
            while(param1.bytesAvailable > 0)
            {
               _loc2_ = new o8347();
               _loc2_.load(param1);
               _loc2_.o457 = o17638[_loc2_.o17638];
               o6795.push(_loc2_);
               o11620[_loc2_.id] = _loc2_;
            }
            o3187 = true;
            promise.data = o11620;
         });
         return promise;
      }
      
      public function o19373() : o16124
      {
         var promise:o16124 = new o16124();
         o2876 = new Dictionary();
         var o5174:o16124 = null;
         o5174 = o4519.o8116.o970.o17485(9);
         o5174.defer(function(param1:ByteArray):void
         {
            var _loc2_:* = null;
            param1.position = 0;
            while(param1.bytesAvailable > 0)
            {
               _loc2_ = new o9418();
               _loc2_.load(param1);
               o2876[_loc2_.id] = _loc2_;
            }
            promise.data = o2876;
         });
         return promise;
      }
   }
}
