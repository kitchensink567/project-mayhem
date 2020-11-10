package
{
   import flash.display.Sprite;
   
   public class o5854 extends Sprite
   {
       
      
      public function o5854()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o7305;
      }
   }
}

import flash.utils.ByteArray;

class o7305 extends o15755
{
   
   public static var o20272:Array = [[1,o17243.o19845,o13351.o10420,"name"],[2,o17243.o2013,o13351.o10420,"image"]];
    
   
   private var o6691:o4332 = null;
   
   function o7305()
   {
      super();
   }
   
   override public function getCacheAssets() : Vector.<String>
   {
      var _loc1_:Vector.<String> = new Vector.<String>();
      _loc1_.push("assets.maps.zombieEgg.bossEggSplosionBig");
      return _loc1_;
   }
   
   override public function o16955(param1:int, param2:ByteArray = null) : void
   {
      name = param2.readUTF();
      o6691 = o4519.o9721.o12831(param2.readShort());
   }
   
   public function o1064() : void
   {
      var _loc1_:* = null;
      _loc1_ = o4519.o8116.o13427.o11961(o2130,["assets.maps.zombieEgg.bossEggSplosionBig"]) as o2130;
      if(_loc1_ != null)
      {
         _loc1_.o6691.position.x = o6691.position.x;
         _loc1_.o6691.position.y = o6691.position.y;
         _loc1_.o6691.rotation = 3.14159265358979;
      }
   }
}
