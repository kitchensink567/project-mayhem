package
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.net.FileReference;
   import flash.system.System;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class Mem
   {
      
      private static var o9070:Dictionary = new Dictionary(true);
      
      private static var o20871:Dictionary = new Dictionary(true);
      
      private static var o15746:Timer = null;
       
      
      public function Mem()
      {
         super();
      }
      
      public static function create(param1:Object, param2:Class, param3:Array = null, param4:Vector.<String> = null, param5:Boolean = false) : *
      {
         var _loc6_:* = null;
         if(param3 != null)
         {
            if(param2 == BitmapData)
            {
               _loc6_ = new BitmapData(param3[0],param3[1]);
            }
            else if(param2 == Bitmap)
            {
               _loc6_ = new Bitmap(param3[0]);
            }
            else if(param2 == Point)
            {
               _loc6_ = new Point(param3[0],param3[1]);
            }
            else if(param2 == Event)
            {
               _loc6_ = new Event(param3[0]);
            }
            else if(param2 == o7734)
            {
               _loc6_ = new o7734(param3[0]);
            }
            else
            {
               _loc6_ = new param2();
               _loc6_.initialise.apply(null,param3);
            }
         }
         else if(param5)
         {
            _loc6_ = new param2();
         }
         else
         {
            _loc6_ = o14542.get(param2);
         }
         if(o15746 == null)
         {
            o15746 = new Timer(1000);
            o15746.addEventListener("timer",o8333);
         }
         return _loc6_;
      }
      
      public static function o6362(param1:Object, param2:Function) : Function
      {
         return param2;
      }
      
      public static function o19191() : void
      {
         var _loc5_:* = null;
         System.gc();
         o8333();
         var _loc2_:Dictionary = new Dictionary();
         var _loc12_:int = 0;
         var _loc11_:* = o9070;
         for(var _loc8_ in o9070)
         {
            if(o9070[_loc8_].o9266 == null)
            {
               o9070[_loc8_].o9266 = o13127(o9070[_loc8_].stack);
               o9070[_loc8_].o8995 = o4319(o9070[_loc8_].stack);
            }
            _loc5_ = new o8986#950(_loc8_,o9070[_loc8_].o9266,o9070[_loc8_].o8995);
            _loc2_[_loc8_] = _loc5_;
            if(o20871[_loc8_] !== true && _loc2_[o20871[_loc8_]] != null)
            {
               _loc5_.parent = _loc2_[o20871[_loc8_]];
               _loc2_[o20871[_loc8_]].o19726.push(_loc5_);
            }
            var _loc10_:int = 0;
            var _loc9_:* = _loc2_;
            for each(var _loc4_ in _loc2_)
            {
               if(o20871[_loc4_.o20606] == _loc8_)
               {
                  _loc5_.o19726.push(_loc4_);
                  _loc4_.parent = _loc5_;
               }
            }
         }
         var _loc7_:Vector.<o8986> = new Vector.<o8986#950>();
         var _loc14_:int = 0;
         var _loc13_:* = _loc2_;
         for each(_loc5_ in _loc2_)
         {
            if(_loc5_.parent == null)
            {
               _loc7_.push(_loc5_);
            }
         }
         var _loc1_:Vector.<String> = new Vector.<String>();
         var _loc16_:int = 0;
         var _loc15_:* = _loc7_;
         for each(_loc5_ in _loc7_)
         {
            _loc1_.push(_loc5_.toString());
         }
         var _loc3_:String = "[" + _loc1_.join(",") + "]";
         var _loc6_:FileReference = new FileReference();
         _loc6_.save(_loc3_);
      }
      
      private static function o4319(param1:String) : int
      {
         var _loc2_:String = param1.split("\r").join("").split("\n")[2];
         var _loc3_:String = _loc2_.substring(_loc2_.lastIndexOf(":") + 1,_loc2_.lastIndexOf("]"));
         return int(_loc3_);
      }
      
      private static function o13127(param1:String) : String
      {
         var _loc3_:String = param1.split("\\").join("\\\\").split("\r").join("").split("\n")[2];
         var _loc2_:String = _loc3_.substring(_loc3_.lastIndexOf("[") + 1,_loc3_.lastIndexOf(":"));
         return _loc2_;
      }
      
      private static function o8333(param1:Event = null) : void
      {
         var _loc2_:Boolean = true;
         _loc2_ = false;
         var _loc5_:int = 0;
         var _loc4_:* = o9070;
         for(var _loc3_ in o9070)
         {
            if(o9070[o20871[_loc3_]] === null)
            {
               o20871[_loc3_] = true;
               _loc2_ = true;
            }
         }
      }
   }
}

import flash.utils.getQualifiedClassName;

class o8986#950
{
    
   
   public var o20606 = null;
   
   public var o8995:int = 0;
   
   public var o9266:String = null;
   
   public var parent:o8986#950 = null;
   
   public var o19726:Vector.<o8986#950>;
   
   function o8986#950(param1:*, param2:String, param3:int)
   {
      o19726 = new Vector.<o8986#950>();
      super();
      this.o20606 = param1;
      this.o8995 = param3;
      this.o9266 = param2;
   }
   
   public function toString() : String
   {
      var _loc1_:Vector.<String> = new Vector.<String>();
      var _loc4_:int = 0;
      var _loc3_:* = o19726;
      for each(var _loc2_ in o19726)
      {
         _loc1_.push(_loc2_.toString());
      }
      return "{\"class\":\"" + getQualifiedClassName(o20606) + "\",\"file\":\"" + o9266 + "\",\"line\":" + o8995 + (o19726.length > 0?",\"children\":[" + _loc1_.join(",") + "]":"") + "}";
   }
}
