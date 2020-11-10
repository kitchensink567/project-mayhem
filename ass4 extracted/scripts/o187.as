package
{
   import flash.display.Sprite;
   
   public class o187 extends Sprite
   {
       
      
      public function o187()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o10786;
      }
   }
}

import flash.utils.ByteArray;

class o10786 extends o15755
{
   
   public static var o20272:Array = [[1,o17243.o19845,o13351.o10420,"Script Name"],[2,o17243.o2013,o13351.o10420,"Ammo Pack Graph (Positions)"],[3,o17243.o2013,o13351.o10420,"Retrieval Waypoint"],[4,o17243.o2013,o13351.o10420,"Retrieval Graph (Sensor physics)"],[5,o17243.o2013,o13351.o10420,"Ammo Loot Spawn Graph (Positions)"]];
    
   
   private var o10303:ByteArray = null;
   
   private var o14765 = null;
   
   function o10786()
   {
      super();
   }
   
   override public function o16955(param1:int, param2:ByteArray = null) : void
   {
      super.o16955(param1);
      this.o10303 = param2;
      if(o6921.o15035 == 1)
      {
         o13466();
      }
   }
   
   public function o13466() : void
   {
      var _loc2_:int = 0;
      name = o10303.readUTF();
      if(!o14765)
      {
         _loc2_ = o4519.o13206.o1802(2 + 10000000);
         trace("State ID block, start: " + _loc2_ + " end: " + (_loc2_ + 10000000));
         o14765 = new o4519.o8116.o20291["com.ninjakiwi.sas4.scripts.contracts.contractTypes.ContractAmmoRecovery"]();
         o14765.o5973 = _loc2_ + 1;
         o14765.o16955(this);
         o4519.o9721.o5649(o14765);
      }
      var _loc3_:int = o10303.readShort();
      o14765.o6587 = o14765.o8071(_loc3_);
      var _loc1_:int = o10303.readShort();
      o14765.o18852 = o14765.o3806(_loc1_);
      o14765.o18020 = o10303.readShort();
      _loc3_ = o10303.readShort();
      o14765.o20535 = o14765.o8071(_loc3_);
   }
   
   override public function o19115() : void
   {
      if(this.o5836)
      {
         return;
      }
      if(o14765 && !o14765.o8289())
      {
         o4519.o8116.o14443.o7609(o14765);
         o14765.o19115();
      }
      o14765 = null;
      super.o19115();
   }
}
