package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.Dictionary;
   
   public class o7534 extends o17639
   {
       
      
      private var o19419:o14200;
      
      private var o8885:String;
      
      private var o16093:o79;
      
      private var o11620:Vector.<o14096>;
      
      private var o4256:Vector.<o1253>;
      
      private var o19114:o4117;
      
      public function o7534()
      {
         super();
         o19419 = o4519.o8116.profileData;
      }
      
      override public function o16384(param1:MovieClip, param2:o13064) : void
      {
         super.o16384(param1,param2);
         o16093 = new o79();
         o16093.init(param1.getChildByName("gearContainer") as MovieClip);
         this.o5452(o16093);
      }
      
      public function o6103(param1:int, param2:o1253) : void
      {
         var _loc3_:* = null;
         var _loc4_:o9823 = o11352.o4364(param1) as o9823;
         if(param2 != null)
         {
            _loc3_ = param2.o11074(_loc4_);
            o10148(param1,_loc3_);
            _loc3_.o6088 = _loc4_;
         }
         else
         {
            o10148(param1,new MovieClip());
         }
      }
      
      public function o7783(param1:int, param2:int) : void
      {
         var _loc3_:o15625 = o11352.o19568[param1];
         var _loc4_:MovieClip = _loc3_.asset.getChildByName("eliteCore") as MovieClip;
         _loc4_.visible = param2 > 0;
      }
      
      private function o11599(param1:o18337, param2:o18337) : int
      {
         if(param1.o11967 < param2.o11967)
         {
            return 1;
         }
         if(param1.o11967 > param2.o11967)
         {
            return -1;
         }
         if(param1.o18332 < param2.o18332)
         {
            return 1;
         }
         if(param1.o18332 > param2.o18332)
         {
            return -1;
         }
         throw new Error("Invalid skill sort");
      }
      
      private function o6189() : o14096
      {
         var _loc3_:int = 0;
         var _loc2_:* = o11620;
         for each(var _loc1_ in o11620)
         {
            if(_loc1_ != null)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function o13070(param1:o8443) : String
      {
         var _loc2_:o14018 = o19419.o5292.o5812(17);
         var _loc3_:String = _loc2_.o10534(o6189(),o19114);
         return _loc3_;
      }
      
      private function o3303(param1:o8443) : String
      {
         var _loc3_:o14018 = o19419.o5292.o5812(16);
         var _loc2_:String = _loc3_.o10534(o6189(),o19114);
         return _loc2_;
      }
      
      public function o20588(param1:o8443) : void
      {
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc8_:int = 0;
         var _loc15_:* = null;
         var _loc9_:* = null;
         var _loc19_:* = null;
         var _loc20_:* = null;
         var _loc11_:* = null;
         var _loc10_:* = null;
         var _loc18_:* = null;
         var _loc6_:* = null;
         var _loc3_:* = this;
         _loc3_.reset();
         o8885 = param1.name;
         var _loc7_:String = o11282.o5217(param1.o115);
         o19425.gotoAndStop(_loc7_);
         if(param1.o3397 || o4519.o17061 || param1.o6443())
         {
            o14966.visible = false;
            o3190.visible = false;
         }
         else if(o19419.o15894.o4848.o1720(param1.name))
         {
            o14966.visible = false;
            o3190.visible = true;
            o3190.text = "Friend";
         }
         else if(o19419.o15894.o4848.o14265(param1.name))
         {
            o14966.visible = false;
            o3190.visible = true;
            o3190.text = "Following";
         }
         else
         {
            o3190.visible = false;
            o14966.visible = true;
         }
         var _loc4_:Dictionary = param1.o2671;
         var _loc2_:Vector.<o18337> = new Vector.<o18337>();
         var _loc24_:int = 0;
         var _loc23_:* = _loc4_;
         for(var _loc21_ in _loc4_)
         {
            _loc2_.push(new o18337(_loc21_,_loc4_[_loc21_]));
         }
         _loc2_.sort(o11599);
         var _loc16_:int = 6;
         if(_loc2_.length < _loc16_)
         {
            _loc16_ = _loc2_.length;
         }
         _loc13_ = 0;
         while(_loc13_ < _loc16_)
         {
            _loc3_.o11197(_loc13_,_loc2_[_loc13_].o18332,_loc2_[_loc13_].o11967);
            _loc13_++;
         }
         var _loc5_:o17849 = o4519.o8116.o16619;
         var _loc22_:int = 0;
         o11620 = new Vector.<o14096>();
         o4256 = new Vector.<o1253>();
         var _loc26_:int = 0;
         var _loc25_:* = param1.o4256;
         for each(var _loc12_ in param1.o4256)
         {
            if(_loc12_.type == 1)
            {
               _loc19_ = new o1253();
               _loc20_ = o4519.o8116.o9511.o4256[_loc12_.o11876];
               _loc19_.init(_loc20_,_loc12_.grade,_loc5_,_loc12_.o631,0);
               _loc3_.o6103(_loc19_.o10239.o20559,_loc19_);
               o7783(_loc19_.o10239.o20559,_loc12_.o263);
               _loc19_.o17656 = new Vector.<o3743>();
               _loc14_ = 0;
               while(_loc14_ < _loc12_.o631)
               {
                  _loc8_ = _loc12_.o4530(_loc14_);
                  if(_loc8_ > 0)
                  {
                     _loc15_ = o19419.o5292.o6345(_loc8_);
                     _loc9_ = new o3743().init(_loc15_.o129,_loc15_.grade);
                     _loc19_.o17656.push(_loc9_);
                  }
                  else
                  {
                     _loc19_.o17656.push(null);
                  }
                  _loc14_++;
               }
               _loc19_.o263 = _loc12_.o263;
               _loc19_.o1419 = _loc12_.o1419;
               o4256.push(_loc19_);
            }
            else
            {
               _loc11_ = new o14096();
               _loc10_ = o4519.o8116.o1184.o11620[_loc12_.o11876];
               _loc18_ = new o10481(_loc10_,_loc12_.grade);
               _loc11_.init(_loc18_,o4519.o8116.o1184.o17638[_loc12_.o11876],_loc5_,_loc12_.o631,0);
               _loc11_.o263 = _loc12_.o263;
               _loc11_.o13296 = _loc12_.o15192;
               _loc11_.o4752 = _loc12_.o4752;
               _loc11_.o1419 = _loc12_.o1419;
               _loc11_.o315();
               _loc11_.o17656 = new Vector.<o3743>();
               _loc14_ = 0;
               while(_loc14_ < _loc12_.o631)
               {
                  _loc8_ = _loc12_.o4530(_loc14_);
                  if(_loc8_ > 0)
                  {
                     _loc15_ = o19419.o5292.o6345(_loc8_);
                     _loc9_ = new o3743().init(_loc15_.o129,_loc15_.grade);
                     _loc11_.o17656.push(_loc9_);
                  }
                  else
                  {
                     _loc11_.o17656.push(null);
                  }
                  _loc14_++;
               }
               _loc6_ = new o11855();
               _loc3_.o14290(_loc22_,_loc6_,_loc11_,_loc12_.o631,_loc12_.o263);
               _loc6_.init(_loc11_.o2752.o19419,_loc3_.o5544(_loc22_));
               _loc22_++;
               o11620.push(_loc11_);
            }
         }
         this.o19114 = o4117.o9088(o19419,param1,o4256);
         var _loc17_:String = o19419.o5292.o923.o5711(param1.o8774,param1.level);
         _loc3_.o765(param1.name,param1.level,_loc17_,param1.o8774,o13070(param1),o3303(param1),param1.o6470 + param1.o12159,param1.o6470,param1.o12159,param1.o20831,param1.o2988,param1.o3397 == false,param1.o11008);
         this.o19034.o7658(param1.o433);
      }
      
      override protected function o18276(param1:Event) : void
      {
         var _loc2_:String = o2555.o17203("ninjakiwi.com");
      }
      
      override protected function o10996(param1:o11507) : void
      {
         if(param1.o6457 < 0)
         {
            return;
         }
         o11352.o2120 = -1;
         o16093.o19237(o11620[param1.o6457],o19114);
      }
      
      override protected function o5093(param1:o11507) : void
      {
         if(param1.o6457 < 0)
         {
            return;
         }
         o11915.o2120 = -1;
         o16093.o14322();
         var _loc4_:int = 0;
         var _loc3_:* = o4256;
         for each(var _loc2_ in o4256)
         {
            if(_loc2_.o10239.o20559 == param1.o6457)
            {
               o16093.o5204(_loc2_,o19114);
            }
         }
      }
      
      override public function o13640() : void
      {
         o19419 = null;
         o16093 = null;
         o4256 = null;
         o11620 = null;
         o19114 = null;
         super.o13640();
      }
   }
}

class o18337
{
    
   
   public var o18332:int;
   
   public var o11967:int;
   
   function o18337(param1:int, param2:int)
   {
      super();
      this.o18332 = param1;
      this.o11967 = param2;
   }
}
