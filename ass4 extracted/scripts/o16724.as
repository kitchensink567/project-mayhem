package
{
   import flash.globalization.NumberFormatter;
   
   public class o16724
   {
       
      
      public function o16724()
      {
         super();
      }
      
      public static function o8717(param1:Number) : String
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         var _loc3_:int = param1 / 86400000;
         var _loc5_:int = int(param1 / 3600000) % 24;
         var _loc2_:int = int(param1 / 60000) % 60;
         var _loc4_:int = int(param1 / 1000) % 60;
         if(_loc3_ <= 0)
         {
            if(_loc5_ <= 0)
            {
               if(_loc2_ <= 0)
               {
                  return _loc4_ + " s";
               }
               return _loc2_ + " minute" + (_loc2_ > 1?"s":"") + " " + _loc4_ + " s";
            }
            return _loc5_ + " hour" + (_loc5_ > 1?"s":"") + " " + _loc2_ + " minute" + (_loc2_ > 1?"s":"");
         }
         return _loc3_ + " day" + (_loc3_ > 1?"s":"") + " " + _loc5_ + " hour" + (_loc5_ > 1?"s":"");
      }
      
      public static function o13621(param1:Number) : String
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         var _loc3_:int = param1 / 86400000;
         var _loc5_:int = int(param1 / 3600000) % 24;
         var _loc2_:int = int(param1 / 60000) % 60;
         var _loc4_:int = int(param1 / 1000) % 60;
         if(_loc3_ <= 0)
         {
            if(_loc5_ <= 0)
            {
               if(_loc2_ <= 0)
               {
                  return _loc4_ + " s";
               }
               return _loc2_ + " minute" + (_loc2_ > 1?"s":"") + " " + _loc4_ + " second" + (_loc4_ > 1?"s":"");
            }
            return _loc5_ + " hour" + (_loc5_ > 1?"s":"") + " " + _loc2_ + " minute" + (_loc2_ > 1?"s":"") + " " + _loc4_ + " second" + (_loc4_ > 1?"s":"");
         }
         return _loc3_ + " day" + (_loc3_ > 1?"s":"") + " " + _loc5_ + " hour" + (_loc5_ > 1?"s":"") + " " + _loc2_ + " minute" + (_loc2_ > 1?"s":"") + " " + _loc4_ + " second" + (_loc4_ > 1?"s":"");
      }
      
      private static function o20840(param1:String) : String
      {
         if(param1.length == 1)
         {
            return "0" + param1;
         }
         return param1;
      }
      
      public static function o19944(param1:Number) : String
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         var _loc3_:int = param1 / 86400000;
         var _loc5_:int = int(param1 / 3600000) % 24;
         var _loc2_:int = int(param1 / 60000) % 60;
         var _loc4_:int = int(param1 / 1000) % 60;
         if(_loc3_ <= 0)
         {
            if(_loc5_ <= 0)
            {
               if(_loc2_ <= 0)
               {
                  return o20840(_loc4_.toString());
               }
               return o20840(_loc2_.toString()) + ":" + o20840(_loc4_.toString());
            }
            return o20840(_loc5_.toString()) + ":" + o20840(_loc2_.toString()) + ":" + o20840(_loc4_.toString());
         }
         return o20840(_loc3_.toString()) + ":" + o20840(_loc5_.toString()) + ":" + o20840(_loc2_.toString()) + ":" + o20840(_loc4_.toString());
      }
      
      public static function o15991(param1:Number) : String
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         var _loc3_:int = param1 / 86400000;
         var _loc5_:int = int(param1 / 3600000) % 24;
         var _loc2_:int = int(param1 / 60000) % 60;
         var _loc4_:int = int(param1 / 1000) % 60;
         _loc5_ = _loc5_ + _loc3_ * 24;
         if(_loc5_ <= 0)
         {
            if(_loc2_ <= 0)
            {
               return o20840(_loc4_.toString()) + "m " + o20840(_loc4_.toString()) + "s";
            }
            return o20840(_loc2_.toString()) + "m " + o20840(_loc4_.toString()) + "s";
         }
         return o20840(_loc5_.toString()) + "h " + o20840(_loc2_.toString()) + "m " + o20840(_loc4_.toString()) + "s";
      }
      
      public static function o10417(param1:int) : String
      {
         var _loc3_:int = 0;
         var _loc6_:String = "";
         if(param1 < 0)
         {
            _loc6_ = "-";
            param1 = Math.abs(param1);
         }
         var _loc4_:String = param1.toString();
         var _loc2_:int = _loc4_.length;
         var _loc5_:int = 3;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            if(_loc5_ == 0)
            {
               _loc6_ = "," + _loc6_;
               _loc5_ = 3;
            }
            _loc5_--;
            _loc6_ = _loc4_.charAt(_loc2_ - 1 - _loc3_) + _loc6_;
            _loc3_++;
         }
         return _loc6_;
      }
      
      public static function o20031(param1:Number) : String
      {
         var _loc2_:NumberFormatter = new NumberFormatter("en-US");
         _loc2_.fractionalDigits = 1;
         return _loc2_.formatNumber(param1);
      }
      
      public static function o20301(param1:Number) : String
      {
         var _loc2_:NumberFormatter = new NumberFormatter("en-US");
         _loc2_.fractionalDigits = 2;
         return _loc2_.formatNumber(param1);
      }
      
      public static function o6902(param1:Number) : Number
      {
         var _loc2_:* = 100;
         param1 = Math.round(_loc2_ * param1) / _loc2_;
         return param1;
      }
      
      public static function o10403(param1:int) : String
      {
         var _loc4_:String = "";
         if(int(param1 / 3600) > 0)
         {
            _loc4_ = _loc4_ + (int(param1 / 3600) + ":");
         }
         var _loc2_:String = String(int(param1 / 60 % 60));
         if(_loc2_.length != 2)
         {
            _loc2_ = "0" + _loc2_;
         }
         _loc4_ = _loc4_ + (_loc2_ + ":");
         var _loc3_:String = String(int(param1 % 60));
         if(_loc3_.length != 2)
         {
            _loc3_ = "0" + _loc3_;
         }
         _loc4_ = _loc4_ + _loc3_;
         return _loc4_;
      }
      
      public static function o3136(param1:String) : Array
      {
         var _loc7_:int = 0;
         var _loc2_:* = null;
         var _loc5_:* = null;
         var _loc9_:Boolean = false;
         var _loc6_:* = false;
         var _loc4_:* = "";
         var _loc3_:Array = [];
         _loc3_.push([]);
         var _loc8_:int = 0;
         _loc7_ = 0;
         while(_loc7_ < param1.length)
         {
            _loc2_ = param1.charAt(_loc7_);
            _loc5_ = param1.charAt(_loc7_ + 1);
            _loc9_ = false;
            if(_loc6_ && _loc2_ == "\"" && _loc5_ == "\"")
            {
               _loc4_ = _loc4_ + _loc2_;
            }
            if(_loc6_ && _loc2_ != "\"")
            {
               _loc4_ = _loc4_ + _loc2_;
            }
            if(_loc4_ == "Test, log B")
            {
               _loc4_ = _loc4_;
            }
            if(!_loc6_ && _loc2_ != "\"")
            {
               if(_loc2_ == ",")
               {
                  _loc3_[_loc8_].push(_loc4_);
                  _loc4_ = "";
               }
               else if(_loc2_ == "\n")
               {
                  _loc3_[_loc8_].push(_loc4_);
                  _loc3_.push([]);
                  _loc8_++;
                  _loc4_ = "";
               }
               else if(_loc2_ != "\r")
               {
                  _loc4_ = _loc4_ + _loc2_;
               }
            }
            if(_loc2_ == "\"")
            {
               _loc6_ = !_loc6_;
            }
            _loc7_++;
         }
         _loc3_[_loc8_].push(_loc4_);
         if(_loc3_[_loc8_].length < _loc3_[0].length)
         {
            _loc3_.pop();
         }
         return _loc3_;
      }
   }
}
