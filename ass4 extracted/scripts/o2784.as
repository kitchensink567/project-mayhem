package
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class o2784
   {
       
      
      private var loader:o3135 = null;
      
      private var o15373:Dictionary = null;
      
      private var o237:String = null;
      
      public function o2784(param1:o3135, param2:String)
      {
         super();
         this.loader = param1;
         this.o237 = param2;
         o15373 = Mem.create(this,Dictionary) as Dictionary;
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
      
      public function o18077(param1:String) : o16124
      {
         o6692 = param1;
         var promise:o16124 = Mem.create(this,o16124) as o16124;
         if(o15373[o6692] != null)
         {
            promise.data = o15373[o6692];
         }
         else
         {
            loader.o17485(o237 + o6692 + ".csv?version=" + (int(Math.random() * 2147483647)).toString()).defer(function(param1:ByteArray):void
            {
               var _loc2_:o2693 = o5466(param1);
               o15373[o6692] = _loc2_;
               promise.data = o15373[o6692];
            });
         }
         return promise;
      }
      
      public function o5466(param1:ByteArray) : o2693
      {
         var _loc8_:int = 0;
         var _loc9_:* = null;
         var _loc5_:* = null;
         var _loc4_:Dictionary = Mem.create(this,Dictionary) as Dictionary;
         var _loc7_:String = param1.readUTFBytes(param1.length);
         _loc7_ = _loc7_.split("\r").join("");
         var _loc3_:Array = _loc7_.split("\n");
         var _loc11_:int = 0;
         var _loc10_:* = _loc3_;
         for each(var _loc6_ in _loc3_)
         {
            _loc8_ = _loc6_.indexOf(",");
            _loc9_ = _loc6_.substr(0,_loc8_);
            _loc9_ = _loc9_.split("\"").join("");
            _loc5_ = _loc6_.substr(_loc8_ + 1);
            _loc5_ = o615(_loc5_);
            _loc4_[_loc9_] = _loc5_;
         }
         var _loc2_:o2693 = Mem.create(this,o2693) as o2693;
         _loc2_.initialise(_loc4_);
         return _loc2_;
      }
      
      public function o9009(param1:String, param2:String) : o16124
      {
         o6692 = param1;
         key = param2;
         var promise:o16124 = Mem.create(this,o16124) as o16124;
         o18077(o6692).defer(function(param1:o2693):void
         {
            promise.data = param1.o9009(key);
         });
         return promise;
      }
   }
}
