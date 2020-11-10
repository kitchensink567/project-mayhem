package
{
   import flash.utils.Dictionary;
   
   public class o1051
   {
      
      public static var o4804:int = 0;
      
      public static var o17941:int = 1;
      
      public static var o19268:Boolean = false;
      
      private static var o17792:int = 0;
      
      private static var o6221:Dictionary = Mem.create(o1051,Dictionary);
      
      private static var o17462:Vector.<o4400> = Mem.create(o1051,Vector.<o4400>);
       
      
      public function o1051()
      {
         super();
      }
      
      public static function o10301() : void
      {
         var _loc3_:int = 0;
         var _loc2_:* = o6221;
         for(var _loc1_ in o6221)
         {
            o19115(_loc1_);
         }
         o6221 = Mem.create(o1051,Dictionary);
         o17462 = Mem.create(o1051,Vector.<o4400>);
      }
      
      public static function o9310(param1:o12600, param2:Number, param3:Function, param4:int = -1, param5:Boolean = true) : int
      {
         return o4767(param1,param2,param3,1,false,param4,param5);
      }
      
      public static function o4767(param1:o12600, param2:Number, param3:Function, param4:int = 0, param5:Boolean = false, param6:int = -1, param7:Boolean = true) : int
      {
         var _loc9_:int = 0;
         if(param5 && param4 == 1)
         {
            param3();
            return 0;
         }
         var _loc12_:* = param4;
         if(param5 && param4 > 1)
         {
            _loc12_--;
         }
         if(param2 == 0)
         {
            _loc9_ = 0;
            _loc9_++;
         }
         var _loc13_:* = false;
         if(o19268)
         {
            _loc13_ = true;
         }
         if(param6 != -1)
         {
            _loc13_ = param6 != o4804;
         }
         var _loc8_:o4400 = Mem.create(o1051,o4400,[1000 * param2,_loc12_,_loc13_,param7]);
         _loc8_.trigger = param3;
         o17792 = Number(o17792) + 1;
         var _loc11_:int = Number(o17792);
         o6221[_loc11_] = _loc8_;
         var _loc10_:o6624 = new o6624();
         _loc10_.initialise(_loc8_,param1,_loc11_);
         _loc8_.o14994 = _loc10_.clear;
         _loc8_.start();
         if(param5)
         {
            param3();
         }
         return _loc11_;
      }
      
      public static function o4793() : void
      {
         var _loc3_:int = 0;
         var _loc2_:* = o6221;
         for each(var _loc1_ in o6221)
         {
            if(_loc1_.running && _loc1_.o14830)
            {
               _loc1_.stop();
               o17462.push(_loc1_);
            }
         }
      }
      
      public static function o12392() : void
      {
         var _loc3_:int = 0;
         var _loc2_:* = o17462;
         for each(var _loc1_ in o17462)
         {
            _loc1_.o12392();
         }
         o17462 = Mem.create(o1051,Vector.<o4400>);
      }
      
      public static function reset(param1:int, param2:Number = -1) : void
      {
         if(param2 >= 0)
         {
            o6221[param1].delay = param2;
         }
         o6221[param1].reset();
         o6221[param1].start();
      }
      
      public static function stop(param1:int) : void
      {
         var _loc2_:o4400 = o6221[param1];
         if(_loc2_ == null)
         {
            return;
         }
         _loc2_.stop();
      }
      
      public static function start(param1:int) : void
      {
         var _loc2_:o4400 = o6221[param1];
         if(_loc2_ == null)
         {
            return;
         }
         _loc2_.start();
      }
      
      public static function o19115(param1:int) : void
      {
         var _loc2_:o4400 = o6221[param1];
         if(_loc2_ == null)
         {
            return;
         }
         _loc2_.o14994();
         _loc2_.stop();
         _loc2_.trigger = null;
         _loc2_.o14994 = null;
         _loc2_.o19115();
         _loc2_ = null;
         delete o6221[param1];
         if(o17462.indexOf(o6221[param1]) != -1)
         {
            o17462.splice(o17462.indexOf(o6221[param1]),1);
         }
      }
      
      public static function delay(param1:int) : Number
      {
         return o6221[param1].delay;
      }
      
      public static function o2764(param1:int, param2:int) : void
      {
         o6221[param1].delay = param2;
      }
      
      public static function getTimer(param1:int) : o4400
      {
         return o6221[param1];
      }
   }
}

import flash.events.Event;

class o6624
{
    
   
   private var o16388:o4400;
   
   private var o13761:o12600;
   
   private var id:int;
   
   function o6624()
   {
      super();
   }
   
   public function initialise(param1:o4400, param2:o12600, param3:int) : void
   {
      this.o16388 = param1;
      this.o13761 = param2;
      this.id = param3;
      param1.o16280(null,o14571.o19115,o12103);
      if(param2 != null)
      {
         param2.o16280(null,o14571.o19115,o12103);
      }
   }
   
   public function clear() : void
   {
      o12103();
   }
   
   private function o12103(param1:Event = null) : void
   {
      if(o16388 != null)
      {
         o16388.o12657(o14571.o19115,o12103);
         o16388 = null;
         o1051.o19115(id);
      }
      if(o13761 != null)
      {
         o13761.o12657(o14571.o19115,o12103);
         o13761 = null;
      }
   }
}
