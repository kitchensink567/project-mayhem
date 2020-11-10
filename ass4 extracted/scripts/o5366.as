package
{
   import flash.display.Sprite;
   
   public class o5366 extends Sprite
   {
       
      
      public function o5366()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o8969;
      }
   }
}

import flash.events.Event;
import flash.utils.ByteArray;

class o8969 extends o15755
{
   
   public static var o20272:Array = [[30,o17243.o19845,o13351.o10420,"name"],[31,o17243.o2013,o13351.o10420,"exit blocker"]];
    
   
   private const o7487:int = 13;
   
   private const o2488:int = 66;
   
   private const o5849:int = 31;
   
   private var o19297:o10262;
   
   private var o19381;
   
   private var o19636;
   
   private var o10942:int = 0;
   
   function o8969()
   {
      super();
   }
   
   override public function o16955(param1:int, param2:ByteArray = null) : void
   {
      name = param2.readUTF();
      var _loc5_:int = param2.readShort();
      o19297 = o4519.o8116.o9869.o1968(0,0,false);
      var _loc6_:o17761 = new o17761(o19297.o2535);
      var _loc4_:Vector.<o18509> = o4519.o9721.o7963(o4519.o9721.o7352[_loc5_].o6041[0].id);
      _loc6_.o14486(_loc4_);
      var _loc3_:o4039 = o4519.o8116.o20600.o15803(o8723.o18180,o8723.o32,o8723.o32);
      _loc3_.o10289 = _loc6_.id;
      o19297.o14230(_loc3_);
      o4519.o13206.o16280(this,o16450.o9745,o2203);
   }
   
   private function o2203(param1:Event) : void
   {
      o19636 = o4519.o9721.o12334("DoomIn");
      o19636.o12134.o8564(6400,1300);
   }
   
   private function o6446(param1:Event) : void
   {
      var _loc2_:ByteArray = new ByteArray();
      _loc2_.writeByte(66);
      dispatchData(new o2149(this,_loc2_,true,false,66));
   }
   
   private function o4524() : void
   {
      var _loc1_:int = 0;
      o19636.o12657(1001,o6446);
      o4519.o8116.o4812.o10460.o1959.play(1);
      o12891.o19505.o18830("PREPARE TO DIE!");
      o3047.o10061.splice(0,4294967295);
      var _loc2_:Array = o4519.o8116.o2996.o20698(o18442).concat();
      _loc1_ = 0;
      while(_loc1_ < _loc2_.length)
      {
         o4519.o8116.o8361.o5725(_loc2_[_loc1_],o4016.o10062().initialise(999999999,8,null));
         _loc2_[_loc1_].o19115();
         _loc1_++;
      }
      o19381 = o4519.o9721.o12334("DoomSpawns");
      o19381.o4526();
      o1051.o9310(this,10,o16502);
   }
   
   private function o16502() : void
   {
      var _loc2_:int = 0;
      if(o19381.o8289() == false)
      {
         o1051.o9310(this,2,o16502);
         return;
      }
      var _loc3_:Array = o4519.o8116.o2996.o20698(o18442);
      _loc2_ = 0;
      while(_loc2_ < _loc3_.length)
      {
         if(_loc3_[_loc2_].o12555 == 31)
         {
            o1051.o9310(this,2,o16502);
            return;
         }
         _loc2_++;
      }
      var _loc1_:ByteArray = new ByteArray();
      _loc1_.writeByte(31);
      dispatchData(new o2149(this,_loc1_,true,false,31));
   }
   
   private function o10353() : void
   {
      o19297.o19115();
      o1051.o9310(this,4,o20137);
      o19636.o12134.o8564(6400,1300);
   }
   
   private function o20137() : void
   {
      o1051.o4767(this,0.31,o12675,13);
   }
   
   private function o12675() : void
   {
      o4519.o13206.dispatchData(new o11210(31 + o10942));
      o10942 = Number(o10942) + 1;
   }
   
   public function o4526() : void
   {
      var _loc2_:o14882 = o14882.o12128[int(o4519.o8116.random.o10418(31) * o14882.o12128.length)];
      if(_loc2_.o8478)
      {
         return;
      }
      if(_loc2_.position.x >= 2600 && _loc2_.position.x <= 3175 && _loc2_.position.y >= 1325 && _loc2_.position.y <= 2340)
      {
         return;
      }
      var _loc1_:ByteArray = new ByteArray();
      _loc1_.writeByte(13);
      _loc1_.writeInt(int(_loc2_.position.x));
      _loc1_.writeInt(int(_loc2_.position.y));
      dispatchData(new o2149(this,_loc1_,true,false,13));
   }
   
   private function o14581(param1:int, param2:int) : void
   {
      o19636.o16280(this,1001,o6446);
      o19636.o12134.o8564(param1,param2);
   }
   
   public function o10876() : void
   {
      o19636.o12657(1001,o6446);
      o19636.o12134.o8564(6400,1300);
   }
   
   override public function o20630(param1:int, param2:ByteArray) : void
   {
      var _loc3_:int = param2.readByte();
      var _loc4_:* = _loc3_;
      switch(_loc4_)
      {
         case 13:
            o14581(param2.readInt(),param2.readInt());
            break;
         case 66:
            o4524();
            break;
         case 31:
            o10353();
      }
   }
   
   override public function o19115() : void
   {
      if(o8289())
      {
         return;
      }
      o19297 = null;
      o19381 = null;
      o19636 = null;
      super.o19115();
   }
}
