package
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class o17849
   {
       
      
      public var o9620:Dictionary = null;
      
      public function o17849()
      {
         super();
         o9620 = Mem.create(this,Dictionary) as Dictionary;
      }
      
      public function o16403(param1:String, param2:o3135) : o16124
      {
         o1337 = param1;
         loader = param2;
         var promise:o16124 = Mem.create(this,o16124) as o16124;
         loader.o17485(o1337).defer(function(param1:ByteArray):void
         {
            o5466(o1337.indexOf("scripts") >= 0,param1);
            promise.data = o9620;
         });
         return promise;
      }
      
      private function o615(param1:String) : String
      {
         param1 = param1.substr(param1.indexOf("\"") + 1);
         param1 = param1.substr(0,param1.lastIndexOf("\""));
         var _loc2_:String = "\\";
         var _loc3_:String = "\"";
         param1 = param1.split(_loc2_ + _loc3_).join(_loc3_);
         param1 = param1.split(_loc3_ + _loc3_).join(_loc3_);
         return param1;
      }
      
      public function o5466(param1:Boolean, param2:ByteArray) : void
      {
         var _loc11_:* = null;
         var _loc7_:int = 0;
         var _loc12_:* = null;
         var _loc4_:* = null;
         var _loc9_:int = 0;
         var _loc10_:* = null;
         var _loc8_:* = null;
         var _loc6_:String = param2.readUTFBytes(param2.length);
         _loc6_ = _loc6_.split("\r").join("");
         var _loc3_:Array = _loc6_.split("\n");
         var _loc14_:int = 0;
         var _loc13_:* = _loc3_;
         for each(var _loc5_ in _loc3_)
         {
            _loc11_ = _loc5_.split(",");
            if(_loc11_.length >= 2)
            {
               _loc7_ = _loc5_.indexOf(",");
               _loc12_ = _loc5_.substr(0,_loc7_);
               _loc12_ = _loc12_.split("\"").join("");
               _loc4_ = _loc5_.substr(_loc7_ + 1);
               _loc9_ = _loc4_.indexOf("\",\"");
               if(_loc9_ > 0)
               {
                  _loc10_ = _loc4_.substr(0,_loc9_ + 1);
                  _loc10_ = o615(_loc10_);
                  _loc8_ = _loc4_.substr(_loc9_ + 2);
                  _loc8_ = o615(_loc8_);
               }
               else
               {
                  _loc10_ = _loc4_;
                  _loc10_ = o615(_loc10_);
               }
               if(param1 == false)
               {
                  o9620[_loc12_] = _loc9_ == -1?_loc10_:_loc8_;
               }
               else
               {
                  o9620[_loc12_] = _loc10_;
               }
               if(o9620[_loc12_].indexOf("HealthBar") >= 0)
               {
                  _loc12_ = _loc12_;
               }
            }
         }
      }
      
      public function o12919(param1:String) : Boolean
      {
         var _loc4_:int = 0;
         var _loc3_:* = o9620;
         for each(var _loc2_ in o9620)
         {
            if(_loc2_ == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function o787(param1:String) : int
      {
         var _loc3_:* = null;
         var _loc5_:int = 0;
         var _loc4_:* = o9620;
         for(var _loc2_ in o9620)
         {
            _loc3_ = o9620[_loc2_];
            if(_loc3_.indexOf(param1) >= 0)
            {
               return _loc2_;
            }
         }
         return -1;
      }
      
      public function o9009(param1:int) : String
      {
         return o9620[param1];
      }
   }
}
