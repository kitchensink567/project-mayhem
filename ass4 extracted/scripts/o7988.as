package
{
   import flash.display.Sprite;
   
   public class o7988 extends Sprite
   {
       
      
      public function o7988()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o1870;
      }
      
      public static function o7002() : void
      {
         o1870.o7002();
      }
   }
}

import flash.utils.ByteArray;

class o1870 extends o3047
{
   
   public static var o19505:o1870;
    
   
   function o1870()
   {
      super();
   }
   
   public static function o7002() : void
   {
      if(o19505)
      {
         o19505.o19115();
      }
      o19505 = new o1870();
      var _loc1_:int = o4519.o13206.o1802(10000);
      o19505.o5973 = _loc1_;
      o19505.o949(_loc1_ + 1);
      o4519.o8116.o14443.o5373(o19505);
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      o949(param1);
   }
   
   public function o3620(param1:int, param2:Number, param3:o18509, param4:Boolean = true, param5:int = 0, param6:Array = null) : void
   {
      var _loc8_:int = 0;
      var _loc7_:ByteArray = new ByteArray();
      _loc7_.writeShort(param1);
      _loc7_.writeShort(param2);
      _loc7_.writeFloat(param3.x);
      _loc7_.writeFloat(param3.y);
      _loc7_.writeBoolean(param4);
      _loc7_.writeShort(param5);
      if(param6 == null)
      {
         _loc7_.writeShort(0);
      }
      else
      {
         _loc7_.writeShort(param6.length);
         _loc8_ = 0;
         while(_loc8_ < param6.length)
         {
            _loc7_.writeShort(param6[_loc8_]);
            _loc8_++;
         }
      }
      dispatchData(new o2149(this,_loc7_,true));
   }
   
   override public function o20630(param1:int, param2:ByteArray) : void
   {
      var _loc4_:int = 0;
      var _loc6_:int = param2.readShort();
      var _loc14_:int = param2.readShort();
      var _loc10_:Number = param2.readFloat();
      var _loc3_:Number = param2.readFloat();
      var _loc7_:Boolean = param2.readBoolean();
      var _loc5_:int = param2.readShort();
      var _loc12_:int = param2.readShort();
      var _loc11_:Array = [];
      _loc4_ = 0;
      while(_loc4_ < _loc12_)
      {
         _loc11_.push(param2.readShort());
         _loc4_++;
      }
      var _loc8_:Class = o17439.o2586(_loc6_);
      var _loc9_:int = o20712;
      o20712 = o20712 + o3047.o15922(_loc8_);
      var _loc13_:o18442 = super.o18421(_loc8_,_loc14_,_loc9_,new o18509(_loc10_,_loc3_),0,0,_loc7_,true,_loc5_);
      if(_loc13_.name == "Loaderbot" || _loc13_.name == "Savage Loaderbot" || _loc13_.name == "Nightmarish Loaderbot" || _loc13_.name == "Nightmarish Savage Loaderbot")
      {
         _loc13_.o4526();
      }
      if(_loc11_.length != 0)
      {
         _loc13_.o17012(_loc11_);
      }
   }
   
   override public function o1710() : Boolean
   {
      return true;
   }
}
