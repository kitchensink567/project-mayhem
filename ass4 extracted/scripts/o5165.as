package
{
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.system.Worker;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   
   public class o5165 extends Sprite implements o20139, o5264, o12600
   {
       
      
      public var o15843:o12441;
      
      public var o6387:int = 3;
      
      public var o15205:int = 1;
      
      private var o20498:Dictionary = null;
      
      public var o8701:Dictionary = null;
      
      public var o58:Dictionary = null;
      
      private var o3332:Dictionary;
      
      private var o1672:Sprite = null;
      
      private var time:int = 0;
      
      private var o10671:Dictionary = null;
      
      private var filter:Dictionary = null;
      
      private var o19852:o18435 = null;
      
      private var o8914:o9540 = null;
      
      private var o16111:Boolean = true;
      
      private var o13228:Boolean = false;
      
      private var o19519:Function;
      
      private var o3834:Dictionary;
      
      private var o13507:uint = 0;
      
      private var o7837:Vector.<o4974>;
      
      private var o3442:Dictionary;
      
      private var o12373:Vector.<uint>;
      
      private var o8067:Vector.<o10112>;
      
      private var o20661:Dictionary;
      
      private var o18281:Vector.<o11076>;
      
      private var o13001:Vector.<o16666>;
      
      private var o3153:Vector.<o16933>;
      
      private var o6968:Vector.<o9351>;
      
      private var o5704:uint = 0;
      
      private var o8388:o20021;
      
      private var o9966:Vector.<o19955>;
      
      private var o937:Vector.<o19905>;
      
      private var o20243:Vector.<o19388>;
      
      private var o2849:uint = 0;
      
      private var o3849:Dictionary;
      
      private var o2154:o12600;
      
      public function o5165()
      {
         o3332 = new Dictionary();
         o3834 = Mem.create(this,Dictionary);
         o7837 = Mem.create(this,Vector.<o4974>);
         o3442 = Mem.create(this,Dictionary);
         o12373 = Mem.create(this,Vector.<uint>);
         o8067 = Mem.create(this,Vector.<o10112>);
         o20661 = Mem.create(this,Dictionary);
         o18281 = Mem.create(this,Vector.<o11076>);
         o13001 = Mem.create(this,Vector.<o16666>);
         o3153 = Mem.create(this,Vector.<o16933>);
         o6968 = Mem.create(this,Vector.<o9351>);
         o8388 = Mem.create(this,o20021);
         o9966 = Mem.create(this,Vector.<o19955>);
         o937 = Mem.create(this,Vector.<o19905>);
         o20243 = Mem.create(this,Vector.<o19388>);
         o3849 = Mem.create(this,Dictionary);
         o2154 = Mem.create(this,o8023);
         super();
         init();
         if(!Worker.current.isPrimordial)
         {
            addEventListener("addedToStage",function(param1:Event):void
            {
               stage.frameRate = 4;
            });
         }
         addEventListener("enterFrame",o12114);
         addEventListener("addedToStage",o3602);
      }
      
      public static function o16797(param1:Number) : Number
      {
         return param1 * 0.02;
      }
      
      public static function o2786(param1:Number) : Number
      {
         return param1 * 50;
      }
      
      public function set o16316(param1:Function) : void
      {
         o19519 = param1;
      }
      
      public function init() : void
      {
         o20498 = Mem.create(this,Dictionary);
         o8701 = Mem.create(this,Dictionary);
         o58 = Mem.create(this,Dictionary);
         o1672 = Mem.create(this,Sprite);
         o10671 = Mem.create(this,Dictionary);
         filter = Mem.create(this,Dictionary);
         o3332 = new Dictionary();
         var _loc2_:o20021 = Mem.create(this,o20021);
         var _loc1_:Boolean = true;
         o15843 = Mem.create(this,o12441,[_loc2_,_loc1_]);
         o8914 = Mem.create(this,o9540,[this,filter]);
         o15843.o2970(o8914);
      }
      
      public function o2778() : void
      {
         var _loc2_:int = 0;
         var _loc4_:int = 0;
         var _loc3_:* = o20498;
         for each(var _loc1_ in o20498)
         {
            _loc2_++;
         }
         o8339(_loc2_);
      }
      
      public function clear() : void
      {
         init();
      }
      
      public function o19115() : void
      {
         removeEventListener("enterFrame",o12114);
         o15777(o14571.o19115);
      }
      
      public function o3602(param1:Event) : void
      {
         var _loc2_:* = null;
         if(Worker.current.isPrimordial)
         {
            _loc2_ = Mem.create(this,o13202);
            _loc2_.o15744(o1672);
            _loc2_.o12305(o2786(1));
            _loc2_.o9149(0.1);
            _loc2_.o10428(1);
            _loc2_.o19212(o13202.o7935 | o13202.o11298);
            o15843.o609(_loc2_);
            o15843.o15939();
            addChild(o1672);
         }
         removeEventListener("addedToStage",o3602);
      }
      
      public function o12114(param1:Event) : void
      {
         var _loc2_:Number = getTime();
         if(_loc2_ != 0)
         {
            o7664(0.0333333333333333);
         }
      }
      
      public function set o16923(param1:Boolean) : void
      {
         o16111 = param1;
      }
      
      public function get o16923() : Boolean
      {
         return o16111;
      }
      
      private function getTime() : Number
      {
         if(time == 0)
         {
            time = getTimer();
            return 0;
         }
         var _loc1_:int = getTimer();
         var _loc2_:int = _loc1_ - time;
         time = _loc1_;
         return _loc2_ / 1000;
      }
      
      public function o14352(param1:o1885) : void
      {
         var _loc2_:Number = stage.stageWidth / width;
         var _loc3_:Number = stage.stageHeight / height;
         this.x = -x * _loc2_;
         this.y = -y * _loc3_;
         this.scaleX = _loc2_;
         this.scaleY = _loc3_;
      }
      
      public function o3293() : o16124
      {
         var _loc3_:o16124 = Mem.create(this,o16124);
         var _loc2_:Vector.<o4471> = Mem.create(this,Vector.<o4471>);
         var _loc5_:int = 0;
         var _loc4_:* = o8914.o13554;
         for each(var _loc1_ in o8914.o13554)
         {
            _loc2_.push(Mem.create(this,o4471,[_loc1_.o12395.o15686().o3272(),_loc1_.o17768.o15686().o3272()]));
         }
         _loc3_.data = _loc2_;
         return _loc3_;
      }
      
      public function o2503(param1:uint) : o16124
      {
         var _loc2_:o16124 = Mem.create(this,o16124);
         var _loc3_:o5173 = o20498[param1];
         if(_loc3_ == null)
         {
            _loc2_.data = Mem.create(this,o18509);
            return _loc2_;
         }
         var _loc4_:o20021 = _loc3_.o8004();
         _loc2_.data = Mem.create(this,o18509,[o2786(_loc4_.x),o2786(_loc4_.y)]);
         return _loc2_;
      }
      
      public function o16073(param1:Number, param2:Number, param3:Number, param4:Number, param5:uint, param6:uint, param7:Vector.<int> = null) : o16124
      {
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc11_:o16124 = Mem.create(this,o16124);
         var _loc10_:o3405 = new o3405(this,1,param5,null,0,0,param6,param7,o12373);
         o15843.o4566(_loc10_.defer,Mem.create(this,o20021,[o16797(param1),o16797(param2)]),Mem.create(this,o20021,[o16797(param3),o16797(param4)]),param5,param6);
         o15843.o13874;
         if(_loc10_.o19613 == null)
         {
            _loc11_.data = {
               "body":-1,
               "fixture":-1,
               "x":_loc10_.o11581,
               "y":_loc10_.o17620
            };
            _loc10_.o19115();
            return _loc11_;
         }
         var _loc14_:int = 0;
         var _loc13_:* = o20498;
         for(var _loc12_ in o20498)
         {
            _loc8_ = o20498[_loc12_];
            if(_loc8_ != null)
            {
               _loc9_ = _loc8_.o7117();
               if(_loc9_ != null)
               {
                  while(true)
                  {
                     if(_loc9_ == _loc10_.o19613)
                     {
                        _loc11_.data = {
                           "body":_loc12_,
                           "fixture":_loc9_.o3272(),
                           "x":_loc10_.o11581,
                           "y":_loc10_.o17620
                        };
                        _loc10_.o19115();
                        return _loc11_;
                     }
                     _loc9_ = _loc9_.o10535();
                     if(_loc9_ != null)
                     {
                        continue;
                     }
                     break;
                  }
                  continue;
               }
               continue;
            }
         }
         _loc10_.o19115();
         return null;
      }
      
      public function o4816(param1:Number, param2:Number, param3:Number, param4:Number, param5:uint, param6:uint, param7:Vector.<int> = null) : o16124
      {
         return o16073(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public function o11481(param1:int, param2:Number = 0, param3:Boolean = false, param4:Boolean = true) : uint
      {
         o13507 = Number(o13507) + 1;
         var _loc5_:o10537 = Mem.create(this,o10537);
         _loc5_.o15121 = param3;
         _loc5_.o4799 = param2;
         _loc5_.o18377 = param2;
         _loc5_.type = o16482(param1);
         _loc5_.o18152 = o13507;
         _loc5_.o8940 = param4;
         var _loc6_:o5173 = o15843.o4974(_loc5_);
         o20498[o13507] = _loc6_;
         if(_loc6_ == null)
         {
            o7837.push(Mem.create(this,o4974,[o13507,_loc5_]));
         }
         return o13507;
      }
      
      private function o16482(param1:uint) : uint
      {
         switch(int(param1))
         {
            case 0:
               return o5173.o16684;
            case 1:
               return o5173.o8639;
            case 2:
               return o5173.o20611;
         }
      }
      
      public function o20232(param1:uint, param2:*) : void
      {
         o3834[param1] = param2;
      }
      
      public function o20896(param1:uint, param2:*) : void
      {
         o3442[param1] = param2;
      }
      
      public function o8142(param1:uint) : void
      {
         if(o15843.o3773() || o13228)
         {
            o12373.push(param1);
            return;
         }
         if(o20498[param1] == null)
         {
            return;
         }
         var _loc2_:o5173 = o20498[param1];
         var _loc3_:o11359 = _loc2_.o7117();
         while(_loc3_ != null)
         {
            delete o58[_loc3_.o3272()];
            _loc2_.o12351(_loc3_);
            _loc3_ = _loc3_.o10535();
         }
         o15843.o11509(_loc2_);
         delete o20498[param1];
         dispatchEvent(Mem.create(this,o16266,[param1]));
      }
      
      public function o15873(param1:uint, param2:uint) : void
      {
         var _loc3_:o5173 = o20498[param1];
         if(_loc3_ == null)
         {
            o8067.push(Mem.create(this,o10112,[param1,param2]));
            return;
         }
         var _loc5_:o19776 = o58[param2];
         if(_loc5_ == null || _loc5_.o10289 == null)
         {
            return;
         }
         var _loc4_:o11359 = _loc3_.o13970(_loc5_);
         _loc4_.o7620(param2);
         o20661[param2] = _loc4_;
         if(o10671[_loc5_.o10289] == null)
         {
            o10671[_loc5_.o10289] = Mem.create(this,Vector.<o17586>);
         }
         o10671[_loc5_.o10289].push(_loc4_.o4861());
         filter[param2] = o3849[param2];
         if(o3332[param1] != null)
         {
            o16894(param1,o3332[param1]);
         }
      }
      
      public function o16894(param1:uint, param2:Number) : void
      {
         var _loc6_:int = 0;
         var _loc4_:* = null;
         if(o15843.o3773() || o13228)
         {
            o18281.push(Mem.create(this,o11076,[param1,param2]));
            return;
         }
         o3332[param1] = param2;
         _loc6_ = 0;
         while(_loc6_ < o7837.length)
         {
            _loc4_ = o7837[_loc6_] as o4974;
            if(_loc4_ && _loc4_.id == param1)
            {
               o18281.push(Mem.create(this,o11076,[param1,param2]));
               return;
            }
            _loc6_++;
         }
         var _loc3_:o5173 = o20498[param1];
         var _loc5_:o14127 = Mem.create(this,o14127);
         _loc5_.o1906 = Mem.create(this,o20021);
         _loc5_.I = param2;
         _loc5_.o7191 = param2;
         _loc3_.o6710(_loc5_);
      }
      
      private function o17916() : void
      {
         var _loc1_:* = null;
         while(o13001.length > 0)
         {
            _loc1_ = o13001[0];
            o13001.splice(0,1);
            o8508(_loc1_.id,_loc1_.mask);
         }
      }
      
      private function o9259() : void
      {
         var _loc1_:* = null;
         while(o3153.length > 0)
         {
            _loc1_ = o3153[0];
            o3153.splice(0,1);
            o7364(_loc1_.id,_loc1_.o6365);
         }
      }
      
      public function o8508(param1:uint, param2:uint) : void
      {
         if(o15843.o3773() || o13228)
         {
            o13001.push(Mem.create(this,o16666,[param1,param2]));
            return;
         }
         o17916();
         var _loc4_:o11359 = o20661[param1];
         if(_loc4_ == null || _loc4_.o15686() == null)
         {
            return;
         }
         var _loc3_:o11501 = _loc4_.o18997();
         _loc3_.o251 = param2;
         _loc4_.o13518(_loc3_);
         if(_loc4_.o15686().o20329())
         {
            _loc4_.o15686().o12104(false);
            _loc4_.o15686().o12104(true);
         }
      }
      
      public function o7364(param1:uint, param2:uint) : void
      {
         if(o15843.o3773() || o13228)
         {
            o3153.push(Mem.create(this,o16933,[param1,param2]));
            return;
         }
         o9259();
         var _loc4_:o11359 = o20661[param1];
         if(_loc4_ == null || _loc4_.o15686() == null)
         {
            return;
         }
         var _loc3_:o11501 = _loc4_.o18997();
         _loc3_.o11755 = param2;
         _loc4_.o13518(_loc3_);
         if(_loc4_.o15686().o20329())
         {
            _loc4_.o15686().o12104(false);
            _loc4_.o15686().o12104(true);
         }
      }
      
      public function o9206(param1:uint, param2:uint) : void
      {
         var _loc4_:o5173 = o20498[param1];
         if(_loc4_ == null)
         {
            o6968.push(Mem.create(this,o9351,[param1,param2]));
            return;
         }
         var _loc3_:o11359 = _loc4_.o7117();
         while(_loc3_ != null)
         {
            if(_loc3_.o3272() == param2)
            {
               _loc4_.o12351(_loc3_);
               break;
            }
            _loc3_ = _loc3_.o10535();
         }
         if(o3332[param1] != null)
         {
            o16894(param1,o3332[param1]);
         }
      }
      
      public function o10716() : uint
      {
         o5704 = Number(o5704) + 1;
         o8701[o5704] = null;
         return o5704;
      }
      
      public function o16847(param1:uint, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc7_:o13884 = o8701[param1];
         if(_loc7_ == null)
         {
            _loc7_ = Mem.create(this,o13884);
         }
         o8388.x = o16797(param4 / 2 + param2);
         o8388.y = o16797(param5 / 2 + param3);
         _loc7_.o2909(o16797(param4 / 2),o16797(param5 / 2),o8388);
         if(o10671[_loc7_] != null)
         {
            var _loc9_:int = 0;
            var _loc8_:* = o10671[_loc7_];
            for each(var _loc6_ in o10671[_loc7_])
            {
               _loc6_.o2909(o16797(param4 / 2),o16797(param5 / 2),o8388);
            }
         }
         o8701[param1] = _loc7_;
      }
      
      public function o9730(param1:uint, param2:Vector.<o18509>) : void
      {
         var _loc4_:o13884 = Mem.create(this,o13884);
         var _loc3_:Array = Mem.create(this,Array);
         var _loc7_:int = 0;
         var _loc6_:* = param2;
         for each(var _loc5_ in param2)
         {
            _loc3_.push(Mem.create(this,o20021,[o16797(_loc5_.x),o16797(_loc5_.y)]));
         }
         _loc4_.o11917(_loc3_);
         o8701[param1] = _loc4_;
      }
      
      public function o8511(param1:uint, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:o13884 = Mem.create(this,o13884);
         _loc6_.o10485(Mem.create(this,o20021,[o16797(param2),o16797(param3)]),Mem.create(this,o20021,[o16797(param4),o16797(param5)]));
         o8701[param1] = _loc6_;
      }
      
      public function o7044(param1:uint, param2:Number) : void
      {
         var _loc3_:o15114 = Mem.create(this,o15114,[o16797(param2)]);
         o8701[param1] = _loc3_;
      }
      
      public function o6141(param1:uint, param2:Number, param3:Number) : void
      {
         var _loc4_:o5173 = o20498[param1];
         if(o15843.o3773() || o13228)
         {
            o9966.push(Mem.create(this,o19955,[param1,param2,param3]));
            return;
         }
         if(_loc4_ == null)
         {
            return;
         }
         _loc4_.o9186(Mem.create(this,o20021,[o16797(param2),o16797(param3)]));
         _loc4_.o17676(true);
      }
      
      public function o8564(param1:uint, param2:Number, param3:Number) : void
      {
         var _loc4_:o5173 = o20498[param1];
         if(o15843.o3773() || o13228)
         {
            o937.push(Mem.create(this,o19905,[param1,param2,param3]));
            return;
         }
         if(_loc4_ == null)
         {
            return;
         }
         _loc4_.o17676(true);
         _loc4_.o15749(Mem.create(this,o20021,[o16797(param2),o16797(param3)]));
      }
      
      public function o16687(param1:uint, param2:Number) : void
      {
         var _loc3_:o5173 = o20498[param1];
         if(o15843.o3773() || o13228)
         {
            o20243.push(Mem.create(this,o19388,[param1,param2]));
            return;
         }
         if(_loc3_ == null)
         {
            return;
         }
         _loc3_.o17676(true);
         _loc3_.o13218(param2);
      }
      
      public function o9946(param1:uint, param2:uint) : void
      {
         var _loc3_:o5173 = o20498[param1];
         if(_loc3_)
         {
            _loc3_.o15136(o16482(param2));
         }
      }
      
      public function o9297(param1:uint = 1, param2:uint = 4294967295, param3:uint = 4294967295, param4:Boolean = false, param5:Number = 1, param6:Number = 0) : uint
      {
         o2849 = Number(o2849) + 1;
         var _loc7_:o19776 = Mem.create(this,o19776);
         _loc7_.o16036 = 1;
         _loc7_.o12438 = param5;
         _loc7_.o7742 = param6;
         _loc7_.filter.o11755 = param1;
         _loc7_.filter.o251 = param2;
         _loc7_.o4982 = param4;
         o58[o2849] = _loc7_;
         o3849[o2849] = param3;
         return o2849;
      }
      
      public function o18214(param1:uint, param2:uint) : void
      {
         var _loc3_:o19776 = o58[param1];
         _loc3_.o10289 = o8701[param2];
      }
      
      public function o7664(param1:Number) : void
      {
         var _loc14_:* = null;
         var _loc3_:* = 0;
         var _loc9_:* = undefined;
         var _loc11_:* = undefined;
         if(!o16111)
         {
            return;
         }
         var _loc17_:int = 0;
         var _loc16_:* = o12373;
         for each(var _loc2_ in o12373)
         {
            o8142(_loc2_);
         }
         o12373.splice(0,o12373.length);
         var _loc19_:int = 0;
         var _loc18_:* = o7837;
         for each(var _loc5_ in o7837)
         {
            o20498[_loc5_.id] = o15843.o4974(_loc5_.o16156);
         }
         o7837.splice(0,o7837.length);
         var _loc23_:int = 0;
         var _loc22_:* = o6968;
         for each(var _loc7_ in o6968)
         {
            var _loc21_:int = 0;
            var _loc20_:* = o8067;
            for each(var _loc13_ in o8067)
            {
               if(_loc7_.id == _loc13_.id && _loc7_.fixture == _loc13_.fixture)
               {
                  o8067.splice(o8067.indexOf(_loc13_),1);
                  break;
               }
            }
         }
         o6968.splice(0,o6968.length);
         var _loc25_:int = 0;
         var _loc24_:* = o8067;
         for each(_loc13_ in o8067)
         {
            o15873(_loc13_.id,_loc13_.fixture);
         }
         o8067.splice(0,o8067.length);
         var _loc27_:int = 0;
         var _loc26_:* = o937;
         for each(var _loc12_ in o937)
         {
            o8564(_loc12_.id,_loc12_.x,_loc12_.y);
         }
         o937.splice(0,o937.length);
         var _loc29_:int = 0;
         var _loc28_:* = o20243;
         for each(var _loc6_ in o20243)
         {
            o16687(_loc6_.id,_loc6_.rotation);
         }
         o20243.splice(0,o20243.length);
         var _loc31_:int = 0;
         var _loc30_:* = o18281;
         for each(var _loc8_ in o18281)
         {
            o16894(_loc8_.id,_loc8_.o7191);
         }
         o18281.splice(0,o18281.length);
         var _loc33_:int = 0;
         var _loc32_:* = o9966;
         for each(var _loc15_ in o9966)
         {
            o6141(_loc15_.id,_loc15_.x,_loc15_.y);
         }
         o9966.splice(0,o9966.length);
         var _loc35_:int = 0;
         var _loc34_:* = o13001;
         for each(var _loc4_ in o13001)
         {
            o8508(_loc4_.id,_loc4_.mask);
         }
         o13001.splice(0,o13001.length);
         var _loc37_:int = 0;
         var _loc36_:* = o3153;
         for each(var _loc10_ in o3153)
         {
            o7364(_loc10_.id,_loc10_.o6365);
         }
         o13001.splice(0,o13001.length);
         o13228 = true;
         o15843.o15637(param1,o6387,o15205);
         o13228 = false;
         _loc14_ = o15843.o13137();
         while(_loc14_)
         {
            if(_loc14_.o3272() != null && _loc14_.o4675())
            {
               _loc3_ = uint(_loc14_.o3272());
               _loc9_ = o3834[_loc3_];
               if(_loc9_ != null)
               {
                  _loc9_.x = o2786(_loc14_.o5667().x);
                  _loc9_.y = o2786(_loc14_.o5667().y);
               }
               _loc11_ = o3442[_loc3_];
               if(_loc11_ != null)
               {
                  _loc11_.value = _loc14_.o17815();
               }
            }
            _loc14_ = _loc14_.o10535();
         }
         if(!Worker.current.isPrimordial)
         {
         }
      }
      
      public function reset() : void
      {
      }
      
      public function o15777(param1:int) : void
      {
         o2154.o15777(param1);
      }
      
      public function dispatchData(param1:Event) : void
      {
         o2154.dispatchData(param1);
      }
      
      public function o16280(param1:o12600, param2:int, param3:Function) : void
      {
         o2154.o16280(param1,param2,param3);
      }
      
      public function o19926(param1:o12600, param2:int, param3:Function) : void
      {
         o2154.o19926(param1,param2,param3);
      }
      
      public function o12657(param1:int, param2:Function) : void
      {
         o2154.o12657(param1,param2);
      }
      
      public function o8289() : Boolean
      {
         return o2154.o8289();
      }
   }
}

class o4974
{
    
   
   public var id:uint = 0;
   
   public var o16156:o10537 = null;
   
   function o4974()
   {
      super();
   }
   
   public function initialise(param1:uint, param2:o10537) : void
   {
      this.id = param1;
      this.o16156 = param2;
   }
}

class o10112
{
    
   
   public var id:uint = 0;
   
   public var fixture:uint = 0;
   
   function o10112()
   {
      super();
   }
   
   public function initialise(param1:uint, param2:uint) : void
   {
      this.id = param1;
      this.fixture = param2;
   }
}

class o9351
{
    
   
   public var id:uint = 0;
   
   public var fixture:uint = 0;
   
   function o9351()
   {
      super();
   }
   
   public function initialise(param1:uint, param2:uint) : void
   {
      this.id = param1;
      this.fixture = param2;
   }
}

class o11076
{
    
   
   public var id:uint = 0;
   
   public var o7191:Number = 0;
   
   function o11076()
   {
      super();
   }
   
   public function initialise(param1:uint, param2:Number) : void
   {
      this.id = param1;
      this.o7191 = param2;
   }
}

class o19905
{
    
   
   public var id:uint = 0;
   
   public var x:Number = 0;
   
   public var y:Number = 0;
   
   function o19905()
   {
      super();
   }
   
   public function initialise(param1:uint, param2:Number, param3:Number) : void
   {
      this.id = param1;
      this.x = param2;
      this.y = param3;
   }
}

class o19388
{
    
   
   public var id:uint = 0;
   
   public var rotation:Number = 0;
   
   function o19388()
   {
      super();
   }
   
   public function initialise(param1:uint, param2:Number) : void
   {
      this.id = param1;
      this.rotation = param2;
   }
}

class o19955
{
    
   
   public var id:uint = 0;
   
   public var x:Number = 0;
   
   public var y:Number = 0;
   
   function o19955()
   {
      super();
   }
   
   public function initialise(param1:uint, param2:Number, param3:Number) : void
   {
      this.id = param1;
      this.x = param2;
      this.y = param3;
   }
}

class o16666
{
    
   
   public var id:uint = 0;
   
   public var mask:uint = 0;
   
   function o16666()
   {
      super();
   }
   
   public function initialise(param1:uint, param2:uint) : void
   {
      this.id = param1;
      this.mask = param2;
   }
}

class o16933
{
    
   
   public var id:uint = 0;
   
   public var o6365:uint = 0;
   
   function o16933()
   {
      super();
   }
   
   public function initialise(param1:uint, param2:uint) : void
   {
      this.id = param1;
      this.o6365 = param2;
   }
}

class o3405
{
    
   
   public var o6338:Number;
   
   public var o6365:uint;
   
   public var o19613:o11359;
   
   public var o11581:Number;
   
   public var o17620:Number;
   
   public var mask:uint;
   
   public var filter:Vector.<int>;
   
   public var o12373:Vector.<uint>;
   
   public var o2535:o5165;
   
   function o3405(param1:o5165, param2:Number, param3:uint, param4:o11359, param5:Number, param6:Number, param7:uint, param8:Vector.<int>, param9:Vector.<uint>)
   {
      super();
      this.o6338 = param2;
      this.o6365 = param3;
      this.o19613 = param4;
      this.o11581 = param5;
      this.o17620 = param6;
      this.mask = param7;
      this.filter = param8;
      this.o12373 = param9;
      if(param9 == null)
      {
         throw new Error("toDestroy null");
      }
      this.o2535 = param1;
   }
   
   public function defer(param1:o11359, param2:o20021, param3:o20021, param4:Number) : Boolean
   {
      if(param4 <= o6338)
      {
         if((param1.o18997().o11755 & mask) != 0 && (o6365 & param1.o18997().o251) != 0 && (filter == null || filter.indexOf(param1.o15686().o3272()) == -1) && o12373.indexOf(param1.o15686().o3272()) == -1)
         {
            o19613 = param1;
            o6338 = param4;
            o11581 = o5165.o2786(param2.x);
            o17620 = o5165.o2786(param2.y);
            return true;
         }
      }
      return false;
   }
   
   public function o19115() : void
   {
      this.o6365 = 0;
      this.o19613 = null;
      this.mask = 0;
      this.filter = null;
      this.o12373 = null;
      this.o2535 = null;
   }
}
