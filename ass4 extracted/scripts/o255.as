package
{
   import flash.utils.Dictionary;
   
   public class o255
   {
       
      
      private var o2535:o20139 = null;
      
      private var o20498:Dictionary = null;
      
      private var o13554:Vector.<o11910> = null;
      
      public function o255()
      {
         super();
      }
      
      public function initialise(param1:o20139) : void
      {
         o20498 = Mem.create(this,Dictionary) as Dictionary;
         o13554 = Mem.create(this,Vector.<o11910>) as Vector.<o11910>;
         this.o2535 = param1;
         param1.addEventListener(o708.TYPE,o17286);
         param1.addEventListener(o11910.TYPE,o7087);
         param1.addEventListener(o16198.TYPE,o20083);
         param1.addEventListener(o16266.TYPE,o8381);
      }
      
      private function o17286(param1:o708) : void
      {
         var _loc2_:o10262 = o20498[param1.body];
         _loc2_.position.x = param1.x;
         _loc2_.position.y = param1.y;
      }
      
      private function o7087(param1:o11910) : void
      {
         var _loc3_:o10262 = o20498[param1.o6133];
         var _loc2_:o10262 = o20498[param1.o3428];
         if(_loc3_ == null || _loc2_ == null)
         {
            return;
         }
         var _loc4_:o663 = Mem.create(this,o663) as o663;
         _loc4_.initialise(_loc3_,_loc2_,param1.o4688,param1.o20286);
         _loc3_.dispatchData(_loc4_);
         var _loc5_:o663 = Mem.create(this,o663) as o663;
         _loc5_.initialise(_loc2_,_loc3_,-param1.o4688,-param1.o20286);
         _loc2_.dispatchData(_loc5_);
         o13554.push(param1);
      }
      
      private function o20083(param1:o16198) : void
      {
         var _loc6_:o10262 = o20498[param1.o6133];
         var _loc3_:o10262 = o20498[param1.o3428];
         if(_loc6_ == null || _loc3_ == null)
         {
            return;
         }
         var _loc5_:o18091 = Mem.create(this,o18091) as o18091;
         _loc5_.initialise(_loc6_,_loc3_);
         _loc6_.dispatchData(_loc5_);
         var _loc2_:o18091 = Mem.create(this,o18091) as o18091;
         _loc2_.initialise(_loc3_,_loc6_);
         _loc3_.dispatchData(_loc2_);
         var _loc8_:int = 0;
         var _loc7_:* = o13554;
         for each(var _loc4_ in o13554)
         {
            if(_loc4_.o6133 == param1.o6133 && _loc4_.o3428 == param1.o3428 || _loc4_.o6133 == param1.o3428 && _loc4_.o3428 == param1.o6133)
            {
               o13554.splice(o13554.indexOf(_loc4_),1);
               break;
            }
         }
      }
      
      private function o8381(param1:o16266) : void
      {
      }
      
      public function o4816(param1:Number, param2:Number, param3:Number, param4:Number, param5:uint, param6:uint, param7:Vector.<o10262> = null) : o14506
      {
         var _loc10_:o14506 = Mem.create(this,o14506) as o14506;
         var _loc8_:Vector.<int> = null;
         if(param7 != null)
         {
            _loc8_ = Mem.create(this,Vector.<int>) as Vector.<int>;
            var _loc14_:int = 0;
            var _loc13_:* = param7;
            for each(var _loc12_ in param7)
            {
               _loc8_.push(_loc12_.id);
            }
         }
         var _loc11_:o16124 = o2535.o4816(param1,param2,param3,param4,param5,param6,_loc8_);
         var _loc9_:o6601 = new o6601(_loc10_,_loc11_,o20498);
         _loc11_.defer(_loc9_.o5111);
         return _loc10_;
      }
      
      public function o1968(param1:int, param2:Number = 0, param3:Boolean = false, param4:Boolean = true) : o10262
      {
         var _loc5_:o10262 = Mem.create(this,o10262) as o10262;
         _loc5_.initialise(param1,o2535,param2,param3,param4);
         o20498[_loc5_.id] = _loc5_;
         return _loc5_;
      }
      
      public function clear(param1:Vector.<o10262> = null) : void
      {
         var _loc4_:int = 0;
         var _loc3_:* = o20498;
         for each(var _loc2_ in o20498)
         {
            if(_loc2_ != null)
            {
               if(!(param1 != null && param1.indexOf(_loc2_) != -1))
               {
                  _loc2_.o19115();
               }
            }
         }
         o20498 = Mem.create(this,Dictionary);
      }
      
      public function o10722(param1:uint) : o10262
      {
         return o20498[param1];
      }
      
      public function o17488(param1:o10262, param2:o10262) : Boolean
      {
         var _loc5_:int = 0;
         var _loc4_:* = o13554;
         for each(var _loc3_ in o13554)
         {
            if(_loc3_.o6133 == param1.id && _loc3_.o3428 == param2.id || _loc3_.o6133 == param2.id && _loc3_.o3428 == param1.id)
            {
               return true;
            }
         }
         return false;
      }
      
      public function o8182(param1:o10262) : Vector.<o10262>
      {
         var _loc3_:Vector.<o10262> = Mem.create(this,Vector.<o10262>) as Vector.<o10262>;
         var _loc5_:int = 0;
         var _loc4_:* = o13554;
         for each(var _loc2_ in o13554)
         {
            if(_loc2_.o6133 == param1.id)
            {
               _loc3_.push(o20498[_loc2_.o3428]);
            }
            if(_loc2_.o3428 == param1.id)
            {
               _loc3_.push(o20498[_loc2_.o6133]);
            }
         }
         return _loc3_;
      }
      
      public function o16561(param1:o10262) : Boolean
      {
         var _loc4_:int = 0;
         var _loc3_:* = o13554;
         for each(var _loc2_ in o13554)
         {
            if(_loc2_.o6133 == param1.id)
            {
               return true;
            }
            if(_loc2_.o3428 == param1.id)
            {
               return true;
            }
         }
         return false;
      }
   }
}

import flash.utils.Dictionary;

class o6601
{
    
   
   private var promise:o16124;
   
   private var o4259:o16124;
   
   private var o20498:Dictionary;
   
   function o6601(param1:o16124, param2:o16124, param3:Dictionary)
   {
      super();
      this.promise = param1;
      this.o4259 = param2;
      this.o20498 = param3;
   }
   
   public function o5111(param1:Object) : void
   {
      if(o4259.data.body == -1)
      {
         promise.data = {
            "body":null,
            "fixture":null,
            "x":o4259.data.x,
            "y":o4259.data.y
         };
      }
      else if(o20498[o4259.data.body] != null)
      {
         promise.data = {
            "body":o20498[o4259.data.body],
            "fixture":o4259.data.fixture,
            "x":o4259.data.x,
            "y":o4259.data.y
         };
      }
      else
      {
         promise.data = {
            "body":1,
            "fixture":o4259.data.o14879,
            "x":o4259.data.x,
            "y":o4259.data.y
         };
      }
      promise = null;
      o4259 = null;
      o20498 = null;
   }
}
