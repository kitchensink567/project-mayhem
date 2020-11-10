package
{
   import flash.display.Sprite;
   
   public class o17805 extends Sprite
   {
       
      
      public function o17805()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o12201;
      }
   }
}

import flash.utils.ByteArray;

class o12201 extends o3047
{
   
   public static var o20272:Array = [[0,o17243.o19845,o13351.o10420,"name"],[1,o17243.o2013,o13351.o10420,"room area"],[2,o17243.o2013,o13351.o10420,"spawn points"],[3,o17243.o2013,o13351.o10420,"door physics"]];
    
   
   private var id:int = 0;
   
   private var o15981:int = 0;
   
   private var o8687:int = 0;
   
   private var o3818:int = 0;
   
   private var o19256:o10262 = null;
   
   private var o7485:Array;
   
   private var o5873:Array;
   
   function o12201()
   {
      o7485 = [];
      o5873 = [];
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      o5973 = param1;
      o10303 = param2;
      o10413 = true;
      name = o10303.readUTF();
      o15981 = o10303.readShort();
      o8687 = o10303.readShort();
      if(o10303.bytesAvailable > 0)
      {
         o3818 = o10303.readShort();
      }
      var o2013:o13848 = o4519.o9721.o7352[o8687];
      var o6041:Array = o4519.o9721.o18622(o2013.o6041[0].id);
      o7485 = [];
      var _loc5_:int = 0;
      var _loc4_:* = o6041;
      for each(o17108 in o6041)
      {
         o7485.push(new o18509(o17108.x,o17108.y));
      }
      id = int(name.substr(5));
      var o406:o10262 = o4519.o8116.o9869.o1968(0,0,false);
      var o8599:Vector.<o18509> = o4519.o9721.o7963(o4519.o9721.o7352[o15981].o6041[0].id);
      var o4925:Vector.<Vector.<o18509>> = o12075.o7521(o8599);
      var _loc7_:int = 0;
      var _loc6_:* = o4925;
      for each(o16528 in o4925)
      {
         var o10289:o17761 = new o17761(o406.o2535);
         o10289.o14486(o16528);
         var fixture:o4039 = o4519.o8116.o20600.o15803(o8723.o14409,o8723.o32,o17517.o6365,true);
         fixture.o10289 = o10289.id;
         o406.o14230(fixture);
      }
      if(o3818 != 0)
      {
         o19256 = o4519.o8116.o9869.o1968(0,0,false);
         var o7425:Vector.<o18509> = o4519.o9721.o7963(o4519.o9721.o7352[o3818].o6041[0].id);
         o4925 = o12075.o7521(o7425);
         var _loc9_:int = 0;
         var _loc8_:* = o4925;
         for each(o16528 in o4925)
         {
            o10289 = new o17761(o19256.o2535);
            o10289.o14486(o16528);
            fixture = o4519.o8116.o20600.o15803(o8723.o19523,o8723.o10217 ^ o8723.o32,o8723.o10217 ^ o8723.o32 ^ o8723.o17798);
            fixture.o10289 = o10289.id;
            o19256.o14230(fixture);
         }
      }
      o949(o5973);
      var o19505:* = this;
      o4519.o13206.o16280(this,o16450.o9745,function():void
      {
         o406.o16280(o19505,o8273.o7087,o6250);
         o406.o16280(o19505,o8273.o20083,o9152);
      });
   }
   
   public function o16385() : void
   {
      o19256.o15838(0);
   }
   
   public function o2885(param1:Number) : o13732
   {
      var _loc2_:int = o4519.o8116.random.o10418(this.o5973) * o7485.length;
      var _loc3_:o18509 = o7485[_loc2_];
      var _loc4_:int = o20712;
      o20712 = Number(o20712) + 1;
      return o4519.o8116.o2996.o2998(o13732,[_loc3_,param1],_loc4_) as o13732;
   }
   
   public function o13284(param1:Class, param2:Number, param3:Boolean = false) : void
   {
      var _loc4_:int = 0;
      var _loc5_:* = null;
      if(param1 != null)
      {
         _loc4_ = o20384.random() * o7485.length;
         _loc5_ = o7485[_loc4_];
         o5873.push(param3);
         o3370(param1,param2,_loc5_,0);
      }
   }
   
   override public function o18421(param1:Class, param2:Number, param3:int, param4:o18509 = null, param5:int = 0, param6:int = 0, param7:Boolean = true, param8:Boolean = true, param9:int = 0) : o18442
   {
      var _loc10_:o18442 = super.o18421(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      if(_loc10_)
      {
         if(o5873.length >= 1)
         {
            if(o5873[0])
            {
               _loc10_.o13696 = new Vector.<Class>();
            }
            _loc10_.o13696.push(o13732);
            o5873.splice(0,1);
            _loc10_.o9270(null);
         }
      }
      return _loc10_;
   }
   
   public function o3302() : o18509
   {
      var _loc1_:int = o20384.random() * o7485.length;
      return o7485[_loc1_];
   }
   
   public function o5796() : void
   {
      var _loc1_:int = o20384.random() * o7485.length;
      var _loc2_:o18509 = o7485[_loc1_];
      var _loc3_:Class = o4519.o8116.o20291["com.ninjakiwi.sas4.scripts.loot.DroppedLoot"];
      var _loc4_:o6743 = o4519.o8116.o2996.o2998(_loc3_,[new o18509(_loc2_.x,_loc2_.y),o1197.o19789,0]) as o6743;
   }
   
   private function o6250(param1:o663) : void
   {
      o4519.o13206.dispatchData(new o12108(id));
   }
   
   private function o9152(param1:o18091) : void
   {
      o4519.o13206.dispatchData(new o2059(id));
   }
}
