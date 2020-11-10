package
{
   import flash.events.Event;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.ByteArray;
   
   public class o14634
   {
      
      private static var o1682:String = "DGDATA";
      
      private static var o9196:int = 14;
      
      private static var o4559:int = 6;
      
      private static var o17174:int = 8;
       
      
      public function o14634()
      {
         super();
      }
      
      public static function test() : void
      {
         var o17327:URLLoader = new URLLoader();
         var o12051:Function = function(param1:Event):void
         {
            var _loc3_:ByteArray = o17327.data;
            var _loc2_:String = o6318(_loc3_);
            _loc3_ = o5209(_loc2_);
            _loc2_ = o6318(_loc3_);
         };
         o17327.dataFormat = "binary";
         o17327.addEventListener("complete",o12051);
         var o15386:URLRequest = new URLRequest(o2555.o17203("static-api.ninjakiwi.com/nkapi/skusettings/ae8823be5c5db448ab9b7125586b53cf.json"));
         o17327.load(o15386);
      }
      
      public static function o6318(param1:ByteArray) : String
      {
         var _loc6_:int = 0;
         var _loc4_:* = 0;
         var _loc7_:String = "";
         _loc6_ = o9196;
         while(_loc6_ < param1.length)
         {
            _loc4_ = uint(param1[_loc6_]);
            var _loc9_:* = _loc6_;
            var _loc10_:* = param1[_loc9_] - 21;
            param1[_loc9_] = _loc10_;
            _loc10_ = _loc6_;
            _loc9_ = param1[_loc10_] - (_loc6_ - o9196) % 6;
            param1[_loc10_] = _loc9_;
            _loc6_++;
         }
         param1.position = 0;
         var _loc8_:String = param1.readUTFBytes(param1.length);
         var _loc3_:String = _loc8_.substr(o4559,o17174);
         var _loc2_:String = _loc8_.substring(o9196);
         var _loc5_:String = o10840(_loc2_);
         if(_loc3_ == _loc5_)
         {
            return _loc2_;
         }
         return null;
      }
      
      public static function o5209(param1:String) : ByteArray
      {
         var _loc5_:int = 0;
         var _loc3_:int = 0;
         var _loc6_:ByteArray = new ByteArray();
         _loc6_.writeUTFBytes(param1);
         var _loc4_:String = o1682 + o10840(param1);
         var _loc2_:ByteArray = new ByteArray();
         _loc5_ = 0;
         while(_loc5_ < _loc4_.length)
         {
            _loc2_.writeByte(_loc4_.charCodeAt(_loc5_));
            _loc5_++;
         }
         _loc6_.position = 0;
         _loc5_ = 0;
         while(_loc5_ < _loc6_.length)
         {
            _loc3_ = _loc6_[_loc5_];
            _loc3_ = _loc3_ + 21;
            _loc3_ = _loc3_ + _loc5_ % 6;
            _loc3_ = _loc3_ % 256;
            _loc2_.writeByte(_loc3_);
            _loc5_++;
         }
         return _loc2_;
      }
      
      private static function o333(param1:*) : int
      {
         var _loc3_:* = 0;
         var _loc4_:int = 3988292384;
         var _loc2_:uint = param1;
         _loc3_ = uint(0);
         while(_loc3_ < 8)
         {
            if(_loc2_ & 1)
            {
               _loc2_ = _loc2_ >> 1;
               _loc2_ = _loc2_ ^ _loc4_;
            }
            else
            {
               _loc2_ = _loc2_ >> 1;
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      private static function o10840(param1:*) : String
      {
         var _loc6_:int = 0;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc7_:uint = 0;
         var _loc5_:uint = param1.length;
         _loc6_ = 0;
         while(_loc6_ < _loc5_)
         {
            _loc2_ = uint(param1.charCodeAt(_loc6_));
            _loc3_ = uint((_loc7_ ^ _loc2_) & 255);
            _loc7_ = _loc7_ >> 8 & 16777215 ^ o333(_loc3_);
            _loc6_++;
         }
         if(_loc7_ < 0)
         {
            _loc7_ = 4294967295 + _loc7_ + 1;
         }
         var _loc4_:String = _loc7_.toString(16);
         while(_loc4_.length < 8)
         {
            _loc4_ = "0" + _loc4_;
         }
         return _loc4_;
      }
   }
}
