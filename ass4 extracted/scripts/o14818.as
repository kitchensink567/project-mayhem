package
{
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   
   public class o14818 extends o8023
   {
      
      public static var o12149:o20139 = null;
      
      public static var o6378:o255 = null;
       
      
      public var o4670:o8621 = null;
      
      public var o20360:o18435 = null;
      
      public var o10946:o18435 = null;
      
      private var o17588:MovieClip;
      
      private var o7964:MovieClip;
      
      public var o6041:Dictionary;
      
      public var o7352:Dictionary;
      
      public var o19298:Dictionary;
      
      public var o17752:Dictionary;
      
      public var o18291:Dictionary;
      
      public var o2075:o17528;
      
      public var o9676:Vector.<o10262>;
      
      private var o18019:Vector.<o6212> = null;
      
      public var o20318:o4997 = null;
      
      public var o16434:Vector.<o4332>;
      
      public var o10971:Vector.<o4332>;
      
      public var o13094:Boolean = true;
      
      public var o9286:int = 0;
      
      public var o8917:o69;
      
      public var o3690:Array;
      
      public var o2249:Array;
      
      public var o2741:Array;
      
      public var o11100:Array;
      
      private const o11293:Number = 400;
      
      private const o19284:Number = 60;
      
      private var o414:int = 0;
      
      private var o8362:Vector.<o2041>;
      
      private var o18208:Boolean = true;
      
      private var o10511:Dictionary;
      
      private var o7543:int = 0;
      
      private var o18538:Vector.<o4332>;
      
      public var o5019:String = null;
      
      public function o14818()
      {
         o17588 = new MovieClip();
         o7964 = new MovieClip();
         o6041 = new Dictionary();
         o7352 = new Dictionary();
         o19298 = new Dictionary();
         o17752 = new Dictionary();
         o18291 = new Dictionary();
         o2075 = new o17528();
         o9676 = new Vector.<o10262>();
         o16434 = new Vector.<o4332>();
         o10971 = new Vector.<o4332>();
         o3690 = [];
         o2249 = [];
         o2741 = [];
         o11100 = [];
         o8362 = new Vector.<o2041>();
         o10511 = new Dictionary();
         o18538 = new Vector.<o4332>();
         super();
      }
      
      public function initialise(param1:o8621, param2:Boolean = true) : void
      {
         var _loc4_:* = null;
         var _loc15_:* = null;
         var _loc19_:* = null;
         var _loc17_:* = null;
         var _loc21_:* = null;
         var _loc22_:* = null;
         var _loc12_:* = null;
         var _loc3_:* = null;
         var _loc6_:* = null;
         this.o4670 = param1;
         var _loc7_:Array = [];
         var _loc25_:int = 0;
         var _loc24_:* = param1.o19298;
         for each(var _loc10_ in param1.o19298)
         {
            if(o20033(_loc10_.o10940) == null)
            {
               o8339("Cant find image map tile image id:",_loc10_.o10940);
            }
            else
            {
               if(param2)
               {
                  _loc4_ = o4519.o8116.o1234.o11690(o20033(_loc10_.o10940));
                  _loc15_ = new o15764(this,_loc10_,o19298,o17588,o7964,o17752,o18291,o18538);
                  _loc4_.defer(_loc15_.o5111);
                  _loc7_.push(_loc4_);
               }
               o3690.push(o20033(_loc10_.o10940));
            }
         }
         if(!param2)
         {
            o15777(o12927.o5422);
            return;
         }
         o9286 = getTimer();
         o18019 = new Vector.<o6212>();
         if(o12149 == null)
         {
            o12149 = o14355.o11715(o4519.o16316);
            o6378 = Mem.create(this,o255,[o12149]);
         }
         var _loc27_:int = 0;
         var _loc26_:* = param1.o6041;
         for each(var _loc23_ in param1.o6041)
         {
            _loc19_ = new o2041(_loc23_.id,_loc23_.x,_loc23_.y,_loc23_.name);
            o6041[_loc19_.id] = _loc19_;
         }
         var _loc31_:int = 0;
         var _loc30_:* = param1.o7352;
         for each(var _loc20_ in param1.o7352)
         {
            _loc17_ = new o13848();
            _loc17_.id = _loc20_.id;
            _loc17_.o6041 = new Vector.<o2041>();
            _loc17_.o17242 = new Vector.<o4864>();
            var _loc29_:int = 0;
            var _loc28_:* = _loc20_.o6041;
            for each(var _loc8_ in _loc20_.o6041)
            {
               _loc17_.o6041.push(o6041[_loc8_]);
            }
            o7352[_loc17_.id] = _loc17_;
         }
         var _loc35_:int = 0;
         var _loc34_:* = param1.o17242;
         for each(var _loc18_ in param1.o17242)
         {
            _loc21_ = o6041[_loc18_.o12395];
            _loc22_ = o6041[_loc18_.o17768];
            _loc21_.o16079.push(_loc22_);
            _loc22_.o16079.push(_loc21_);
            var _loc33_:int = 0;
            var _loc32_:* = o7352;
            for each(_loc17_ in o7352)
            {
               if(_loc17_.o6041.indexOf(_loc21_) != -1 && _loc17_.o6041.indexOf(_loc22_) != -1)
               {
                  _loc12_ = new o4864();
                  _loc12_.o12395 = _loc21_;
                  _loc12_.o17768 = _loc22_;
                  _loc17_.o17242.push(_loc12_);
               }
            }
         }
         var _loc41_:int = 0;
         var _loc40_:* = param1.o7001;
         for each(var _loc5_ in param1.o7001)
         {
            _loc17_ = o7352[_loc5_];
            if(o20360 == null)
            {
               _loc3_ = new o772(o12149);
               _loc3_.o6041 = _loc17_.o6041;
               o20360 = new o18435(_loc3_,new o15808(_loc3_));
               _loc6_ = new o772(o4519.o8116.o2535);
               _loc6_.o6041 = _loc17_.o6041;
               o10946 = new o18435(_loc6_,new o15808(_loc6_));
            }
            else
            {
               o20360.o2013.o6041 = o20360.o2013.o6041.concat(_loc17_.o6041);
               o10946.o2013.o6041 = o20360.o2013.o6041.concat(_loc17_.o6041);
            }
            o8362 = o8362.concat(_loc17_.o6041);
         }
         var _loc9_:Array = [];
         var _loc13_:Array = [];
         var _loc47_:int = 0;
         var _loc46_:* = param1.o7001;
         for each(_loc5_ in param1.o7001)
         {
            _loc17_ = o7352[_loc5_];
            var _loc43_:int = 0;
            var _loc42_:* = _loc17_.o6041;
            for each(var _loc14_ in _loc17_.o6041)
            {
               _loc9_.push([_loc14_.id,_loc14_.x,_loc14_.y]);
            }
            var _loc45_:int = 0;
            var _loc44_:* = _loc17_.o17242;
            for each(_loc12_ in _loc17_.o17242)
            {
               _loc13_.push([_loc12_.o12395.id,_loc12_.o17768.id]);
            }
         }
         o3865(param1.o18067);
         var _loc49_:int = 0;
         var _loc48_:* = param1.o12584;
         for each(_loc8_ in param1.o12584)
         {
         }
         var _loc51_:int = 0;
         var _loc50_:* = param1.o7642;
         for each(_loc8_ in param1.o7642)
         {
         }
         var _loc53_:int = 0;
         var _loc52_:* = param1.o16530;
         for each(_loc8_ in param1.o16530)
         {
         }
         var _loc55_:int = 0;
         var _loc54_:* = param1.o10245;
         for each(var _loc11_ in param1.o10245)
         {
         }
         var _loc16_:* = this;
         o15714.o18684(_loc7_,o12300);
         o15028.o3613 = false;
         o17517.o12955 = false;
      }
      
      private function o12300(... rest) : void
      {
         o5724();
         o15777(o12927.o5422);
         o2075.initialise(o17588,o7964);
         o20318 = new o4997();
         o20318.init();
      }
      
      public function o2311() : void
      {
         var _loc6_:int = 0;
         var _loc5_:* = o10971;
         for each(var _loc2_ in o10971)
         {
            var _loc4_:int = 0;
            var _loc3_:* = o16434;
            for each(var _loc1_ in o16434)
            {
               o4519.o8116.o11954.o6849(_loc2_,_loc1_);
            }
            o4519.o8116.o11954.o17454(_loc2_);
            _loc2_.o19115();
         }
         o10971 = new Vector.<o4332>();
      }
      
      private function o14937() : void
      {
         var _loc3_:int = 0;
         var _loc5_:Number = NaN;
         var _loc4_:Number = NaN;
         o4519.o8116.debugView.graphics.endFill();
         if(o414 >= o8362.length)
         {
            return;
         }
         var _loc2_:o2041 = o8362[o414];
         o414 = Number(o414) + 1;
         o4519.o8116.debugView.graphics.beginFill(65280,0.07);
         o4519.o8116.debugView.graphics.lineStyle(1,34816,0);
         o18208 = true;
         var _loc1_:* = 0;
         _loc3_ = 0;
         while(_loc3_ < 60)
         {
            _loc1_ = Number(_loc3_ / 60 * 2 * 3.14159265358979);
            _loc5_ = _loc2_.x + Math.cos(_loc1_) * 400;
            _loc4_ = _loc2_.y + Math.sin(_loc1_) * 400;
            new o4418(o12149).o4816(_loc2_.x,_loc2_.y,_loc5_,_loc4_,o8723.o2823,o8723.o3969 | o8723.o18180,null,o3661);
            _loc3_++;
         }
         o1051.o9310(this,0.5,o14937);
      }
      
      private function o3661(param1:Boolean, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc8_:o18509 = new o18509(param2,param3);
         if(param1 == false)
         {
            _loc8_.x = param6;
            _loc8_.y = param7;
         }
         if(o18208)
         {
            o4519.o8116.debugView.graphics.moveTo(_loc8_.x,_loc8_.y);
            o18208 = false;
         }
         else
         {
            o4519.o8116.debugView.graphics.lineTo(_loc8_.x,_loc8_.y);
         }
      }
      
      public function o18082(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      public function o3865(param1:Vector.<int>, param2:uint = 1, param3:uint = 4294967295) : int
      {
         var _loc26_:* = null;
         var _loc31_:* = undefined;
         var _loc14_:* = undefined;
         var _loc13_:* = undefined;
         var _loc23_:int = 0;
         var _loc22_:* = undefined;
         var _loc16_:* = undefined;
         var _loc12_:* = null;
         var _loc8_:* = null;
         var _loc17_:* = undefined;
         var _loc5_:* = null;
         var _loc4_:* = null;
         var _loc20_:* = null;
         var _loc6_:* = null;
         var _loc28_:* = null;
         var _loc9_:* = null;
         var _loc19_:int = 0;
         var _loc21_:* = null;
         o7543 = Number(o7543) + 1;
         var _loc30_:int = Number(o7543);
         var _loc15_:Vector.<o10262> = new Vector.<o10262>();
         var _loc27_:Vector.<Vector.<o18509>> = new Vector.<Vector.<o18509>>();
         var _loc44_:int = 0;
         var _loc43_:* = param1;
         for each(var _loc18_ in param1)
         {
            _loc26_ = o7352[_loc18_];
            _loc31_ = new Vector.<o4864>();
            _loc14_ = new Vector.<o2041>();
            var _loc40_:int = 0;
            var _loc39_:* = _loc26_.o6041;
            for each(var _loc24_ in _loc26_.o6041)
            {
               if(_loc14_.indexOf(_loc24_) == -1)
               {
                  _loc13_ = o3372(_loc24_.id);
                  if(_loc13_ != null)
                  {
                     _loc23_ = 0;
                     while(_loc23_ < _loc13_.length)
                     {
                        _loc22_ = _loc13_[_loc23_];
                        var _loc34_:int = 0;
                        var _loc33_:* = _loc27_;
                        loop3:
                        while(true)
                        {
                           for each(var _loc10_ in _loc27_)
                           {
                              if(!o20048(_loc22_,_loc10_))
                              {
                                 continue loop3;
                              }
                              break loop3;
                           }
                           _loc16_ = new Vector.<o18509>();
                           var _loc38_:int = 0;
                           var _loc37_:* = _loc22_;
                           for each(var _loc25_ in _loc22_)
                           {
                              _loc14_.push(_loc25_);
                              var _loc36_:int = 0;
                              var _loc35_:* = _loc26_.o17242;
                              for each(var _loc11_ in _loc26_.o17242)
                              {
                                 if(_loc11_.o12395.id == _loc25_.id || _loc11_.o17768.id == _loc25_.id)
                                 {
                                    if(_loc31_.indexOf(_loc11_) == -1)
                                    {
                                       _loc31_.push(_loc11_);
                                    }
                                 }
                              }
                              _loc16_.push(new o18509(_loc25_.x,_loc25_.y));
                           }
                           _loc27_.push(_loc16_);
                           break;
                        }
                        _loc23_++;
                     }
                     continue;
                  }
                  continue;
               }
            }
            var _loc42_:int = 0;
            var _loc41_:* = _loc31_;
            for each(_loc11_ in _loc31_)
            {
               _loc26_.o17242.splice(_loc26_.o17242.indexOf(_loc11_),1);
            }
         }
         var _loc50_:int = 0;
         var _loc49_:* = _loc27_;
         for each(var _loc7_ in _loc27_)
         {
            _loc12_ = new o7406(_loc7_);
            _loc8_ = o20938.o5908(_loc12_);
            if(_loc8_ == null)
            {
               _loc12_ = new o7406(_loc7_.concat().reverse());
               _loc8_ = o20938.o5908(_loc12_);
            }
            _loc17_ = new Vector.<Vector.<o18509>>();
            if(_loc8_.length > 0)
            {
               _loc5_ = o20938.o13361(_loc8_);
               var _loc46_:int = 0;
               var _loc45_:* = _loc5_;
               for each(var _loc29_ in _loc5_)
               {
                  _loc17_.push(_loc29_.o2625);
               }
            }
            if(_loc17_.length > 0)
            {
               var _loc48_:int = 0;
               var _loc47_:* = _loc17_;
               for each(var _loc32_ in _loc17_)
               {
                  _loc4_ = o4519.o8116.o9869.o1968(0);
                  _loc20_ = new o17761(_loc4_.o2535);
                  _loc20_.o14486(_loc32_);
                  _loc6_ = o4519.o8116.o20600.o15803(param2,param3,o8723.o619 | o8723.o11272 | o8723.o9135);
                  _loc6_.o10289 = _loc20_.id;
                  _loc4_.o14230(_loc6_);
                  o9676.push(_loc4_);
                  _loc15_.push(_loc4_);
                  _loc4_ = o6378.o1968(0);
                  _loc20_ = new o17761(_loc4_.o2535);
                  _loc20_.o14486(_loc32_);
                  _loc6_ = o4519.o8116.o20600.o4309(_loc4_.o2535,param2,param3);
                  _loc6_.o10289 = _loc20_.id;
                  _loc4_.o14230(_loc6_);
                  _loc15_.push(_loc4_);
                  _loc28_ = new o18509(9999999,9999999);
                  _loc9_ = new o18509(-9999999,-9999999);
               }
               continue;
            }
         }
         var _loc54_:int = 0;
         var _loc53_:* = param1;
         for each(_loc18_ in param1)
         {
            _loc26_ = o7352[_loc18_];
            var _loc52_:int = 0;
            var _loc51_:* = _loc26_.o17242;
            for each(_loc11_ in _loc26_.o17242)
            {
               _loc4_ = o4519.o8116.o9869.o1968(0);
               _loc20_ = new o17761(_loc4_.o2535);
               _loc20_.o943(_loc11_.o12395.x,_loc11_.o12395.y,_loc11_.o17768.x,_loc11_.o17768.y);
               _loc6_ = o4519.o8116.o20600.o15803(param2,param3);
               _loc6_.o10289 = _loc20_.id;
               trace("WARNING EDGE FOUND");
               _loc4_.o14230(_loc6_);
               o9676.push(_loc4_);
               _loc15_.push(_loc4_);
            }
         }
         o10511[_loc30_] = _loc15_;
         return _loc30_;
      }
      
      public function o5294(param1:int) : void
      {
         var _loc4_:int = 0;
         var _loc3_:* = o10511[param1];
         for each(var _loc2_ in o10511[param1])
         {
            _loc2_.o19115();
         }
      }
      
      public function get height() : Number
      {
         return o17588.height;
      }
      
      public function get width() : Number
      {
         return o17588.width;
      }
      
      public function getBounds() : Rectangle
      {
         return o17588.getBounds(o17588);
      }
      
      public function o5649(param1:o6212) : void
      {
         o18019.push(param1);
         o4519.o8116.o14443.o5373(param1);
      }
      
      public function o12334(param1:String) : o6212
      {
         var _loc4_:int = 0;
         var _loc3_:* = o18019;
         for each(var _loc2_ in o18019)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function o16775(param1:String) : o7848
      {
         var _loc4_:int = 0;
         var _loc3_:* = o4519.o8116.o2996.o15727;
         for each(var _loc2_ in o4519.o8116.o2996.o15727)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function o20048(param1:Vector.<o2041>, param2:Vector.<o18509>) : Boolean
      {
         var _loc4_:int = 0;
         if(param1.length != param2.length)
         {
            return false;
         }
         var _loc3_:* = -1;
         _loc4_ = 0;
         while(_loc4_ < param2.length)
         {
            if(param2[_loc4_].x == param1[0].x && param2[_loc4_].y == param1[0].y)
            {
               _loc3_ = _loc4_;
               break;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            return false;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.length)
         {
            if(param1[_loc4_].x != param2[(_loc4_ + _loc3_) % param1.length].x || param1[_loc4_].y != param2[(_loc4_ + _loc3_) % param1.length].y)
            {
               return false;
            }
            _loc4_++;
         }
         return true;
      }
      
      override public function o19115() : void
      {
         var _loc5_:int = 0;
         var _loc4_:* = o18019;
         for each(var _loc2_ in o18019)
         {
            _loc2_.o19115();
         }
         var _loc7_:int = 0;
         var _loc6_:* = o9676;
         for each(var _loc1_ in o9676)
         {
            _loc1_.o19115();
         }
         o6378.clear();
         var _loc9_:int = 0;
         var _loc8_:* = o18538;
         for each(var _loc3_ in o18538)
         {
            o4519.o8116.o11954.o11867(_loc3_);
         }
         o2075.o19115();
         super.o19115();
      }
      
      public function o19619(param1:int) : void
      {
         if(o19298[param1] != null)
         {
            o17588.removeChild(o19298[param1]);
            delete o19298[param1];
            o2075.o2072();
         }
         else if(o17752[param1] != null)
         {
            o4519.o8116.o11954.o11867(o17752[param1]);
            o18538.splice(o18538.indexOf(o17752[param1]),1);
            delete o17752[param1];
         }
      }
      
      public function o7433(param1:int) : void
      {
         id = param1;
         if(o18291[id] != null && o17752[id] != null)
         {
            var o16166:o7331 = o4519.o9721.o18291[id];
            var o6691:o4332 = o17752[id];
            o4519.o9721.o18291[id].o19926(this,o1490.o16612,function():void
            {
               o16166.o19115();
               o4519.o8116.o11954.o11867(o6691);
            });
            o16166.play();
            delete o18291[id];
            delete o17752[id];
         }
      }
      
      public function o7963(param1:int) : Vector.<o18509>
      {
         var _loc5_:* = null;
         var _loc2_:Vector.<o18509> = new Vector.<o18509>();
         var _loc3_:* = o6041[param1];
         var _loc4_:* = null;
         while(_loc3_.o16079.length == 2)
         {
            _loc2_.push(new o18509(_loc3_.x,_loc3_.y));
            _loc5_ = _loc3_.o16079[0] != _loc4_?_loc3_.o16079[0]:_loc3_.o16079[1];
            _loc4_ = _loc3_;
            _loc3_ = _loc5_;
            if(_loc3_ == o6041[param1])
            {
               if(!o12027(_loc2_))
               {
                  _loc2_ = _loc2_.reverse();
               }
               return _loc2_;
            }
         }
         return null;
      }
      
      public function o3372(param1:int, param2:Vector.<o2041> = null) : Vector.<Vector.<o2041>>
      {
         var _loc4_:* = undefined;
         var _loc3_:* = undefined;
         var _loc8_:* = null;
         var _loc7_:* = null;
         var _loc6_:* = o6041[param1];
         var _loc5_:* = param2;
         if(_loc5_ == null)
         {
            _loc5_ = new Vector.<o2041>();
         }
         else
         {
            _loc7_ = param2[param2.length - 1];
            if(_loc5_.indexOf(_loc6_) != -1)
            {
               _loc5_ = _loc5_.splice(_loc5_.indexOf(_loc6_),_loc5_.length - _loc5_.indexOf(_loc6_));
               if(!o6283(_loc5_))
               {
                  _loc5_ = _loc5_.reverse();
               }
               return Vector.<Vector.<o2041>>([_loc5_]);
            }
         }
         while(true)
         {
            _loc5_.push(_loc6_);
            if(_loc6_.o16079.length < 2)
            {
               break;
            }
            if(_loc6_.o16079.length > 2)
            {
               _loc4_ = new Vector.<Vector.<o2041>>();
               var _loc11_:int = 0;
               var _loc10_:* = _loc6_.o16079;
               for each(var _loc9_ in _loc6_.o16079)
               {
                  if(_loc9_ != _loc7_)
                  {
                     _loc3_ = o3372(_loc9_.id,_loc5_.concat());
                     if(_loc3_ != null)
                     {
                        _loc4_ = _loc4_.concat(_loc3_);
                     }
                  }
               }
               return _loc4_;
            }
            _loc8_ = _loc6_.o16079[0] != _loc7_?_loc6_.o16079[0]:_loc6_.o16079[1];
            _loc7_ = _loc6_;
            _loc6_ = _loc8_;
            if(_loc5_.indexOf(_loc6_) != -1)
            {
               _loc5_ = _loc5_.splice(_loc5_.indexOf(_loc6_),_loc5_.length - _loc5_.indexOf(_loc6_));
               if(!o6283(_loc5_))
               {
                  _loc5_ = _loc5_.reverse();
               }
               return Vector.<Vector.<o2041>>([_loc5_]);
            }
         }
         return null;
      }
      
      public function o18622(param1:int, param2:Array = null) : Array
      {
         var _loc3_:Array = [];
         if(param2 == null)
         {
            param2 = [];
         }
         var _loc4_:o2041 = o6041[param1];
         param2.push(_loc4_);
         _loc3_.push(new o18509(_loc4_.x,_loc4_.y));
         var _loc7_:int = 0;
         var _loc6_:* = _loc4_.o16079;
         for each(var _loc5_ in _loc4_.o16079)
         {
            if(param2.indexOf(_loc5_) == -1)
            {
               _loc3_ = _loc3_.concat(o18622(_loc5_.id,param2));
            }
         }
         return _loc3_;
      }
      
      public function get time() : Number
      {
         return Number((getTimer() - o9286) / 1000);
      }
      
      private function o12027(param1:Vector.<o18509>) : Boolean
      {
         var _loc6_:int = 0;
         var _loc2_:int = 0;
         var _loc4_:int = 0;
         var _loc7_:Number = NaN;
         var _loc5_:int = param1.length;
         var _loc3_:int = 0;
         _loc6_ = 0;
         while(_loc6_ < _loc5_)
         {
            _loc2_ = (_loc6_ + 1) % _loc5_;
            _loc4_ = (_loc6_ + 2) % _loc5_;
            _loc7_ = (param1[_loc2_].x - param1[_loc6_].x) * (param1[_loc4_].y - param1[_loc2_].y);
            _loc7_ = _loc7_ - (param1[_loc2_].y - param1[_loc6_].y) * (param1[_loc4_].x - param1[_loc2_].x);
            if(_loc7_ < 0)
            {
               _loc3_--;
            }
            else if(_loc7_ > 0)
            {
               _loc3_++;
            }
            _loc6_++;
         }
         if(_loc3_ > 0)
         {
            return true;
         }
         return false;
      }
      
      private function o6283(param1:Vector.<o2041>) : Boolean
      {
         var _loc6_:int = 0;
         var _loc2_:int = 0;
         var _loc4_:int = 0;
         var _loc7_:Number = NaN;
         var _loc5_:int = param1.length;
         var _loc3_:int = 0;
         _loc6_ = 0;
         while(_loc6_ < _loc5_)
         {
            _loc2_ = (_loc6_ + 1) % _loc5_;
            _loc4_ = (_loc6_ + 2) % _loc5_;
            _loc7_ = (param1[_loc2_].x - param1[_loc6_].x) * (param1[_loc4_].y - param1[_loc2_].y);
            _loc7_ = _loc7_ - (param1[_loc2_].y - param1[_loc6_].y) * (param1[_loc4_].x - param1[_loc2_].x);
            if(_loc7_ < 0)
            {
               _loc3_--;
            }
            else if(_loc7_ > 0)
            {
               _loc3_++;
            }
            _loc6_++;
         }
         if(_loc3_ > 0)
         {
            return true;
         }
         return false;
      }
      
      public function o12831(param1:int) : o4332
      {
         return o17752[param1];
      }
      
      public function o7833(param1:int) : o7331
      {
         var _loc2_:o7331 = o18291[param1];
         return _loc2_;
      }
      
      private function o20033(param1:int) : String
      {
         return o4519.o8116.o5830.o9009(param1);
      }
      
      private function o5724() : void
      {
         var _loc3_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:uint = o17588.numChildren;
         while(_loc3_ < _loc2_ - 1)
         {
            _loc1_ = _loc3_ + 1;
            while(_loc1_ < _loc2_)
            {
               if(Object(o17588.getChildAt(_loc3_)).o7414 > Object(o17588.getChildAt(_loc1_)).o7414)
               {
                  o17588.o13073(_loc3_,_loc1_);
               }
               _loc1_++;
            }
            _loc3_++;
         }
      }
      
      public function get o5973() : int
      {
         return 500;
      }
      
      public function set o5973(param1:int) : void
      {
      }
      
      public function get o10887() : int
      {
         return 0;
      }
      
      public function set o10887(param1:int) : void
      {
      }
      
      public function get name() : String
      {
         return o5019;
      }
      
      public function set name(param1:String) : void
      {
         o5019 = param1;
      }
      
      public function o20630(param1:int, param2:ByteArray) : void
      {
      }
      
      public function o18192(param1:ByteArray) : void
      {
         param1.writeBoolean(false);
      }
      
      public function o14232(param1:ByteArray, param2:int = 0) : void
      {
         param1.readBoolean();
      }
   }
}

import flash.display.MovieClip;
import flash.utils.Dictionary;

class o15764
{
    
   
   private var o19528:o6354;
   
   private var o19505:o14818;
   
   public var o19298:Dictionary;
   
   private var o17588:MovieClip;
   
   private var o7964:MovieClip;
   
   public var o17752:Dictionary;
   
   public var o18291:Dictionary;
   
   private var o18538:Vector.<o4332>;
   
   function o15764(param1:o14818, param2:o6354, param3:Dictionary, param4:MovieClip, param5:MovieClip, param6:Dictionary, param7:Dictionary, param8:Vector.<o4332>)
   {
      super();
      this.o19505 = param1;
      this.o19528 = param2;
      this.o19298 = param3;
      this.o17588 = param4;
      this.o7964 = param5;
      this.o17752 = param6;
      this.o18291 = param7;
      this.o18538 = param8;
   }
   
   public function o5111(param1:Class) : void
   {
      var _loc2_:* = null;
      var _loc3_:* = null;
      var _loc4_:o4332 = o4519.o8116.o11954.o10869();
      if(o19528.o17973)
      {
         o19505.o16434.push(_loc4_);
      }
      else if(o19528.o15521)
      {
         o19505.o10971.push(_loc4_);
      }
      if(o19528.o17973 && o19528.o15521)
      {
         trace("WARNING: Both tiles isBackground && imprintsIntoBackground are set to true, it must be one or the other or none at all.","Node Texture:",o4519.o8116.o5830.o9009(o19528.o10940));
      }
      _loc2_ = o17541.o13617(o4519.o8116.o5830.o9009(o19528.o10940));
      if(!o19528.o15521 && !o19528.o17973)
      {
         _loc3_ = o4519.o8116.o11676.o6798(o4519.o8116.o5830.o9009(o19528.o10940));
         _loc3_.stop();
         _loc3_.o12265 = false;
         _loc3_.o11525(_loc4_);
         o18291[o19528.id] = _loc3_;
         o18538.push(_loc4_);
      }
      _loc4_.o16396 = _loc2_;
      _loc4_.position = new o2415();
      _loc4_.o16990 = o19528.o16990;
      if(o19528.o17973)
      {
         _loc4_.o16990 = o11381.floor;
      }
      if(o19528.o15521)
      {
         _loc4_.o16990 = 1;
      }
      _loc4_.scaleX = o19528.scaleX;
      _loc4_.scaleY = o19528.scaleY;
      o4519.o8116.o11954.o9226(_loc4_);
      _loc4_.rotation = o19528.rotation * (3.14159265358979 / 180);
      o17752[o19528.id] = _loc4_;
      _loc4_.position.x = o19528.x;
      _loc4_.position.y = o19528.y;
      this.o19505 = null;
      this.o19528 = null;
      this.o19298 = null;
      this.o17588 = null;
      this.o7964 = null;
      this.o17752 = null;
      this.o18291 = null;
      this.o18538 = null;
   }
}

class o4418
{
    
   
   public var o2535:o20139;
   
   public var startX:Number;
   
   public var startY:Number;
   
   public var endX:Number;
   
   public var endY:Number;
   
   public var o18107:Function;
   
   function o4418(param1:o20139)
   {
      super();
      this.o2535 = param1;
   }
   
   public function o4816(param1:Number, param2:Number, param3:Number, param4:Number, param5:uint, param6:uint, param7:Vector.<int>, param8:Function) : void
   {
      this.startX = param1;
      this.startY = param2;
      this.endX = param3;
      this.endY = param4;
      this.o18107 = param8;
      o2535.o4816(param1,param2,param3,param4,param5,param6,param7).defer(o1413);
   }
   
   private function o1413(param1:*) : void
   {
      var _loc2_:Boolean = true;
      if(param1.body == -1 && param1.fixture == -1 && param1.x == 0 && param1.y == 0)
      {
         _loc2_ = false;
      }
   }
}
