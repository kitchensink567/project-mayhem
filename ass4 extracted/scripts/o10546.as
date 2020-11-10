package
{
   import assets.ui.MiniMapArrowEdge;
   import assets.ui.VIPMarker;
   
   public class o10546 extends o7848
   {
       
      
      private const o9514:String = "being hacked";
      
      private const o14479:String = "on";
      
      private const o5852:String = "off";
      
      private const o4600:int = 0;
      
      private const o18464:int = 1;
      
      private var o3338:uint;
      
      private var o12272 = null;
      
      private var o2790:Vector.<o17517> = null;
      
      private var o7112:o4039 = null;
      
      private var o695:o8216 = null;
      
      private var data:int = 0;
      
      private var o15512:int = 0;
      
      private var o15548:int = 1;
      
      private var o4495:int = 0;
      
      private var o19334:int = 0;
      
      private var o13779:Boolean = false;
      
      private var o7525:Boolean = false;
      
      private var o14632:Boolean = false;
      
      private var o14257:Boolean = false;
      
      private var o6020:Boolean = false;
      
      private var o7242:Boolean = false;
      
      private var o16348:String;
      
      private var o9933:Number = 0;
      
      private var o5510:int = -1;
      
      public function o10546()
      {
         o3338 = o8723.o10217 ^ o8723.o18180 ^ o8723.o19523 ^ o8723.o3969;
         o16348 = o14479;
         super();
      }
      
      public static function getGlobalCacheAssets() : Vector.<String>
      {
         var _loc1_:Vector.<String> = new Vector.<String>();
         _loc1_.push("assets.contractcommon.console");
         return _loc1_;
      }
      
      public function o16955(param1:int, param2:*, param3:o18509, param4:Number, param5:int, param6:int) : void
      {
         this.o5973 = param1;
         this.o16348 = o5852;
         this.o12272 = param2;
         if(param6 == 0)
         {
            this.o15512 = param5;
            this.o4495 = 0;
         }
         else
         {
            this.o15548 = o4519.o13206.o2685.o7629();
            this.o15512 = param5 * o15548;
            this.o4495 = 1;
         }
         o2790 = new Vector.<o17517>();
         var _loc9_:o4332 = o4519.o8116.o11954.o10869();
         _loc9_.o16396 = o17541.o13617("assets.contractcommon.console");
         _loc9_.o16990 = o11381.o11085;
         var _loc7_:o10262 = o4519.o8116.o9869.o1968(0,1,false);
         var _loc10_:o17761 = new o17761(_loc7_.o2535);
         _loc10_.o10827(_loc9_.o16396.x - 15,_loc9_.o16396.y - 15,30,30);
         _loc7_.o8940 = false;
         var _loc8_:o4039 = o4519.o8116.o20600.o15803(o8723.o3969,o8723.o20122,0);
         _loc8_.o10289 = _loc10_.id;
         _loc7_.o16687(param4);
         _loc7_.o8564(param3.x,param3.y);
         _loc7_.o14230(_loc8_);
         _loc10_.o10827(_loc9_.o16396.x - 30,_loc9_.o16396.y - 30,60,60);
         o7112 = o4519.o8116.o20600.o15803(o8723.o9135,o8723.o32,o8723.o32,true);
         o7112.o10289 = _loc10_.id;
         _loc7_.o14230(o7112);
         _loc7_.o16687(param4);
         o14632 = o4519.o13206.o2685.o7629() <= 1?true:false;
         super.o10783(o5973,_loc7_,_loc9_,o4519.o8116.o11676);
         o20776();
      }
      
      private function o7664() : void
      {
         if(o14257 && o13779 && o12272)
         {
            if(!o7525)
            {
               o695.o12033(true);
            }
            if(o4495 == 0)
            {
               if(o14632)
               {
                  data = data + 2;
               }
               else
               {
                  data = data + o1178();
               }
            }
            else
            {
               data = data + (o1178() * o15548 - (o15548 - 1));
            }
            if(data >= o15512)
            {
               o1051.o19115(o5510);
               o12272.o234(o12272.o10556,this);
            }
         }
         if(o7242)
         {
            o7242 = false;
         }
      }
      
      private function o4949(param1:o4217) : void
      {
         var _loc2_:o17517 = o17517(o4519.o8116.o2996.o14389(param1.o11541.body));
         if(_loc2_ && o12272 && !_loc2_.o7694)
         {
            o12272.o1023(o12272.o17702,this,_loc2_.o5973);
         }
      }
      
      private function o7739(param1:o20312) : void
      {
         var _loc2_:o17517 = o17517(o4519.o8116.o2996.o14389(param1.o11541.body));
         if(_loc2_ && o12272 && !_loc2_.o7694)
         {
            o12272.o1023(o12272.o417,this,_loc2_.o5973);
         }
      }
      
      public function o14191(param1:o17517) : void
      {
         var _loc4_:int = 0;
         var _loc3_:* = o2790;
         for each(var _loc2_ in o2790)
         {
            if(_loc2_.o5973 == param1.o5973)
            {
               return;
            }
         }
         if(param1)
         {
            o12786();
            o2790.push(param1);
            o14257 = true;
            o16348 = o9514;
            o20776(true);
            if(o4495 == 0)
            {
               o18193("Hacking Small Database x" + o1178(),param1);
            }
            else
            {
               o18193("Hacking Large Database x" + o1178(),param1);
            }
         }
      }
      
      public function o1814(param1:o17517) : void
      {
         var _loc2_:Boolean = false;
         if(param1)
         {
            o20536();
            o4519.o8116.o4812.o10460.o10538.play(1);
            _loc2_ = o6016(param1.o5973);
            if(!_loc2_)
            {
               trace("Console could not remove avatar: " + param1.o5973 + " from the vector, it does not exist");
            }
            if(o1178() <= 0)
            {
               o14257 = false;
               o16348 = o14479;
               o20776();
            }
         }
      }
      
      public function o7671(param1:int) : void
      {
         if(o13779 && this.data < o15512 && param1 > this.data)
         {
            this.data = param1;
         }
      }
      
      public function o8480() : void
      {
         o1051.o19115(o5510);
         o16348 = o5852;
         o20776();
         o18883();
         o20536();
         o4519.o8116.o4812.o10460.o10205.play(1);
         o7112.o12657(o2841.o1516,o4949);
         o7112.o12657(o2841.o15204,o7739);
         if(o695)
         {
            o695.o5953();
         }
         var _loc1_:* = null;
         var _loc2_:Boolean = false;
         var _loc5_:int = 0;
         var _loc4_:* = o2790;
         for each(var _loc3_ in o2790)
         {
            if(o4519.o32 == _loc3_)
            {
               o18193("Hack Complete",o4519.o32);
               _loc2_ = true;
            }
            _loc1_ = _loc3_;
         }
         o4519.o8116.o4812.o10460.o10205.play(1);
         o20536();
         if(!_loc2_ && _loc1_)
         {
            o18193("Hack Complete",_loc1_);
         }
      }
      
      public function o4526() : void
      {
         o5510 = o1051.o4767(this,1,o7664);
         o14070();
         o13779 = true;
         o16348 = o14479;
         o20776();
         o695 = new o8216();
         o695.init(this,3,"Terminal");
         o695.o12033(false);
         o7112.o16280(this,o2841.o1516,o4949);
         o7112.o16280(this,o2841.o15204,o7739);
      }
      
      public function o10876() : void
      {
         o1051.o19115(o5510);
         o16348 = o5852;
         o20776();
         o18883();
         o20536();
         o13779 = false;
         o14257 = false;
         if(o695)
         {
            o695.o5953();
         }
         o7112.o12657(o2841.o1516,o4949);
         o7112.o12657(o2841.o15204,o7739);
      }
      
      public function o8093() : int
      {
         return this.data;
      }
      
      public function o18866() : int
      {
         return this.o15512;
      }
      
      public function o1178() : int
      {
         var _loc1_:int = 0;
         var _loc4_:int = 0;
         var _loc3_:* = o2790;
         for each(var _loc2_ in o2790)
         {
            if(_loc2_ && !_loc2_.o7694)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      private function o6016(param1:int) : Boolean
      {
         var _loc2_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < o2790.length)
         {
            if(o2790[_loc2_].o5973 == param1)
            {
               o2790.splice(_loc2_,1);
               return true;
            }
            _loc2_++;
         }
         return false;
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
      
      private function o20776(param1:Boolean = false) : void
      {
         o16166.o12265 = param1;
         o16166.o3030(o16348);
         o16166.o11(o16348);
         o16166.play();
      }
      
      public function o10691() : Number
      {
         return data / o15512;
      }
      
      private function o18193(param1:String, param2:o17517, param3:Boolean = false) : void
      {
         if(param3 || !o7242)
         {
            o14200.o19505.o202.o1526(param1,param2);
            o7242 = true;
         }
      }
      
      private function o12786() : void
      {
         if(o6020)
         {
            return;
         }
         o20536();
         var _loc1_:Date = new Date();
         o9933 = _loc1_.getTime();
         o4519.o8116.o4812.o10460.o9582.play(1,2147483647,0,false,null,0,0,o9933);
         o4519.o8116.o4812.o10460.o13035.play(1);
         o6020 = true;
      }
      
      private function o20536() : void
      {
         o4519.o8116.o6169.o1529(o9933);
         o6020 = false;
      }
      
      override public function o19115() : void
      {
         if(o5836)
         {
            return;
         }
         o20536();
         if(o695)
         {
            o695.o5953();
         }
         if(o7112)
         {
            o7112.o19115();
         }
         o2790 = null;
         o7112 = null;
         o695 = null;
         super.o19115();
      }
   }
}
