package
{
   import flash.events.Event;
   import flash.net.FileReference;
   import flash.sampler.DeleteObjectSample;
   import flash.sampler.NewObjectSample;
   import flash.sampler.Sample;
   import flash.sampler.clearSamples;
   import flash.sampler.getSamples;
   import flash.sampler.getSize;
   import flash.system.System;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   import flash.utils.getQualifiedClassName;
   
   public class o6708
   {
       
      
      private var o16554:Timer = null;
      
      private var o13025:Number = 0;
      
      private var o8042:Dictionary;
      
      public function o6708()
      {
         o8042 = new Dictionary(true);
         super();
      }
      
      private function o7664(param1:Event = null) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc6_:int = 0;
         var _loc5_:* = getSamples();
         for each(var _loc2_ in getSamples())
         {
            if(!(_loc2_ == null || _loc2_.time < 0 || _loc2_.time < o13025))
            {
               if(_loc2_ is NewObjectSample)
               {
                  _loc3_ = NewObjectSample(_loc2_);
                  if(_loc3_.object != undefined)
                  {
                     if(_loc3_.stack != null)
                     {
                        o8042[_loc3_.object] = _loc3_.stack;
                     }
                  }
               }
               else if(_loc2_ is DeleteObjectSample)
               {
                  _loc4_ = DeleteObjectSample(_loc2_);
               }
               o13025 = _loc2_.time;
            }
         }
      }
      
      public function o19191() : void
      {
         o18868 = function(param1:String):Pack
         {
            var _loc3_:* = null;
            param1 = param1.split("::").join(".").split("/").join(".");
            if(o9699[param1] != null)
            {
               return o9699[param1];
            }
            var _loc2_:Array = param1.split(".");
            var _loc4_:Pack = o2626;
            if(_loc2_.length > 1)
            {
               _loc3_ = _loc2_.concat().splice(0,_loc2_.length - 1).join(".");
               _loc4_ = o18868(_loc3_);
            }
            if(_loc4_ == null)
            {
               _loc4_ = o2626;
            }
            o9699[param1] = new Pack(param1);
            _loc4_.o19726.push(o9699[param1]);
            return o9699[param1];
         };
         o18994 = function(param1:*, param2:Array):void
         {
            var _loc3_:* = null;
            var _loc4_:* = null;
            var _loc5_:int = 0;
            while(_loc5_ < param2.length && (param2[_loc5_].o9266 == null || param2[_loc5_].name == "com.ninjakiwi.blister.utils::Mem$/create"))
            {
               _loc5_++;
            }
            if(_loc5_ < param2.length)
            {
               _loc3_ = o18868(param2[_loc5_].name);
               _loc4_ = new o1742(getQualifiedClassName(param1),getSize(param1),param2[_loc5_].o9266,param2[_loc5_].o8995);
               o9215.push(_loc4_);
               _loc3_.o9215.push(_loc4_);
            }
         };
         System.gc();
         var o2626:Pack = new Pack("root");
         var o9699:Dictionary = new Dictionary();
         o9699["root"] = o2626;
         var o9215:Vector.<o1742> = new Vector.<o1742>();
         var _loc3_:int = 0;
         var _loc2_:* = o8042;
         for(object in o8042)
         {
            o18994(object,o8042[object]);
         }
         var _loc5_:int = 0;
         var _loc4_:* = o9699;
         for each(o6157 in o9699)
         {
            o6157.o9215 = o6157.o9215.sort(function(param1:o1742, param2:o1742):Number
            {
               if(param1.size > param2.size)
               {
                  return -1;
               }
               if(param1.size < param2.size)
               {
                  return 1;
               }
               return 0;
            });
            o6157.o19726 = o6157.o19726.sort(function(param1:Pack, param2:Pack):Number
            {
               if(param1.size > param2.size)
               {
                  return -1;
               }
               if(param1.size < param2.size)
               {
                  return 1;
               }
               return 0;
            });
            if(o6157.o19726.length > 0)
            {
               o8339("asdasdasds");
            }
         }
         var o12476:String = o2626.toString();
         var o15133:FileReference = new FileReference();
         o15133.save(o12476);
      }
   }
}

class Pack
{
    
   
   public var id:String = null;
   
   public var o19726:Vector.<Pack>;
   
   public var o9215:Vector.<o1742>;
   
   public var o16416:int = -1;
   
   function Pack(param1:String)
   {
      o19726 = new Vector.<Pack>();
      o9215 = new Vector.<o1742>();
      super();
      this.id = param1;
   }
   
   public function get size() : int
   {
      if(o16416 != -1)
      {
         return o16416;
      }
      o16416 = 0;
      var _loc4_:int = 0;
      var _loc3_:* = o9215;
      for each(var _loc1_ in o9215)
      {
         o16416 = o16416 + _loc1_.size;
      }
      var _loc6_:int = 0;
      var _loc5_:* = o19726;
      for each(var _loc2_ in o19726)
      {
         o16416 = o16416 + _loc2_.size;
      }
      return o16416;
   }
   
   public function toString() : String
   {
      var _loc3_:int = 0;
      var _loc4_:* = null;
      var _loc5_:* = null;
      var _loc1_:Vector.<String> = new Vector.<String>();
      _loc3_ = 0;
      while(_loc3_ < o9215.length)
      {
         _loc4_ = o9215[_loc3_];
         _loc1_.push(_loc4_.toString());
         _loc3_++;
      }
      var _loc2_:Vector.<String> = new Vector.<String>();
      _loc3_ = 0;
      while(_loc3_ < o19726.length)
      {
         _loc5_ = o19726[_loc3_];
         _loc2_.push(_loc5_.toString());
         _loc3_++;
      }
      return "{\"id\":\"" + id + "\",\"size\":" + size + (_loc1_.length > 0?", \"allocations\":[" + _loc1_.join(",") + "]":"") + (_loc2_.length > 0?", children:[" + _loc2_.join(",") + "]":"") + "}";
   }
}

class o1742
{
    
   
   public var type:String = null;
   
   public var size:int = 0;
   
   public var o9266:String = null;
   
   public var o8995:int = 0;
   
   function o1742(param1:String, param2:int, param3:String, param4:int)
   {
      super();
      this.type = param1;
      this.size = param2;
      this.o9266 = param3;
      this.o8995 = param4;
   }
   
   public function toString() : String
   {
      return "{\"type\":\"" + type + "\",\"size\":" + size + ", \"file\":\"" + o9266.split("\\").join("\\\\") + "\", \"line\":" + o8995 + "}";
   }
}
