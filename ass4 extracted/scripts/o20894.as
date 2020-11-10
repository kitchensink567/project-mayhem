package
{
   import flash.display.Sprite;
   
   public class o20894 extends Sprite
   {
       
      
      public function o20894()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o3244;
      }
   }
}

import flash.utils.ByteArray;

class o3244 extends o15755
{
   
   public static var o20272:Array = [[1,o17243.float,o13351.o5585,"Max time"],[2,o17243.o14773,o13351.o5585,"Counts down"]];
    
   
   private var o513:Number = 600;
   
   private var o3104:Boolean = false;
   
   private var o2895:Boolean = true;
   
   private var o17884:Number;
   
   function o3244()
   {
      super();
   }
   
   override public function o16955(param1:int, param2:ByteArray = null) : void
   {
      o513 = param2.readFloat();
      o3104 = param2.readByte();
      o17884 = 0;
      if(o513 != -1)
      {
         o1051.o4767(this,1,o7664,o513,true);
      }
      else
      {
         o1051.o4767(this,1,o7664,2147483647,true);
      }
      super.o16955(param1,param2);
   }
   
   private function o7664() : void
   {
      var _loc1_:* = 1;
      o17884 = o17884 + _loc1_;
      if(o513 != -1 && o17884 >= o513)
      {
         if(o2895)
         {
            o4519.o13206.o15777(o16450.o5311);
            o19115();
         }
         return;
      }
      if(o3104)
      {
         o4519.o8116.o20488.o19411 = o10403(o513 - o17884);
      }
      else
      {
         o4519.o8116.o20488.o19411 = o10403(o17884);
      }
   }
   
   private function o10403(param1:int) : String
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
   
   override public function o18192(param1:ByteArray) : void
   {
      param1.writeFloat(o17884);
   }
   
   override public function o14232(param1:ByteArray, param2:int = 0) : void
   {
      o17884 = param1.readFloat();
   }
}
