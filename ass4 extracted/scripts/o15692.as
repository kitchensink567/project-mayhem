package
{
   import flash.display.Sprite;
   
   public class o15692 extends Sprite
   {
       
      
      public function o15692()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o532;
      }
      
      public static function o8338() : Array
      {
         return o532.o11473;
      }
      
      public static function clear() : void
      {
         o532.o11473 = [];
      }
   }
}

import flash.events.Event;
import flash.utils.ByteArray;

class o532 extends o15755
{
   
   public static var o11473:Array = [];
   
   public static var o20272:Array = [[1,o17243.o19845,o13351.o10420,"name"],[2,o17243.o2013,o13351.o10420,"room area"],[3,o17243.o8809,o13351.o10420,"door 1"],[4,o17243.o8809,o13351.o10420,"door 2"],[5,o17243.o8809,o13351.o10420,"door 3"],[6,o17243.o8809,o13351.o10420,"door 4"],[7,o17243.o8809,o13351.o10420,"door 5"],[8,o17243.o8809,o13351.o10420,"door 6"],[13,o17243.o19845,o13351.o10420,"enemy spawner 1"],[14,o17243.o19845,o13351.o10420,"enemy spawner 2"],[15,o17243.o19845,o13351.o10420,"enemy spawner 3"],[16,o17243.o19845,o13351.o10420,"enemy spawner 4"],[9,o17243.o14773,o13351.o10420,"is gas room?"],[10,o17243.o8809,o13351.o10420,"loot spawn 1"],[11,o17243.o8809,o13351.o10420,"loot spawn 2"],[12,o17243.o8809,o13351.o10420,"medkit spawn"]];
   
   private static const o20052:int = 3;
   
   private static const o16641:int = 4;
    
   
   private var o15981:int = 0;
   
   private var o17352:o10262;
   
   private var o8151:Array;
   
   private var o10245:Array;
   
   private var o14227:Array;
   
   private var o9382:Array;
   
   private var o13869:Boolean = false;
   
   private var o9961 = null;
   
   private var o18454:int = 0;
   
   private var o14482:int = 0;
   
   private var o6093:int = 0;
   
   private var o12384:Boolean = false;
   
   private var o4171:Vector.<o17517>;
   
   private var o213:Vector.<o18442>;
   
   function o532()
   {
      o8151 = [];
      o10245 = [];
      o14227 = [];
      o9382 = [];
      o4171 = new Vector.<o17517>();
      o213 = new Vector.<o18442>();
      super();
   }
   
