package
{
   import flash.display.Sprite;
   
   public class o7513 extends Sprite
   {
       
      
      public function o7513()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o2924;
      }
   }
}

import flash.utils.ByteArray;

class o2924 extends o15755
{
   
   public static var o20272:Array = [[1,o17243.o2013,o13351.o10420,"Image to animate"],[2,o17243.o19845,o13351.o10420,"loop label"],[3,o17243.o14773,o13351.o10420,"stop on end frame"]];
    
   
   function o2924()
   {
      super();
   }
   
   override public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc6_:int = param2.readShort();
      var _loc4_:String = param2.readUTF();
      var _loc3_:Boolean = false;
      if(param2.bytesAvailable > 0)
      {
         _loc3_ = param2.readBoolean();
      }
      var _loc5_:o7331 = o4519.o9721.o7833(_loc6_);
      _loc5_.o12265 = true;
      _loc5_.play();
      if(_loc4_ != null && _loc4_ != "")
      {
         _loc5_.o3030(_loc4_);
         _loc5_.o11(_loc4_);
      }
      if(_loc3_)
      {
         _loc5_.o12265 = false;
      }
   }
}
