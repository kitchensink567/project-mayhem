package
{
   import flash.display.MovieClip;
   import flash.utils.Dictionary;
   
   public class o19814 extends o8023 implements o7331
   {
      
      private static var o12962:Dictionary = Mem.create(o19814,Dictionary) as Dictionary;
      
      public static var o16569:Dictionary = Mem.create(o19814,Dictionary) as Dictionary;
      
      private static var o11139:Dictionary = Mem.create(o19814,Dictionary) as Dictionary;
       
      
      private var o15647:int = 0;
      
      private var o12859:Vector.<o14748> = null;
      
      private var o18109:Number = 0.03333333333333333;
      
      private var o1544:String = null;
      
      private var o1234:o7118 = null;
      
      private var o7942:int = -1;
      
      protected var o19055:Boolean = false;
      
      private var o18938:Boolean = true;
      
      private var o6579:Vector.<String> = null;
      
      private var o206:Vector.<String> = null;
      
      protected var o3284:int = -1;
      
      protected var o2984:int = -1;
      
      private var o9463:String = null;
      
      protected var o6691:o4332 = null;
      
      private var o19485:Boolean = false;
      
      private var o11965:Array = null;
      
      private var o8469:Boolean = true;
      
      private var o5293:Function = null;
      
      public function o19814()
      {
         super();
         o12859 = Mem.create(this,Vector.<o14748>) as Vector.<o14748>;
         o6579 = Mem.create(this,Vector.<String>) as Vector.<String>;
      }
      
      public function get currentFrame() : int
      {
         return o15647;
      }
      
      override public function o19115() : void
      {
         super.o19115();
         o6691 = null;
      }
      
      public function initialise(param1:String, param2:o7118) : void
      {
         this.o1234 = param2;
         if(param1 == null)
         {
            return;
         }
         o10589(param1);
      }
      
      public function set frameRate(param1:Number) : void
      {
         var _loc2_:* = null;
         if(o18109 == param1)
         {
            return;
         }
         o18109 = param1;
         if(o7942 != -1)
         {
            _loc2_ = o1051.getTimer(o7942);
            _loc2_.delay = param1 * 1000;
         }
      }
      
      public function o2880() : void
      {
         if(o7942 == -1)
         {
            o7942 = o1051.o4767(this,o18109,o2727);
         }
      }
      
      public function get frameRate() : Number
      {
         return o18109;
      }
      
      public function o19144(param1:Vector.<String>, param2:Boolean = true) : void
      {
         o10589(param1[int(Math.random() * param1.length)],param2);
      }
      
      public function o10589(param1:String, param2:Boolean = true) : void
      {
         var _loc4_:* = null;
         var _loc3_:* = null;
         if(o19485)
         {
            o11965 = [param1,param2];
            return;
         }
         if(this.o1544 == param1)
         {
            return;
         }
         if(param2)
         {
            o6579 = Mem.create(this,Vector.<String>) as Vector.<String>;
            this.o1544 = param1;
            _loc4_ = o17541.o13617(param1);
            _loc3_ = Mem.create(this,o11417) as o11417;
            _loc3_.initialise(_loc4_);
            dispatchData(_loc3_);
            if(o6691 != null)
            {
               o6691.o16396 = _loc4_;
            }
            o19485 = true;
            o1234.o11690(param1).defer(o15343);
            o15777(o1490.o4898);
         }
         else
         {
            o6579.push(param1);
         }
      }
      
      public function get o16350() : String
      {
         return o1544;
      }
      
      public function stop() : void
      {
         o19055 = false;
         o1051.stop(o7942);
      }
      
      public function play() : void
      {
         o19055 = true;
         o1051.start(o7942);
      }
      
      public function gotoAndStop(param1:int) : void
      {
         o15647 = param1;
         if(currentFrame < o12859.length)
         {
            o18412();
         }
         stop();
      }
      
      public function gotoAndPlay(param1:int) : void
      {
         o15647 = param1;
         if(currentFrame < o12859.length)
         {
            o18412();
         }
         play();
      }
      
      public function o1579(param1:String) : Boolean
      {
         return o206 == null?false:o206.indexOf(param1) != -1;
      }
      
      public function o10842(param1:String) : Object
      {
         if(!o1579(param1))
         {
            return {
               "start":0,
               "end":o12859.length - 1
            };
         }
         var _loc2_:int = o206.indexOf(param1);
         var _loc3_:int = o206.lastIndexOf(param1);
         return {
            "start":_loc2_,
            "end":_loc3_
         };
      }
      
      public function o5388(param1:String) : void
      {
         gotoAndStop(o10842(param1).start);
      }
      
      public function o11(param1:String) : void
      {
         var _loc2_:Object = o10842(param1);
         gotoAndPlay(!!o8469?_loc2_.start:_loc2_.end);
      }
      
      public function get currentLabel() : String
      {
         if(o206 == null)
         {
            return null;
         }
         return o206[currentFrame];
      }
      
      public function o11224(param1:int, param2:int) : void
      {
         o3284 = param1;
         o2984 = param2;
         if(currentFrame < o3284 || currentFrame > o2984)
         {
            o15647 = !!o8469?o3284:o2984;
            if(currentFrame < o12859.length)
            {
               o18412();
            }
         }
      }
      
      public function o12950() : int
      {
         return o12859.length;
      }
      
      public function o3030(param1:String) : void
      {
         var _loc2_:Object = o10842(param1);
         o11224(_loc2_.start,_loc2_.end);
      }
      
      public function set o12265(param1:Boolean) : void
      {
         o18938 = param1;
      }
      
      public function o11543() : void
      {
         o8469 = true;
      }
      
      public function o6343() : void
      {
         o8469 = false;
      }
      
      protected function o15343(param1:Class) : void
      {
         var _loc3_:* = null;
         var _loc4_:int = 0;
         var _loc2_:* = null;
         if(o16569[o16350] == null)
         {
            _loc3_ = null;
            if(o12962[param1] == null)
            {
               _loc3_ = Mem.create(this,param1) as param1;
               _loc3_.stop();
               o5773.o9980(_loc3_);
               o5773.o9481(_loc3_);
               o16569[o16350] = _loc3_.totalFrames;
               o11139[param1] = Mem.create(this,Vector.<String>) as Vector.<String>;
               _loc4_ = 0;
               while(_loc4_ < _loc3_.totalFrames)
               {
                  _loc3_.gotoAndStop(_loc4_ + 1);
                  o11139[param1].push(_loc3_.currentLabel);
                  _loc4_++;
               }
               o12962[param1] = _loc3_;
            }
            else
            {
               _loc3_ = o12962[param1];
            }
         }
         var _loc5_:int = o16569[o16350];
         o206 = o11139[param1];
         o15647 = 0;
         o3284 = 0;
         o2984 = _loc5_ - 1;
         o12859 = Mem.create(this,Vector.<o14748>) as Vector.<o14748>;
         _loc4_ = 1;
         while(_loc4_ <= _loc5_)
         {
            _loc2_ = o17541.o13617(o16350,_loc4_);
            o12859.push(_loc2_);
            _loc4_++;
         }
         o18412();
         if(o7942 != -1)
         {
            o1051.o19115(o7942);
            o7942 = -1;
         }
         o7942 = o1051.o4767(this,o18109,o2727);
         if(!o19055)
         {
            o1051.stop(o7942);
         }
         o19485 = false;
         if(o11965 != null)
         {
            o10589(o11965[0],o11965[1]);
            o11965 = null;
         }
      }
      
      private function o18412() : void
      {
         if(o6691 != null)
         {
            o6691.o16396 = o12859[currentFrame];
         }
      }
      
      protected function o2727() : void
      {
         var _loc1_:* = null;
         if(o12859.length > currentFrame)
         {
            o18412();
         }
         if(o8469)
         {
            o15647 = Number(o15647) + 1;
         }
         else
         {
            o15647 = Number(o15647) - 1;
         }
         if(currentFrame > o2984 || currentFrame < o3284)
         {
            if(o6579.length > 0)
            {
               o10589(o6579.shift());
            }
            if(o18938)
            {
               o15647 = !!o8469?o3284:o2984;
            }
            else
            {
               o15647 = !!o8469?o2984:o3284;
               stop();
            }
            o15777(o1490.o16612);
         }
         if(o5293)
         {
            _loc1_ = currentLabel;
            if(_loc1_ != o9463)
            {
               o9463 = _loc1_;
               o5293(_loc1_);
            }
         }
      }
      
      public function o11525(param1:o4332) : void
      {
         o6691 = param1;
         if(o6691 != null && o16350 != null)
         {
            o6691.o16396 = o17541.o13617(o16350);
         }
      }
      
      public function o2888() : void
      {
         o1051.o19115(o7942);
         o7942 = -1;
      }
      
      public function o13786(param1:Function) : void
      {
         o5293 = param1;
         o9463 = currentLabel;
      }
   }
}
