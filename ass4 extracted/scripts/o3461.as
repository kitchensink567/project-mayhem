package
{
   import flash.events.Event;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.Dictionary;
   
   public class o3461
   {
       
      
      private const o9387:int = 0;
      
      private const o8866:int = 1;
      
      private const o6488:int = 2;
      
      private const o20702:int = 20;
      
      private const o11767:int = 0;
      
      private const o3999:int = 1;
      
      private const o3137:int = 2;
      
      private const o6472:int = 3;
      
      private const o200:int = 4;
      
      private const o19341:int = 5;
      
      private const o3317:int = 6;
      
      private const o20343:int = 7;
      
      private const o15013:int = 8;
      
      private const o8013:int = 9;
      
      private const o17652:int = 10;
      
      private const o16247:int = 11;
      
      private const o12861:int = 12;
      
      private const o5829:int = 13;
      
      private const o9568:int = 14;
      
      private var o13044:Boolean = false;
      
      public var o11404:Boolean = false;
      
      private var o12435:Boolean = false;
      
      private var o1234:o7118 = null;
      
      public var o12964:Boolean = false;
      
      public var o6832:Boolean = false;
      
      private var o7427:Dictionary;
      
      private var o17918:Dictionary;
      
      private var o19005:Dictionary;
      
      private var o14738:Dictionary;
      
      private var o7628:Dictionary;
      
      private var o10648:Dictionary;
      
      private var o9780:Dictionary;
      
      private var o18894:Array;
      
      public var o6985:o18036;
      
      public var o20632:SoundChannel;
      
      public function o3461(param1:o7118)
      {
         o7427 = new Dictionary(true);
         o17918 = new Dictionary(true);
         o19005 = new Dictionary(true);
         o14738 = new Dictionary(true);
         o7628 = new Dictionary(true);
         o10648 = new Dictionary(true);
         o9780 = new Dictionary(true);
         super();
         this.o1234 = param1;
         o18894 = [];
      }
      
      public function o16532(param1:String) : o16124
      {
         o16350 = param1;
         var promise:o16124 = Mem.create(this,o16124);
         var o19505:o3461 = this;
         if(o13044)
         {
            var o16350:String = "assets.sounds.ui.RollOver";
         }
         o1234.o11690(o16350).defer(function(param1:Class):void
         {
            promise.data = Mem.create(this,o3355,[Mem.create(this,param1),o19505]);
         });
         return promise;
      }
      
      function play(param1:o3355, param2:Number = 0.5, param3:uint = 0, param4:Number = 0, param5:Boolean = false, param6:SoundTransform = null, param7:int = 0, param8:int = 0) : void
      {
         var _loc9_:* = null;
         if(o13044)
         {
            return;
         }
         if(param2 < 0.1)
         {
            return;
         }
         var _loc10_:SoundChannel = Mem.create(this,SoundChannel);
         if(param8 == 14)
         {
            if(o20632 == null)
            {
               o20632 = Mem.create(this,SoundChannel);
            }
            else
            {
               o20632.stop();
               o20632 = null;
               o20632 = Mem.create(this,SoundChannel);
            }
         }
         if(param6 != null)
         {
            param6.volume = param6.volume * param2;
            if(param6.volume > 1)
            {
               param6.volume = 1;
            }
            _loc9_ = param6;
         }
         else
         {
            _loc9_ = Mem.create(this,SoundTransform);
            _loc9_.volume = param2;
         }
         if(o11404 && param5 || o12435 && param7 == 0 || o12435 && param7 == 2)
         {
            _loc9_.volume = 0;
         }
         if(param3 > 0 && !param5)
         {
            if(o12435 && param7 == 0 || o12435 && param7 == 1 || o12435 && param7 == 2 || o12964 && param7 == 2)
            {
               return;
            }
            _loc10_ = param1.o8703.play(param4,param3,_loc9_);
            switch(int(param7))
            {
               case 0:
                  if(o17918[param1.key] == null)
                  {
                     o17918[param1.key] = _loc10_;
                  }
                  else
                  {
                     trace("two of the same object sound loop! naughty!!!");
                     o17918[param1.key].stop();
                     delete o17918[param1.key];
                     o17918[param1.key] = _loc10_;
                  }
                  return;
               case 1:
                  if(o14738[param1.key] == null)
                  {
                     o14738[param1.key] = _loc10_;
                  }
                  else
                  {
                     trace("two of the same weapon sound loop! naughty!!!");
                     o14738[param1.key].stop();
                     delete o14738[param1.key];
                     o14738[param1.key] = _loc10_;
                  }
                  return;
               case 2:
                  o12679();
                  o12964 = true;
                  o7628[_loc10_] = 1;
                  return;
            }
         }
         else if(param3 > 0 && param5)
         {
            _loc10_ = param1.o8703.play(param4,param3,_loc9_);
            o7427[_loc10_] = 1;
            return;
         }
         if(!param5)
         {
            if(o12435)
            {
               return;
            }
            if(o10648[param8] == param8 && o10648[param8] != 0)
            {
               return;
            }
            if(o10648[param8] != 0)
            {
               o10648[param8] = param8;
            }
            if(o18894.length < 20)
            {
               _loc10_ = param1.o8703.play(param4,param3,_loc9_);
            }
            else
            {
               o4703();
               _loc10_ = param1.o8703.play(param4,param3,_loc9_);
            }
            if(_loc10_ == null)
            {
               return;
            }
            _loc10_.addEventListener("soundComplete",o14480);
            o9780[_loc10_] = param8;
            o18894.push(_loc10_);
            o19005[_loc10_] = 1;
         }
         else
         {
            _loc10_ = param1.o8703.play(param4,2147483647,_loc9_);
            o7427[_loc10_] = 1;
            if(param8 == 14)
            {
               o20632 = _loc10_;
            }
         }
      }
      
      private function o4703() : void
      {
         var _loc1_:SoundChannel = o18894[0];
         _loc1_.stop();
         delete o19005[_loc1_];
         o18894.splice(0,1);
         var _loc4_:int = 0;
         var _loc3_:* = o10648;
         for(var _loc2_ in o10648)
         {
            if(_loc2_ == o9780[_loc1_])
            {
               delete o10648[_loc2_];
               delete o9780[_loc1_];
               break;
            }
         }
         _loc1_ = null;
      }
      
      function stop() : void
      {
         if(o13044)
         {
            return;
         }
         var _loc3_:int = 0;
         var _loc2_:* = o19005;
         for(var _loc1_ in o19005)
         {
            _loc1_.stop();
         }
         o19005 = new Dictionary(true);
         o18894 = [];
         o10648 = new Dictionary(true);
         o9780 = new Dictionary(true);
      }
      
      public function o14161() : void
      {
         if(o13044)
         {
            return;
         }
         stop();
      }
      
      public function o595() : void
      {
         if(o13044)
         {
            return;
         }
         var _loc3_:int = 0;
         var _loc2_:* = o17918;
         for(var _loc1_ in o17918)
         {
            if(o17918[_loc1_] != null)
            {
               o17918[_loc1_].stop();
            }
         }
         o17918 = new Dictionary(true);
      }
      
      public function o14672() : void
      {
         if(o13044)
         {
            return;
         }
         var _loc3_:int = 0;
         var _loc2_:* = o17918;
         for(var _loc1_ in o17918)
         {
            if(o14738[_loc1_] != null)
            {
               o14738[_loc1_].stop();
            }
         }
         o14738 = new Dictionary(true);
      }
      
      public function o12679() : void
      {
         var _loc1_:* = null;
         if(o13044)
         {
            return;
         }
         var _loc4_:int = 0;
         var _loc3_:* = o7628;
         for(var _loc2_ in o7628)
         {
            _loc1_ = _loc2_ as SoundChannel;
            if(_loc1_ != null)
            {
               _loc1_.stop();
            }
         }
         o12964 = false;
         o7628 = new Dictionary(true);
      }
      
      public function o16404() : void
      {
         if(o13044)
         {
            return;
         }
         var _loc3_:int = 0;
         var _loc2_:* = o7427;
         for(var _loc1_ in o7427)
         {
            _loc1_.stop();
         }
         o20632 = null;
         o7427 = new Dictionary(true);
      }
      
      public function o1506(param1:Boolean) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(o13044)
         {
            return;
         }
         o11404 = param1;
         if(o11404)
         {
            var _loc5_:int = 0;
            var _loc4_:* = o7427;
            for(_loc2_ in o7427)
            {
               _loc3_ = _loc2_.soundTransform;
               _loc3_.volume = 0;
               _loc2_.soundTransform = _loc3_;
            }
         }
         else
         {
            var _loc7_:int = 0;
            var _loc6_:* = o7427;
            for(_loc2_ in o7427)
            {
               _loc3_ = _loc2_.soundTransform;
               if(o20632 != null)
               {
                  if(_loc2_ == o20632 && o6832)
                  {
                     continue;
                  }
               }
               _loc3_.volume = 0.65;
               _loc2_.soundTransform = _loc3_;
            }
         }
      }
      
      public function o14427(param1:Boolean) : void
      {
         if(o13044)
         {
            return;
         }
         o12435 = param1;
         if(o12435)
         {
            o14161();
            o3706();
         }
         else
         {
            o13964();
         }
      }
      
      private function o3706() : void
      {
         var _loc4_:* = NaN;
         var _loc2_:* = null;
         var _loc1_:* = null;
         var _loc6_:int = 0;
         var _loc5_:* = o17918;
         for(_loc4_ in o17918)
         {
            if(o17918[_loc4_] != null)
            {
               _loc2_ = o17918[_loc4_].soundTransform;
               _loc2_.volume = 0;
               o17918[_loc4_].soundTransform = _loc2_;
            }
         }
         var _loc8_:int = 0;
         var _loc7_:* = o14738;
         for(_loc4_ in o14738)
         {
            if(o14738[_loc4_] != null)
            {
               o14738[_loc4_].stop();
            }
         }
         var _loc10_:int = 0;
         var _loc9_:* = o7628;
         for(var _loc3_ in o7628)
         {
            _loc1_ = _loc3_ as SoundChannel;
            if(_loc1_ != null)
            {
               _loc2_ = _loc1_.soundTransform;
               _loc2_.volume = 0;
               _loc1_.soundTransform = _loc2_;
            }
         }
      }
      
      private function o13964() : void
      {
         var _loc3_:* = null;
         var _loc5_:* = NaN;
         var _loc2_:* = null;
         var _loc1_:* = null;
         var _loc7_:int = 0;
         var _loc6_:* = o17918;
         for(_loc5_ in o17918)
         {
            if(o17918[_loc5_] != null)
            {
               _loc2_ = o17918[_loc5_].soundTransform;
               _loc2_.volume = 0.5;
               o17918[_loc5_].soundTransform = _loc2_;
            }
         }
         var _loc9_:int = 0;
         var _loc8_:* = o7628;
         for(var _loc4_ in o7628)
         {
            _loc1_ = _loc4_ as SoundChannel;
            if(_loc1_ != null)
            {
               _loc2_ = _loc1_.soundTransform;
               _loc2_.volume = 0.5;
               _loc1_.soundTransform = _loc2_;
            }
         }
      }
      
      public function o1529(param1:Number) : void
      {
         if(o12435)
         {
            return;
         }
         if(o17918[param1] != null)
         {
            o17918[param1].stop();
            delete o17918[param1];
         }
      }
      
      public function o15448(param1:Number) : void
      {
         if(o12435)
         {
            return;
         }
         if(o14738[param1] != null)
         {
            o14738[param1].stop();
            delete o14738[param1];
         }
      }
      
      public function o2549(param1:Number, param2:Number) : void
      {
         var _loc3_:* = null;
         if(o17918[param1] != null)
         {
            _loc3_ = o17918[param1].soundTransform;
            _loc3_.volume = param2;
            o17918[param1].soundTransform = _loc3_;
         }
      }
      
      public function o1701(param1:int) : void
      {
         if(o12964)
         {
            o6985 = new o18036(this,o7628);
            o1051.o4767(o6985,0.0333333333333333,o6985.o20013,param1,true);
         }
      }
      
      public function o18040() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc4_:int = 0;
         var _loc3_:* = o7427;
         for(_loc1_ in o7427)
         {
            _loc1_.stop();
         }
         o7427 = new Dictionary(true);
         var _loc6_:int = 0;
         var _loc5_:* = o19005;
         for(_loc1_ in o19005)
         {
            _loc1_.stop();
         }
         o19005 = new Dictionary(true);
         o595();
         o14672();
         var _loc8_:int = 0;
         var _loc7_:* = o7628;
         for(_loc1_ in o7628)
         {
            _loc1_.stop();
         }
         o12964 = false;
         o7628 = new Dictionary(true);
         o20632 = null;
         o18894 = [];
         o10648 = new Dictionary(true);
         o9780 = new Dictionary(true);
      }
      
      public function o13446() : void
      {
         if(o6985 != null)
         {
            o12679();
            o6985.o6952();
         }
      }
      
      private function o14480(param1:Event) : void
      {
         var _loc2_:* = 0;
         var _loc3_:SoundChannel = param1.target as SoundChannel;
         _loc3_.removeEventListener("soundComplete",o14480);
         _loc2_ = 0;
         while(_loc2_ < o18894.length)
         {
            if(o18894[_loc2_] == _loc3_)
            {
               o18894.splice(_loc2_,1);
               break;
            }
            _loc2_++;
         }
         delete o19005[_loc3_];
         var _loc5_:int = 0;
         var _loc4_:* = o10648;
         for(_loc2_ in o10648)
         {
            if(_loc2_ == o9780[_loc3_])
            {
               delete o10648[_loc2_];
               §§push(delete o9780[_loc3_]);
               return;
            }
         }
         _loc3_ = null;
      }
   }
}
