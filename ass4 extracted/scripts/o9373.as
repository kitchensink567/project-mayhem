package
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class o9373
   {
       
      
      public var o9620:Dictionary;
      
      public function o9373()
      {
         o9620 = new Dictionary();
         super();
      }
      
      public function o16403(param1:String, param2:o3135) : o16124
      {
         o1337 = param1;
         loader = param2;
         var promise:o16124 = new o16124();
         loader.o17485(o1337).defer(function(param1:ByteArray):void
         {
            o5466(param1);
            promise.data = o9620;
         });
         return promise;
      }
      
      public function o5466(param1:ByteArray) : void
      {
         var _loc6_:* = null;
         var _loc5_:String = param1.readUTFBytes(param1.length);
         _loc5_ = _loc5_.split("\r").join("");
         var _loc3_:Array = _loc5_.split("\n");
         var _loc10_:int = 0;
         var _loc9_:* = _loc3_;
         for each(var _loc4_ in _loc3_)
         {
            _loc6_ = _loc4_.split(",");
            if(_loc6_.length >= 2)
            {
               var _loc8_:int = 0;
               var _loc7_:* = _loc6_;
               for(var _loc2_ in _loc6_)
               {
                  _loc6_[_loc2_] = o859.o6919(_loc6_[_loc2_]);
                  _loc6_[_loc2_] = _loc6_[_loc2_].split("\"").join("");
               }
               o9620[_loc6_[0]] = int(_loc6_[1]);
            }
         }
      }
      
      public function o12018(param1:String) : int
      {
         return o9620[param1];
      }
   }
}
