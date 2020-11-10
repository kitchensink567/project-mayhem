package
{
   import assets.ui.MiniMapArrowEdge;
   import assets.ui.VIPMarker;
   import flash.utils.Dictionary;
   
   public class o19370 extends o7848 implements o1452, o6270
   {
      
      private static const o8253:int = 5;
       
      
      private const o15311:String = "damage0";
      
      private const o14042:String = "damage1";
      
      private const o8632:String = "damage2";
      
      private const o2161:String = "destroyed";
      
      private var o16390:Dictionary;
      
      private var o3338:uint;
      
      private var o12770:Boolean = true;
      
      private var o12487:Boolean = false;
      
      private var o11243:Number = 0;
      
      private var o1589:Number = 0;
      
      private var o16348:String;
      
      private var o14474 = null;
      
      private var o12077:o8216 = null;
      
      public var o4027:String;
      
      public var o10051:uint = 0;
      
      public function o19370()
      {
         o3338 = o8723.o10217 ^ o8723.o18180 ^ o8723.o19523 ^ o8723.o3969;
         o16348 = "null";
         o4027 = "Null";
         super();
      }
      
      public static function getGlobalCacheAssets() : Vector.<String>
      {
         var _loc1_:Vector.<String> = new Vector.<String>();
         _loc1_.push("assets.contractcommon.pallet");
         return _loc1_;
      }
      
      public function o16955(param1:int, param2:*, param3:o18509) : void
      {
         this.name = name;
         this.o5973 = param1;
         this.o3338 = o8723.o10217 ^ o8723.o619;
         this.o14474 = param2;
         this.o16348 = o15311;
         var _loc7_:o4332 = o4519.o8116.o11954.o10869();
         _loc7_.o16396 = o17541.o13617("assets.contractcommon.pallet");
         _loc7_.o16990 = o11381.o11085;
         var _loc4_:o10262 = o4519.o8116.o9869.o1968(0,1,false);
         var _loc8_:o17761 = new o17761(_loc4_.o2535);
         _loc8_.o10827(_loc7_.o16396.x - 37.5,_loc7_.o16396.y - 37.5,75,75);
         _loc4_.o8940 = false;
         _loc4_.o16687(o4519.o8116.random.o10418(this.o5973) * 10 - 5);
         var _loc6_:uint = o8723.o17079 | o8723.o7778 | o8723.o42 | o8723.o19175;
         var _loc5_:o4039 = o4519.o8116.o20600.o15803(o8723.o19175,o3338 | o8723.o42,_loc6_);
         _loc5_.o10289 = _loc8_.id;
         _loc4_.o8564(param3.x,param3.y);
         _loc4_.o14230(_loc5_);
         _loc5_ = o4519.o8116.o20600.o15803(o8723.o3969,o8723.o32 | o8723.o2823,0);
         _loc5_.o10289 = _loc8_.id;
         _loc4_.o14230(_loc5_);
         super.o10783(o5973,_loc4_,_loc7_,o4519.o8116.o11676);
         this.body.o7191 = 1.79769313486232e308;
         this.o16390 = new Dictionary();
         this.o16390[4] = 0.5;
         this.o16390[1] = 0.5;
         this.o16390[2] = 0.5;
         this.o16390[1] = 0.5;
         this.o4027 = "Crate";
         this.o10051 = 9490778;
         this.o1589 = 2000 * o10176.o6572();
         this.o11243 = o1589;
         o9072();
      }
      
      public function o11022(param1:o4016) : void
      {
         if(o16390)
         {
            if(o16390[param1.o3])
            {
               param1.amount = param1.amount * (1 - o16390[param1.o3]);
            }
         }
         if(o12487)
         {
            param1.amount = 0;
         }
      }
      
      public function o5725(param1:o4016) : void
      {
         var _loc2_:* = null;
         if(!o12770 || param1.o16334 as o17517 is o17517)
         {
            return;
         }
         o11243 = o11243 - param1.amount;
         o12180();
         if(o11243 <= 0)
         {
            o14474.o17518(o14474.o17039,this);
         }
         else
         {
            _loc2_ = new o257(o6691.position.x,o6691.position.y);
            o4519.o8116.o4812.o4404.o17023.play(0.5,0,0,false,_loc2_.o10088());
         }
      }
      
      public function o2605(param1:Boolean) : void
      {
         this.o12487 = param1;
      }
      
      public function o8564(param1:o18509) : void
      {
         this.o6691.position.x = param1.x;
         this.o6691.position.y = param1.y;
         this.body.o8564(param1.x,param1.y);
      }
      
      public function o10691() : Number
      {
         return o11243 / o1589;
      }
      
      public function o5878() : void
      {
         if(!o12770)
         {
            return;
         }
         o4929(0,0,0,0,0,0);
         o12770 = false;
         o16166.o12265 = false;
         o11243 = 0;
         o12180();
         o1676();
         o19542();
         o18883();
         body.o15838(o8723.o20122);
         body.o6141(0,0);
         if(o12077)
         {
            o12077.o5953();
         }
      }
      
      public function o10210() : Boolean
      {
         return o12770;
      }
      
      private function o1676() : void
      {
         var _loc1_:o257 = new o257(o6691.position.x,o6691.position.y);
         o4519.o8116.o4812.o4404.o19817.play(0.75);
         o4519.o8116.o4812.o4404.o12307.play(1);
      }
      
      public function o13005() : int
      {
         return 5;
      }
      
      public function o17441() : Boolean
      {
         return o12770 && !o8289();
      }
      
      public function o15437(param1:o7848) : Boolean
      {
         return o12770 && !o8289();
      }
      
      public function o14322() : void
      {
         o6691.o9824 = false;
         if(o12077)
         {
            o12077.o5953();
         }
      }
      
      public function o9072() : void
      {
         o6691.o9824 = true;
         if(!o12077)
         {
            o12077 = new o8216();
            o12077.init(this,3,"Crate");
         }
      }
      
      public function o14070() : void
      {
         if(o12891.o19505 && o12891.o19505.o16587)
         {
            o12891.o19505.o16587.o20838(new VIPMarker(),new MiniMapArrowEdge(),this);
         }
      }
      
      public function o18883() : void
      {
         if(o12891.o19505 && o12891.o19505.o16587)
         {
            o12891.o19505.o16587.o18312(this);
         }
      }
      
      private function o12180() : void
      {
         var _loc1_:Number = o10691();
         var _loc2_:String = o16348;
         if(_loc1_ >= 0.66)
         {
            o16348 = o15311;
         }
         else if(_loc1_ >= 0.33)
         {
            o16348 = o14042;
         }
         else if(_loc1_ > 0)
         {
            o16348 = o8632;
         }
         else
         {
            o16348 = o2161;
         }
         if(_loc2_ != o16348)
         {
            o20776();
         }
      }
      
      private function o20776() : void
      {
         o16166.o12265 = false;
         o16166.o3030(o16348);
         o16166.o11(o16348);
         o16166.play();
      }
      
      override public function o19115() : void
      {
         if(o5836)
         {
            return;
         }
         if(o12077)
         {
            o12077.o5953();
         }
         o12077 = null;
         o16390 = null;
         super.o19115();
      }
   }
}
