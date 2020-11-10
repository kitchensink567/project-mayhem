package
{
   import flash.display.Sprite;
   
   public class o2830 extends Sprite
   {
       
      
      public function o2830()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o3427;
      }
   }
}

import flash.events.Event;
import flash.utils.ByteArray;

class o3427 extends o9347
{
   
   public static var o20272:Array = [[1,o17243.o19845,o13351.o10420,"name"],[2,o17243.o2013,o13351.o10420,"image lower"],[3,o17243.o2013,o13351.o10420,"image upper"],[4,o17243.o2013,o13351.o10420,"physics"]];
    
   
   private var o13982:int;
   
   function o3427()
   {
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      name = param2.readUTF();
      var _loc4_:int = param2.readShort();
      var _loc3_:int = param2.readShort();
      var _loc5_:int = param2.readShort();
      super.o2348(param1,_loc5_,_loc4_,o8723.o10217,0,0,_loc3_);
      o13982 = o4519.o9721.o3865(Vector.<int>([_loc5_]),o8723.o18180,o8723.o10217);
   }
   
   public function o16489() : void
   {
      o16166.play();
      o4775.play();
      o16166.o16280(this,o1490.o16612,o5268);
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o4404.o1795.play(1,0,0,false,_loc1_.o10088());
   }
   
   private function o5268(param1:Event) : void
   {
      body.o19115();
      o4519.o9721.o5294(o13982);
      o4519.o9721.o2075.o471(o6691);
      o19115();
   }
}