   override public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc7_:int = 0;
      var _loc6_:int = 0;
      var _loc8_:* = null;
      var _loc9_:* = null;
      var _loc3_:* = null;
      o11473.push(this);
      name = param2.readUTF();
      o15981 = param2.readShort();
      _loc7_ = 0;
      while(_loc7_ < 6)
      {
         _loc6_ = param2.readInt();
         if(_loc6_ != 0)
         {
            o8151.push(_loc6_);
         }
         _loc7_++;
      }
      _loc7_ = 0;
      while(_loc7_ < 4)
      {
         _loc8_ = param2.readUTF();
         if(_loc8_ != null && _loc8_ != "")
         {
            o14227.push(_loc8_);
         }
         _loc7_++;
      }
      o13869 = param2.readBoolean();
      o18454 = param2.readInt();
      o14482 = param2.readInt();
      o6093 = param2.readInt();
      o17352 = o4519.o8116.o9869.o1968(0,0,false);
      var _loc4_:Vector.<o18509> = o4519.o9721.o7963(o4519.o9721.o7352[o15981].o6041[0].id);
      var _loc10_:Vector.<Vector.<o18509>> = o12075.o7521(_loc4_);
      var _loc12_:int = 0;
      var _loc11_:* = _loc10_;
      for each(var _loc5_ in _loc10_)
      {
         _loc9_ = new o17761(o17352.o2535);
         _loc9_.o14486(_loc5_);
         _loc3_ = o4519.o8116.o20600.o15803(o8723.trigger,o8723.o32 | o8723.o18481,o8723.o32 | o8723.o18481,true);
         _loc3_.o10289 = _loc9_.id;
         o17352.o14230(_loc3_);
      }
      o17352.o16280(this,o8273.o7087,o19476);
      o17352.o16280(this,o8273.o20083,o12843);
      o4519.o13206.o16280(this,o16450.o9745,o2203);
   }
   
   private function o2203(param1:Event) : void
   {
      var _loc4_:int = 0;
      var _loc3_:* = null;
      var _loc2_:int = 0;
      var _loc5_:* = undefined;
      _loc4_ = 0;
      while(_loc4_ < o8151.length)
      {
         _loc3_ = o15308.o17280();
         _loc2_ = 0;
         while(_loc2_ < _loc3_.length)
         {
            if(_loc3_[_loc2_].id == o8151[_loc4_])
            {
               o10245.push(_loc3_[_loc2_]);
            }
            _loc2_++;
         }
         _loc4_++;
      }
      o8151 = null;
      _loc4_ = 0;
      while(_loc4_ < o14227.length)
      {
         _loc5_ = o4519.o9721.o12334(o14227[_loc4_]);
         o9382.push(_loc5_);
         _loc4_++;
      }
      o8151 = null;
      if(o13869)
      {
         o9961 = o4519.o9721.o12334(this.name + "Gas");
         o9961.init(o15981,o10245,o4171);
      }
   }
   
   private function o19476(param1:o663) : void
   {
      var _loc2_:o17517 = o4519.o8116.o2996.o14389(param1.o11541) as o17517;
      if(_loc2_ != null)
      {
         o4171.push(_loc2_);
         _loc2_.o19926(this,o14571.o19115,o13242);
         o11717();
         return;
      }
   }
   
   private function o12843(param1:o18091) : void
   {
      var _loc2_:o17517 = o4519.o8116.o2996.o14389(param1.o11541) as o17517;
      if(_loc2_ != null)
      {
         o9906(_loc2_,o4171);
         _loc2_.o12657(o14571.o19115,o13242);
         return;
      }
   }
   
   private function o13242(param1:o7734) : void
   {
      var _loc2_:o17517 = param1.o11493 as o17517;
      if(_loc2_ != null)
      {
         o9906(_loc2_,o4171);
         return;
      }
   }
   
   private function o9906(param1:*, param2:*) : void
   {
      var _loc3_:int = param2.indexOf(param1);
      if(_loc3_ != -1)
      {
         param2.splice(_loc3_,1);
      }
   }
   
   private function o11717() : void
   {
      var _loc1_:ByteArray = new ByteArray();
      _loc1_.writeByte(3);
      dispatchData(new o2149(this,_loc1_,false,false));
   }
   
   private function o16751() : void
   {
      var _loc1_:int = 0;
      if(!o12384)
      {
         _loc1_ = 0;
         while(_loc1_ < o9382.length)
         {
            o9382[_loc1_].o4526();
            o1051.o9310(this,0.5,o19712);
            _loc1_++;
         }
         if(o9382.length > 0)
         {
            o1051.o9310(this,2,o212);
         }
         if(o6093 != 0)
         {
            o4519.o13206.dispatchData(new o11210(o6093));
         }
         if(o18454 != 0)
         {
            o4519.o13206.dispatchData(new o11210(o18454));
         }
         if(o14482 != 0)
         {
            o4519.o13206.dispatchData(new o11210(o14482));
         }
      }
      o12384 = true;
      if(o13869)
      {
         o212();
      }
   }
   
   public function o18898() : void
   {
      o9382.splice(0,o9382.length);
   }
   
   private function o212() : void
   {
      var _loc1_:int = 0;
      _loc1_ = 0;
      while(_loc1_ < o10245.length)
      {
         o10245[_loc1_].o5198();
         _loc1_++;
      }
   }
   
   public function o7621() : void
   {
      var _loc1_:int = 0;
      _loc1_ = 0;
      while(_loc1_ < o10245.length)
      {
         o10245[_loc1_].o16489();
         _loc1_++;
      }
   }
   
   private function o19712() : void
   {
      var _loc2_:int = 0;
      _loc2_ = 0;
      while(_loc2_ < o9382.length)
      {
         if(o9382[_loc2_].o8289() == false)
         {
            o1051.o9310(this,1,o19712);
            return;
         }
         _loc2_++;
      }
      var _loc1_:ByteArray = new ByteArray();
      _loc1_.writeByte(4);
      dispatchData(new o2149(this,_loc1_,false,false));
   }
   
   private function o3635() : void
   {
      if(!o13869)
      {
         o7621();
      }
   }
   
   public function o12433() : void
   {
      o6093 = 0;
      o18454 = 0;
      o14482 = 0;
   }
   
   override public function o20630(param1:int, param2:ByteArray) : void
   {
      var _loc3_:int = param2.readByte();
      switch(int(_loc3_) - 3)
      {
         case 0:
            o16751();
            break;
         case 1:
            o3635();
      }
   }
   
   override public function o19115() : void
   {
      if(o8289())
      {
         return;
      }
      o10262;
      o8151 = null;
      o10245 = null;
      o14227 = null;
      o9382 = null;
      o9961 = null;
      o4171 = null;
      o213 = null;
      super.o19115();
   }
}
