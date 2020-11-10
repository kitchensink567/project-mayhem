package
{
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.utils.Dictionary;
   import flash.utils.setInterval;
   
   public class o6948 extends o8023 implements o5448
   {
      
      private static var o15698:Number = 400;
       
      
      private var o5418:Boolean = false;
      
      private var o19417:Scene = null;
      
      private var o4100:o11951 = null;
      
      private var o2535:o20139 = null;
      
      private var o9869:o255 = null;
      
      private var o20498:Dictionary = null;
      
      private var o8198:Dictionary = null;
      
      private var o2980:Dictionary = null;
      
      private var o14850:o10262 = null;
      
      private var o15842:o17761 = null;
      
      private var o1138:o4039 = null;
      
      private var o19099:Dictionary = null;
      
      private var o13883:int = 1000000;
      
      public function o6948()
      {
         super();
      }
      
      public function initialise(param1:Scene, param2:o20139, param3:o11951, param4:DisplayObjectContainer) : void
      {
         this.o19417 = param1;
         this.o4100 = param3;
         this.o2535 = param2;
         param2.addEventListener(o11910.TYPE,o9663);
         param2.addEventListener(o16198.TYPE,o250);
         o9869 = Mem.create(this,o255,[param2]);
         o14564();
         o20498 = Mem.create(this,Dictionary) as Dictionary;
         o8198 = Mem.create(this,Dictionary) as Dictionary;
         o2980 = Mem.create(this,Dictionary) as Dictionary;
         o19099 = Mem.create(this,Dictionary) as Dictionary;
      }
      
      public function o7664(param1:Event = null) : void
      {
         var _loc2_:* = null;
         var _loc5_:int = 0;
         var _loc4_:* = o8198;
         for(var _loc3_ in o8198)
         {
            if(!_loc3_.o8289())
            {
               _loc2_ = o20498[_loc3_] as o10262;
               if(_loc2_ != null)
               {
                  _loc2_.o8564(_loc3_.position.x,_loc3_.position.y);
               }
            }
         }
      }
      
      public function clear() : void
      {
         o9869.clear(Vector.<o10262>([o14850]));
         o20498 = Mem.create(this,Dictionary);
         o8198 = Mem.create(this,Dictionary);
         o2980 = Mem.create(this,Dictionary);
      }
      
      public function o14352(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         o15842.o10827(0,0,param3 + o15698 * 2,param4 + o15698 * 2);
         o14850.o8564(param1 - o15698,param2 - o15698);
      }
      
      private function o9663(param1:o11910) : void
      {
         var _loc2_:uint = param1.o3428 != 1?param1.o3428:param1.o6133;
         o996(_loc2_);
      }
      
      private function o996(param1:uint) : void
      {
         var _loc4_:o45 = null;
         var _loc6_:int = 0;
         var _loc5_:* = o20498;
         for(var _loc2_ in o20498)
         {
            if(o20498[_loc2_].id == param1)
            {
               _loc4_ = _loc2_;
               break;
            }
         }
         if(_loc4_ == null || _loc4_.o9663)
         {
            return;
         }
         _loc4_.o9663 = true;
         var _loc3_:uint = o4100.o13252(_loc4_.o16396.assetID,_loc4_.o16396.frame,_loc4_.o16396.x,_loc4_.o16396.y,_loc4_.o16396.width,_loc4_.o16396.height,_loc4_.o16396.quality);
         o19417.o14252(o8198[_loc4_],_loc3_);
      }
      
      private function o250(param1:o16198) : void
      {
         var _loc4_:uint = param1.o3428 != 1?param1.o3428:param1.o6133;
         var _loc3_:o45 = null;
         var _loc6_:int = 0;
         var _loc5_:* = o20498;
         for(var _loc2_ in o20498)
         {
            if(o20498[_loc2_].id == _loc4_)
            {
               _loc3_ = _loc2_;
               break;
            }
         }
         if(_loc3_ == null || !_loc3_.o9663)
         {
            return;
         }
         _loc3_.o9663 = false;
         o4100.o6988(_loc3_.o16396.assetID,_loc3_.o16396.frame,_loc3_.o16396.x,_loc3_.o16396.y,_loc3_.o16396.width,_loc3_.o16396.height);
         o19417.o14252(o8198[_loc3_],0);
      }
      
      private function o14564() : void
      {
         o14850 = o9869.o1968(1);
         o15842 = Mem.create(this,o17761,[o14850.o2535]);
         o15842.o10827(0,0,1920,1019);
         o1138 = Mem.create(this,o4039,[o14850.o2535,1,2,4294967295,true]);
         o1138.o10289 = o15842.id;
         o14850.o14230(o1138);
      }
      
      public function o10869() : o4332
      {
         var _loc1_:o4332 = Mem.create(this,o45);
         return _loc1_;
      }
      
      public function o2286(param1:o4332) : void
      {
         o19417.o2286(o8198[param1]);
      }
      
      public function o9226(param1:o4332, param2:Boolean = true) : void
      {
         var _loc3_:* = undefined;
         var _loc9_:* = null;
         var _loc6_:* = null;
         var _loc8_:* = null;
         var _loc4_:* = null;
         if(o8198[param1] != null)
         {
            return;
         }
         var _loc7_:o18849 = Mem.create(this,o18849,[o19417,o19417.o3294(),o19417.o19503(),o19417.o16167(),o19417.o13969(),o19417.o10249()]);
         o2980[param1] = _loc7_;
         o19417.o3845(_loc7_.o13546,param1.scaleX,param1.scaleY);
         var _loc5_:uint = o19417.o20264();
         o19417.o5747(_loc5_,_loc7_.o19927);
         o19417.o1598(_loc5_,_loc7_.o15110);
         o19417.o12537(_loc5_,param1.o16990);
         o19417.o14023(_loc5_,_loc7_.o13546);
         o19417.o19987(_loc5_,_loc7_.o15889);
         o19417.o14097(_loc5_,_loc7_.o19501);
         o19417.o8564(_loc7_.o19927,param1.position);
         if(param1.colorTransform != null)
         {
            o19417.o8862(_loc7_.o15889,param1.colorTransform);
         }
         if(param1.o6034 != null)
         {
            o19417.o17377(_loc7_.o15889,param1.o6034);
         }
         o19417.o17063(_loc5_,param1.o2158);
         o19417.o4393(_loc5_,param1.o9824);
         if(o5418 && param2)
         {
            _loc3_ = o9869.o1968(0);
            _loc9_ = Mem.create(this,o17761,[_loc3_.o2535]);
            if(param1.o16396 != null)
            {
               if(param1.o16396.assetID is Vector.<o18509>)
               {
                  _loc6_ = Mem.create(this,o18509,[1.79769313486232e308,1.79769313486232e308]);
                  _loc8_ = Mem.create(this,o18509,[Number.MIN_VALUE,Number.MIN_VALUE]);
                  var _loc12_:int = 0;
                  var _loc11_:* = param1.o16396.assetID;
                  for each(var _loc10_ in param1.o16396.assetID)
                  {
                     if(_loc10_.x < _loc6_.x)
                     {
                        _loc6_.x = _loc10_.x;
                     }
                     if(_loc10_.y < _loc6_.y)
                     {
                        _loc6_.y = _loc10_.y;
                     }
                     if(_loc10_.x > _loc8_.x)
                     {
                        _loc8_.x = _loc10_.x;
                     }
                     if(_loc10_.y > _loc8_.y)
                     {
                        _loc8_.y = _loc10_.y;
                     }
                  }
                  _loc9_.o10827(_loc6_.x,_loc6_.y,_loc8_.x - _loc6_.x,_loc8_.y - _loc6_.y);
               }
               else
               {
                  _loc9_.o10827(param1.o16396.x,param1.o16396.y,Math.max(param1.o16396.width,512),Math.max(param1.o16396.height,512));
               }
            }
            else
            {
               _loc9_.o10827(-256,-256,256,256);
            }
            _loc4_ = Mem.create(this,o4039,[_loc3_.o2535,2,1,4294967295,true]);
            _loc4_.o10289 = _loc9_.id;
            _loc3_.o14230(_loc4_);
         }
         else
         {
            o13883 = Number(o13883) + 1;
            _loc3_ = {"id":Number(o13883)};
         }
         o20498[param1] = _loc3_;
         o8198[param1] = _loc5_;
         param1.o16280(null,o6783.o1457,o17560);
         param1.o16280(null,o6783.o600,o17368);
         (param1 as o45).o11491 = o19883;
         param1.o16280(null,o6783.o18801,o5549);
         param1.o16280(null,o6783.o2903,o18923);
         param1.o16280(null,o6783.o5922,o17348);
         param1.o16280(null,o6783.o986,o1482);
         param1.o16280(null,o6783.o9262,o5083);
         param1.o16280(null,o14571.o19115,o20373);
         if(!o5418 || !param2)
         {
            o996(_loc3_.id);
         }
         _loc7_.rotation = param1.rotation;
         if(o5418 && param2 && param1.o16396.assetID is Vector.<o18509>)
         {
            o996(_loc3_.id);
         }
      }
      
      public function align(param1:o4332, param2:o4332) : void
      {
         o2429(param1,param2);
         o19417.o1598(o8198[param1],o2980[param2].o15110);
      }
      
      public function o2429(param1:o4332, param2:o4332) : void
      {
         o19417.o8564(o2980[param1].o19927,param2.position);
      }
      
      public function o13674(param1:o4332) : void
      {
         o19417.o8564(o2980[param1].o19927,param1.position);
         o19417.o1598(o8198[param1],o2980[param1].o15110);
      }
      
      public function o19883(param1:o4332, param2:o14748) : void
      {
         var _loc3_:* = 0;
         var _loc4_:uint = o8198[param1];
         if(o19099[param1] != null)
         {
            o4100.o6988(o19099[param1].assetID,o19099[param1].frame,o19099[param1].x,o19099[param1].y,o19099[param1].width,o19099[param1].height);
            _loc3_ = uint(o4100.o13252(param1.o16396.assetID,param1.o16396.frame,param1.o16396.x,param1.o16396.y,param1.o16396.width,param1.o16396.height,param1.o16396.quality));
            o19417.o14252(_loc4_,_loc3_);
            o19099[param1] = param1.o16396;
         }
         if(param1.o9663)
         {
            o4100.o6988(param2.assetID,param2.frame,param2.x,param2.y,param2.width,param2.height);
            _loc3_ = uint(o4100.o13252(param1.o16396.assetID,param1.o16396.frame,param1.o16396.x,param1.o16396.y,param1.o16396.width,param1.o16396.height,param1.o16396.quality));
            o19417.o14252(_loc4_,_loc3_);
         }
      }
      
      public function o6849(param1:o4332, param2:o4332) : void
      {
         var _loc4_:uint = o8198[param1];
         var _loc3_:uint = o8198[param2];
         o19417.o6849(_loc4_,_loc3_);
      }
      
      public function o18113(param1:o4332) : void
      {
         o19417.o18113(o8198[param1]);
      }
      
      public function o17560(param1:o7734) : void
      {
         var _loc2_:* = null;
         var _loc3_:o45 = param1.o11493 as o45;
         if(_loc3_.o8289())
         {
            return;
         }
         o19417.o8564(o2980[_loc3_].o19927,_loc3_.position);
         if(o20498[_loc3_] is o10262)
         {
            _loc2_ = o20498[_loc3_];
            _loc2_.o8564(_loc3_.position.x,_loc3_.position.y);
         }
      }
      
      public function o17368(param1:o7734) : void
      {
         var _loc2_:o45 = param1.o11493 as o45;
         o19417.o12537(o8198[_loc2_],_loc2_.o16990);
      }
      
      public function o4946(param1:o4332) : void
      {
         if(o2980[param1] != null)
         {
            (o2980[param1] as o18849).rotation = param1.rotation;
         }
      }
      
      public function o5549(param1:o7734) : void
      {
         var _loc2_:o45 = param1.o11493 as o45;
         o19417.o3845((o2980[_loc2_] as o18849).o13546,_loc2_.scaleX,_loc2_.scaleY);
      }
      
      public function o131(param1:o7734) : void
      {
         var _loc3_:o45 = param1.o11493 as o45;
         var _loc2_:uint = o8198[_loc3_];
         o19417.o15364(_loc2_,_loc3_.o16444);
      }
      
      public function o18923(param1:o7734) : void
      {
         var _loc2_:o45 = param1.o11493 as o45;
         o19417.o8862((o2980[_loc2_] as o18849).o15889,_loc2_.colorTransform);
      }
      
      public function o17348(param1:o7734) : void
      {
         var _loc2_:o45 = param1.o11493 as o45;
         o19417.o17377((o2980[_loc2_] as o18849).o19501,_loc2_.o6034);
      }
      
      public function o1482(param1:o7734) : void
      {
         var _loc2_:o45 = param1.o11493 as o45;
         o19417.o17063(o8198[_loc2_],_loc2_.o2158);
      }
      
      public function o5083(param1:o7734) : void
      {
         var _loc2_:o45 = param1.o11493 as o45;
         o19417.o4393(o8198[_loc2_],_loc2_.o9824);
      }
      
      public function o20373(param1:o7734) : void
      {
         var _loc2_:o45 = param1.o11493 as o45;
         o11867(_loc2_);
      }
      
      public function o11867(param1:o4332) : void
      {
         o17454(param1);
         param1.o19115();
      }
      
      public function o17454(param1:o4332) : void
      {
         if(o19099[param1] != null)
         {
            delete o19099[param1];
         }
         if(param1.o9663)
         {
            o4100.o6988(param1.o16396.assetID,param1.o16396.frame,param1.o16396.x,param1.o16396.y,param1.o16396.width,param1.o16396.height);
            param1.o9663 = false;
         }
         if(o2980[param1] != null)
         {
            o19417.o8564(o2980[param1].o19927,null);
         }
         o19417.o12797(o8198[param1]);
         delete o8198[param1];
         if(o20498[param1] is o10262)
         {
            o20498[param1].o19115();
         }
         delete o20498[param1];
         param1.o12657(o6783.o1457,o17560);
         param1.o12657(o6783.o600,o17368);
         (param1 as o45).o11491 = null;
         param1.o12657(o6783.o18801,o5549);
         param1.o12657(o6783.o2903,o18923);
         param1.o12657(o6783.o5922,o17348);
         param1.o12657(o6783.o986,o1482);
         param1.o12657(o6783.o9262,o5083);
         param1.o12657(o14571.o19115,o20373);
      }
      
      public function o13691(param1:o14748) : void
      {
         o4100.o13691(param1.assetID,param1.frame,param1.x,param1.y,param1.width,param1.height);
      }
   }
}

import flash.utils.Dictionary;

class o6936
{
    
   
   private var o19099:Dictionary;
   
   private var o20599:o4332;
   
   private var o4100:o11951;
   
   private var o19417:Scene = null;
   
   private var o8198:Dictionary = null;
   
   function o6936(param1:o11951, param2:Dictionary, param3:o4332, param4:Scene, param5:Dictionary)
   {
      super();
      this.o19099 = param2;
      this.o20599 = param3;
      this.o4100 = param1;
      this.o19417 = param4;
      this.o8198 = param5;
   }
   
   public function o5111() : void
   {
      if(o19099[o20599] == null)
      {
         return;
      }
      o4100.o6988(o19099[o20599].assetID,o19099[o20599].frame,o19099[o20599].x,o19099[o20599].y,o19099[o20599].width,o19099[o20599].height);
      if(!o20599.o9663)
      {
         o19417.o14252(o8198[o20599],0);
      }
      delete o19099[o20599];
      o19099 = null;
      o20599 = null;
      o4100 = null;
      o19417 = null;
      o8198 = null;
   }
}
