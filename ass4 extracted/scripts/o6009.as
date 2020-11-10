package
{
   import flash.display.Sprite;
   
   public class o6009 extends Sprite
   {
       
      
      public function o6009()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o18517;
      }
   }
}

import flash.events.Event;
import flash.utils.ByteArray;

class o18517 extends o6743
{
   
   public static var networked:Boolean = false;
   
   public static var o20272:Array = [[1,o17243.float,o13351.o10420,"show time"],[2,o17243.o8809,o13351.o5585,"spawn event id"]];
    
   
   private var o9079:int = 0;
   
   private var o6657:int = 0;
   
   function o18517()
   {
      super();
   }
   
   public static function getGlobalCacheAssets() : Vector.<String>
   {
      var _loc1_:Vector.<String> = new Vector.<String>();
      _loc1_.push("assets.item.strongBoxSteel");
      _loc1_.push("assets.item.strongBoxTitanium");
      _loc1_.push("assets.item.strongBoxMolybdenum");
      _loc1_.push("assets.item.strongBoxIridium");
      _loc1_.push("assets.item.strongBoxNeodynium");
      _loc1_.push("assets.item.strongBoxPromethium");
      _loc1_.push("assets.item.strongBoxThulium");
      _loc1_.push("assets.item.strongBoxNantonium");
      _loc1_.push("assets.item.strongBoxBlack");
      _loc1_.push("assets.item.grenadeCrate");
      _loc1_.push("assets.item.turretBox");
      _loc1_.push("assets.item.cashDrop");
      _loc1_.push("assets.item.MedCrate");
      _loc1_.push("assets.item.premiumBulletsCrate");
      return _loc1_;
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      o6657 = 0;
      if(param2 != null)
      {
         o6657 = param2.readFloat();
      }
      if(param2 != null && param2.bytesAvailable > 0)
      {
         o9079 = param2.readInt();
      }
      super.o9714(param1);
      if(o4519.o13206.o9745)
      {
         start(null);
      }
      else
      {
         o4519.o13206.o16280(this,o16450.o9745,start);
      }
   }
   
   private function start(param1:Event) : void
   {
      if(o9079 != 0)
      {
         o4519.o13206.o16280(this,o8694.o1956,o14957);
      }
      else
      {
         o1051.o9310(this,o6657,o17743);
      }
   }
   
   private function o14957(param1:o11210) : void
   {
      if(param1.o13743 == o9079)
      {
         o17743();
      }
   }
   
   public function o17743() : void
   {
      super.o12675(o1197.o19789,null);
   }
}
