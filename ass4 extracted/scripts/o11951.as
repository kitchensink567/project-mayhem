package
{
   import flash.utils.Dictionary;
   
   public class o11951 extends o8023 implements o5264
   {
      
      public static const o9571:int = 0;
       
      
      private var o19417:Scene;
      
      private var o4100:o14727;
      
      private var o6041:Vector.<o473> = null;
      
      private var o1980:Vector.<o473> = null;
      
      private var o16056:Number = 1;
      
      private var o7083:int = -1;
      
      private var o11861:Dictionary;
      
      private var o453:Array;
      
      public var o19485:Dictionary;
      
      public function o11951(param1:Scene, param2:o14727)
      {
         o11861 = new Dictionary();
         o453 = [];
         o19485 = new Dictionary();
         super();
         this.o19417 = param1;
         this.o4100 = param2;
         o6041 = Mem.create(this,Vector.<o473>) as Vector.<o473>;
         o1980 = Mem.create(this,Vector.<o473>) as Vector.<o473>;
         param2.o16280(this,o3101.o9915,o13979);
         param1.o16280(this,o9363.o5484,o20441);
      }
      
      override public function o19115() : void
      {
         var _loc3_:int = 0;
         var _loc2_:* = o6041;
         for each(var _loc1_ in o6041)
         {
            _loc1_.o5953();
         }
         super.o19115();
         o19417 = null;
         o4100 = null;
         o6041 = null;
         o1980 = null;
         o11861 = null;
      }
      
      public function clear() : void
      {
         var _loc3_:int = 0;
         var _loc2_:* = o6041;
         for each(var _loc1_ in o6041)
         {
            _loc1_.o5953();
            o19417.o17778(_loc1_.o16396);
         }
         o6041 = Mem.create(this,Vector.<o473>) as Vector.<o473>;
         o11861 = new Dictionary();
         o1980 = Mem.create(this,Vector.<o473>) as Vector.<o473>;
      }
      
      private function o20441(param1:o6567) : void
      {
         var _loc4_:int = 0;
         var _loc3_:* = o6041;
         for each(var _loc2_ in o6041)
         {
            if(_loc2_.o16396 == param1.o16396)
            {
               o4100.o13252(_loc2_.o20917.assetID,_loc2_.o20917.frame,o16056,o16056,_loc2_.o20917.x,_loc2_.o20917.y,_loc2_.o20917.width,_loc2_.o20917.height);
            }
         }
      }
      
      public function set o12004(param1:Number) : void
      {
         if(o16056 == param1)
         {
            return;
         }
         if(o7083 <= 0)
         {
            o7083 = o1051.o9310(this,0.1,o10662);
         }
         else
         {
            o1051.reset(o7083);
         }
         o16056 = param1;
      }
      
      public function o10662() : void
      {
         o7083 = -1;
         var _loc3_:int = 0;
         var _loc2_:* = o6041;
         for each(var _loc1_ in o6041)
         {
            if(o1980.indexOf(_loc1_) != -1)
            {
               o4100.o13252(_loc1_.o20917.assetID,_loc1_.o20917.frame,o16056,o16056,_loc1_.o20917.x,_loc1_.o20917.y,_loc1_.o20917.width,_loc1_.o20917.height);
            }
         }
      }
      
      public function get o12004() : Number
      {
         return o16056;
      }
      
      public function o13691(param1:*, param2:int = 1, param3:Number = 0, param4:Number = 0, param5:int = 0, param6:int = 0, param7:Boolean = true) : void
      {
         var _loc10_:int = 0;
         var _loc9_:* = o6041;
         for each(var _loc8_ in o6041)
         {
            if(_loc8_.o20917.assetID === param1 && _loc8_.o20917.frame == param2 && _loc8_.o20917.x == param3 && _loc8_.o20917.y == param4 && _loc8_.o20917.width == param5 && _loc8_.o20917.height == param6)
            {
               o4100.o13252(param1,param2,o16056,o16056,param3,param4,param5,param6);
               return;
            }
         }
      }
      
      public function o11623() : Boolean
      {
         var _loc3_:int = 0;
         var _loc2_:* = o19485;
         for(var _loc1_ in o19485)
         {
            return true;
         }
         return false;
      }
      
      public function o13252(param1:*, param2:int = 1, param3:Number = 0, param4:Number = 0, param5:int = 0, param6:int = 0, param7:int = 2, param8:Boolean = true) : uint
      {
         var _loc10_:* = 0;
         var _loc12_:* = 0;
         var _loc14_:* = null;
         param8 = true;
         var _loc17_:int = 0;
         var _loc16_:* = o11861[param1];
         for each(var _loc15_ in o11861[param1])
         {
            if(_loc15_.o20917.assetID === param1 && _loc15_.o20917.frame == param2 && _loc15_.o20917.x == param3 && _loc15_.o20917.y == param4 && _loc15_.o20917.width == param5 && _loc15_.o20917.height == param6)
            {
               _loc15_.o14556 = Number(_loc15_.o14556) + 1;
               return _loc15_.o12917;
            }
         }
         var _loc11_:uint = o19417.o19803();
         var _loc9_:uint = o19417.o11419();
         var _loc13_:uint = o19417.o4505();
         o19417.o17501(_loc13_,_loc11_);
         o19417.o12611(_loc13_,_loc9_);
         if(!(param1 is Vector.<o18509>))
         {
            o19485[param1 + " " + param2] = true;
            _loc10_ = uint(o19417.createTexture());
            o19417.o6455(_loc13_,_loc10_);
            _loc15_ = Mem.create(this,o473) as o473;
            _loc15_.initialise(param1,param2,param3,param4,param5,param6,_loc13_,_loc10_,_loc11_,_loc9_,param7);
            if(o11861[param1] == null)
            {
               o11861[param1] = new Vector.<o473>();
            }
            o11861[param1].push(_loc15_);
            o6041.push(_loc15_);
         }
         else
         {
            _loc12_ = uint(o19417.o10937());
            o19417.o17673(_loc12_,param1);
            o19417.o4631(_loc13_,_loc12_);
            _loc15_ = Mem.create(this,o473) as o473;
            _loc15_.initialise(param1,param2,param3,param4,param5,param6,_loc13_,_loc12_,_loc11_,_loc9_,param7);
            if(o11861[param1] == null)
            {
               o11861[param1] = new Vector.<o473>();
            }
            o11861[param1].push(_loc15_);
            o6041.push(_loc15_);
         }
         if(!(param1 is Vector.<o18509>))
         {
            o4100.o13252(param1,param2,o16056,o16056,param3,param4,param5,param6);
         }
         else
         {
            _loc14_ = Mem.create(this,o551) as o551;
            _loc14_.initialise(param1,param2,param5,param6,0,0,o16056,o16056,param3,param4,param5,param6,null);
            o4100.dispatchData(_loc14_);
         }
         if(param8)
         {
            o1980.push(_loc15_);
         }
         return _loc15_.o12917;
      }
      
      public function o6988(param1:*, param2:int = 1, param3:Number = 0, param4:Number = 0, param5:int = 0, param6:int = 0) : void
      {
         if(param1 is String)
         {
            return;
         }
         var _loc9_:int = 0;
         var _loc8_:* = o6041;
         for each(var _loc7_ in o6041)
         {
            if(_loc7_.o20917.assetID === param1 && _loc7_.o20917.frame == param2 && _loc7_.o20917.x == param3 && _loc7_.o20917.y == param4 && _loc7_.o20917.width == param5 && _loc7_.o20917.height == param6)
            {
               _loc7_.o14556 = Number(_loc7_.o14556) - 1;
               if(_loc7_.o14556 == 0)
               {
                  if(!(param1 is Vector.<o18509>))
                  {
                     o19417.o17778(_loc7_.o16396);
                  }
                  o6041.splice(o6041.indexOf(_loc7_),1);
                  o11861[param1].splice(o11861[param1].indexOf(_loc7_),1);
                  if(o1980.indexOf(_loc7_) != -1)
                  {
                     o1980.splice(o1980.indexOf(_loc7_),1);
                  }
                  _loc7_.o5953();
               }
               return;
            }
         }
      }
      
      private function o13979(param1:o551) : void
      {
         if(o19485[param1.assetID + " " + param1.frame])
         {
            delete o19485[param1.assetID + " " + param1.frame];
         }
         o15777(0);
         var _loc3_:* = null;
         var _loc5_:int = 0;
         var _loc4_:* = o6041;
         for each(var _loc2_ in o6041)
         {
            if(_loc2_.o20917.assetID === param1.assetID && _loc2_.o20917.frame == param1.frame && _loc2_.o20917.x == param1.x && _loc2_.o20917.y == param1.y && _loc2_.o20917.width == param1.o15992 && _loc2_.o20917.height == param1.o9131)
            {
               _loc3_ = _loc2_;
            }
         }
         if(_loc3_ == null)
         {
            if(param1.o2817)
            {
               param1.o2817.dispose();
            }
            return;
         }
         if(param1.o2817 != null)
         {
            o19417.o5339(_loc3_.o16396,param1.width,param1.height,param1.o2817,_loc3_.o20917.quality);
         }
         o19417.o7155(_loc3_.o8270,param1.o8580,param1.o2666);
         o19417.o2661(_loc3_.scale,param1.scaleX,param1.scaleY);
         if(_loc3_.o14556 == 0)
         {
            o19417.o17778(_loc3_.o16396);
            o6041.splice(o6041.indexOf(_loc3_),1);
            if(o1980.indexOf(_loc3_) != -1)
            {
               o1980.splice(o1980.indexOf(_loc3_),1);
            }
         }
      }
   }
}
