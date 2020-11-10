package
{
   import flash.display.Sprite;
   
   public class o2927 extends Sprite
   {
       
      
      public function o2927()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o306;
      }
   }
}

import flash.utils.ByteArray;

class o306 extends o15755
{
   
   public static var o20272:Array = [];
   
   private static const o2155:int = 1;
    
   
   function o306()
   {
      super();
   }
   
   public function postMessage(param1:int, param2:String) : void
   {
      var _loc3_:ByteArray = new ByteArray();
      _loc3_.writeByte(1);
      _loc3_.writeShort(param1);
      _loc3_.writeUTF(param2);
      dispatchData(new o2149(this,_loc3_,false,true));
   }
   
   override public function o20630(param1:int, param2:ByteArray) : void
   {
      var _loc3_:int = 0;
      var _loc5_:* = null;
      var _loc4_:int = param2.readByte();
      if(!(int(_loc4_) - 1))
      {
         _loc3_ = param2.readShort();
         _loc5_ = param2.readUTF();
         o4519.o8116.o20488.o9885(_loc3_,_loc5_);
      }
   }
}
