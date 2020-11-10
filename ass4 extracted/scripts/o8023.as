package
{
   import flash.events.Event;
   import flash.utils.Dictionary;
   
   public class o8023 implements o12600
   {
      
      private static var o12604:Dictionary = Mem.create(o8023,Dictionary) as Dictionary;
       
      
      private var o2154:o16104 = null;
      
      private var o2624:Vector.<o6385#443> = null;
      
      protected var o5836:Boolean = false;
      
      private var o2687:Boolean = false;
      
      private var o10103:Vector.<Function>;
      
      public function o8023()
      {
         o10103 = new Vector.<Function>();
         super();
         o2154 = Mem.create(this,o16104) as o16104;
         o2624 = Mem.create(this,Vector.<o6385#443>) as Vector.<o6385#443>;
      }
      
      public function o5988(param1:Function) : void
      {
         if(o8289())
         {
            return;
         }
         o10103.push(param1);
      }
      
      public function o19926(param1:o12600, param2:int, param3:Function) : void
      {
         if(o2687 && o8289())
         {
            return;
         }
         var _loc4_:o6201 = new o6201();
         _loc4_.initialise(this,param1,param3,param2);
      }
      
      public function o16280(param1:o12600, param2:int, param3:Function) : void
      {
         if(o2687 && o8289())
         {
            return;
         }
         var _loc8_:int = 0;
         var _loc7_:* = o2624;
         for each(var _loc5_ in o2624)
         {
            if(_loc5_.type == param2 && _loc5_.o5734 == param3)
            {
               return;
            }
         }
         var _loc4_:o6531 = null;
         if(param1 != null)
         {
            _loc4_ = new o6531();
            _loc4_.initialise(this,param1,param2,param3);
         }
         var _loc6_:o6385 = Mem.create(this,o6385#443) as o6385#443;
         _loc6_.initialise(param2,param3,param1,_loc4_);
         this.o2624.push(_loc6_);
         o2154.addEventListener(param2,param3);
      }
      
      public function o12657(param1:int, param2:Function) : void
      {
         if(o2687 && o8289())
         {
            return;
         }
         var _loc4_:* = null;
         var _loc6_:int = 0;
         var _loc5_:* = o2624;
         for each(var _loc3_ in o2624)
         {
            if(_loc3_.type == param1 && _loc3_.o5734 == param2)
            {
               _loc4_ = _loc3_;
               break;
            }
         }
         if(_loc4_ != null)
         {
            o2624.splice(o2624.indexOf(_loc4_),1);
            if(_loc4_.o3335 != null)
            {
               _loc4_.o3335.clear();
            }
            _loc4_.o3335 = null;
            _loc4_.o19754 = null;
            _loc4_.o5734 = null;
         }
         o2154.removeEventListener(param1,param2);
      }
      
      public function o15777(param1:int) : void
      {
         if(o2687 && o8289())
         {
            return;
         }
         var _loc2_:o7734 = o12604[param1];
         if(_loc2_ == null)
         {
            _loc2_ = Mem.create(this,o7734,[String(param1)]);
         }
         else
         {
            delete o12604[param1];
         }
         _loc2_.o11493 = this;
         o2154.dispatchEvent(_loc2_);
         _loc2_.o11493 = null;
         o12604[param1] = _loc2_;
      }
      
      public function dispatchData(param1:Event) : void
      {
         if(o2687 && o8289())
         {
            return;
         }
         o2154.dispatchEvent(param1);
      }
      
      public function o19115() : void
      {
         if(o2687 && o8289())
         {
            return;
         }
         o5836 = true;
         o15777(o14571.o19115);
         var _loc4_:int = 0;
         var _loc3_:* = o10103;
         for each(var _loc2_ in o10103)
         {
            _loc2_(this);
         }
         o10103 = null;
         var _loc6_:int = 0;
         var _loc5_:* = o2624;
         for each(var _loc1_ in o2624)
         {
            o2154.removeEventListener(_loc1_.type,_loc1_.o5734);
         }
         o2624 = Mem.create(this,Vector.<o6385#443>) as Vector.<o6385#443>;
      }
      
      public function o8289() : Boolean
      {
         return o5836;
      }
   }
}

import flash.events.Event;

class o6201
{
    
   
   private var o20425:Function = null;
   
   private var o12568:int = 0;
   
   private var parent:o12600 = null;
   
   function o6201()
   {
      super();
   }
   
   public function initialise(param1:o12600, param2:o12600, param3:Function, param4:int) : void
   {
      this.parent = param1;
      this.o20425 = param3;
      this.o12568 = param4;
      param1.o16280(param2,param4,o8212);
   }
   
   private function o8212(param1:Event = null) : void
   {
      o20425(param1);
      parent.o12657(o12568,o8212);
      o20425 = null;
      parent = null;
   }
}

import flash.events.Event;

class o6531
{
    
   
   private var parent:o12600 = null;
   
   private var o20425:Function = null;
   
   private var o12568:int = 0;
   
   private var o13761:o12600 = null;
   
   function o6531()
   {
      super();
   }
   
   public function initialise(param1:o12600, param2:o12600, param3:int, param4:Function) : void
   {
      this.parent = param1;
      this.o13761 = param2;
      this.o20425 = param4;
      this.o12568 = param3;
      param2.o16280(null,o14571.o19115,o3335);
   }
   
   public function clear() : void
   {
      o13761.o12657(o14571.o19115,o3335);
      o13761 = null;
   }
   
   private function o3335(param1:Event = null) : void
   {
      if(o13761 != null)
      {
         o13761.o12657(o14571.o19115,o3335);
      }
      parent.o12657(o12568,o20425);
      o20425 = null;
      parent = null;
      o13761 = null;
   }
}

class o6385#443
{
    
   
   public var type:int;
   
   public var o5734:Function;
   
   public var o19754:o12600;
   
   public var o3335:o6531;
   
   function o6385#443()
   {
      super();
   }
   
   public function initialise(param1:int, param2:Function, param3:o12600, param4:o6531) : void
   {
      this.type = param1;
      this.o5734 = param2;
      this.o19754 = param3;
      this.o3335 = param4;
   }
}
