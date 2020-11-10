package
{
   public class o14801
   {
       
      
      public var o7376:String;
      
      public var o11392:o19173;
      
      private var o1652:Boolean = false;
      
      public var o13174:Boolean = false;
      
      public var o14423:Boolean = false;
      
      private var o14044:o16123;
      
      private var o113:o16123;
      
      private var o12440:o16123;
      
      private var o13902:o16123;
      
      private var o12266:o16123;
      
      private var o2086:o16123;
      
      private var o17250:o16123;
      
      private var o7530:o16123;
      
      private var o11578:o16123;
      
      private var o15529:o16123;
      
      private var o6996:o10411;
      
      private var o4490:o15787;
      
      public var o9763:Vector.<int>;
      
      public function o14801()
      {
         o14044 = new o16123(0);
         o113 = new o16123(0);
         o12440 = new o16123(0);
         o13902 = new o16123(0);
         o12266 = new o16123(0);
         o2086 = new o16123(0);
         o17250 = new o16123(-1);
         o7530 = new o16123(-1);
         o11578 = new o16123(-1);
         o15529 = new o16123(-1);
         o6996 = new o10411(false);
         o4490 = new o15787(0);
         o9763 = new Vector.<int>();
         super();
         o4490.value = Math.random();
      }
      
      public static function o8169(param1:Object) : o14801
      {
         var _loc5_:int = 0;
         var _loc4_:int = 0;
         var _loc3_:* = null;
         var _loc6_:o14801 = new o14801();
         if(param1[228] != null)
         {
            _loc6_.o7376 = param1[228];
         }
         if(param1[229] != null)
         {
            _loc6_.o19189 = param1[229];
         }
         if(param1[230] != null)
         {
            _loc6_.o17811 = param1[230];
         }
         if(param1[234] != null)
         {
            _loc6_.o15427 = param1[234];
            _loc6_.o640 = param1[235];
            _loc6_.o14423 = param1[236];
         }
         if(param1[237] != null)
         {
            _loc6_.o4210 = param1[237];
         }
         if(param1[240] != null)
         {
            _loc6_.o17593 = param1[240];
            _loc6_.o15421 = param1[241];
         }
         if(param1[545] != null)
         {
            _loc6_.o9854 = param1[545];
         }
         else
         {
            _loc6_.o9854 = -1;
         }
         if(param1[412] == null)
         {
            _loc6_.o4490.value = Math.random();
         }
         else
         {
            _loc6_.o4490.value = param1[412] / 100;
         }
         if(param1[507] == null)
         {
            _loc6_.o13174 = param1[507];
         }
         if(param1[550] != null)
         {
            _loc5_ = 0;
            _loc4_ = 0;
            _loc3_ = param1[550];
            var _loc8_:int = 0;
            var _loc7_:* = _loc3_;
            for each(var _loc2_ in _loc3_)
            {
               _loc6_.o9763.push(_loc2_);
               _loc5_ = _loc5_ + _loc2_;
               _loc4_++;
            }
            if(_loc5_ > 0)
            {
               _loc6_.o19189 = _loc5_;
            }
         }
         if(param1[551] != null)
         {
            _loc6_.o5205 = param1[551];
         }
         return _loc6_;
      }
      
      public function get o15421() : int
      {
         return o11578.value;
      }
      
      public function get o640() : int
      {
         return o2086.value;
      }
      
      public function get o14209() : int
      {
         return o113.value;
      }
      
      public function get o18018() : int
      {
         return o12440.value;
      }
      
      public function get o5205() : int
      {
         return o13902.value;
      }
      
      public function get o1998() : int
      {
         return o12266.value;
      }
      
      public function get o17593() : int
      {
         return o7530.value;
      }
      
      public function get o15427() : int
      {
         return o17250.value;
      }
      
      public function get o17811() : Boolean
      {
         return o6996.value;
      }
      
      public function get o9854() : int
      {
         return o15529.value;
      }
      
      public function get o14283() : Boolean
      {
         return o17593 == 1;
      }
      
      public function get o12422() : Boolean
      {
         return o17593 == 3;
      }
      
      public function get o6228() : Boolean
      {
         return o17593 == 0 && o15421 == 0;
      }
      
      public function set o15421(param1:int) : void
      {
         o11578.value = param1;
      }
      
      public function set o640(param1:int) : void
      {
         o2086.value = param1;
      }
      
      public function set o17593(param1:int) : void
      {
         o7530.value = param1;
      }
      
      public function set o14209(param1:int) : void
      {
         o113.value = param1;
      }
      
      public function set o18018(param1:int) : void
      {
         o12440.value = param1;
      }
      
      public function set o5205(param1:int) : void
      {
         o13902.value = param1;
      }
      
      public function set o1998(param1:int) : void
      {
         o12266.value = param1;
      }
      
      public function set o15427(param1:int) : void
      {
         o17250.value = param1;
      }
      
      public function set o17811(param1:Boolean) : void
      {
         o6996.value = param1;
      }
      
      public function set o9854(param1:int) : void
      {
         o15529.value = param1;
      }
      
      public function get o18188() : Boolean
      {
         return o11392.o18188;
      }
      
      public function o3514() : Boolean
      {
         if(this.o11392.type == 2)
         {
            return this.o15084();
         }
         return true;
      }
      
      public function o15084() : Boolean
      {
         var _loc4_:* = null;
         if(this.o17593 == 3)
         {
            return false;
         }
         var _loc1_:o14200 = o14200.o19505;
         var _loc3_:o5072 = new o5072(null,null);
         var _loc2_:Date = new Date();
         _loc2_.time = this.o11392.o5897.end.time;
         _loc2_.o16529 = _loc2_.o16529 + _loc1_.data.o3280;
         if(_loc1_ && _loc1_.o5292 && _loc1_.o5292.o16679)
         {
            _loc4_ = _loc1_.o5292.o16679.o9622();
         }
         if(_loc4_ && _loc4_.o11392.o5897.o4574(_loc2_))
         {
            return o1170(_loc4_);
         }
         return false;
      }
      
      public function o1170(param1:o14801) : Boolean
      {
         if(o11392 != null)
         {
            return (o11392 as o14128).o19534(param1.o11392 as o14128);
         }
         return false;
      }
      
      public function get o4210() : Boolean
      {
         if(o12422)
         {
            return true;
         }
         return o1652;
      }
      
      public function set o4210(param1:Boolean) : void
      {
         if(o14200.o19505.o20616)
         {
            o1652 = false;
            this.o19189 = 0;
         }
         else
         {
            o1652 = param1;
         }
      }
      
      public function get o2877() : Boolean
      {
         var _loc2_:* = undefined;
         if(o18188 == false)
         {
            return false;
         }
         var _loc3_:o15745 = o4519.o8116.profileData.o5292.o418;
         if(o4519.o8116.profileData.o7923.level < _loc3_.o13854)
         {
            return false;
         }
         var _loc4_:Number = o10340();
         if(this.o11392.o18188 && this.o11392 is o14128)
         {
            _loc2_ = new Vector.<Number>();
            _loc2_.push((o11392 as o14128).o20331.o18402);
            _loc2_.push((o11392 as o14128).o20331.o7206);
            _loc2_.push((o11392 as o14128).o20331.o15010);
         }
         else
         {
            _loc2_ = _loc3_.o13794();
         }
         var _loc1_:* = 0;
         if(_loc4_ >= 0 && _loc4_ < _loc2_.length)
         {
            _loc1_ = Number(_loc2_[_loc4_]);
            return o4490.value <= _loc1_;
         }
         return false;
      }
      
      public function get o3593() : Date
      {
         return o11392.o5897.end;
      }
      
      public function get o19189() : int
      {
         if(o14200.o19505.o20616)
         {
            return 0;
         }
         return o14044.value;
      }
      
      public function set o19189(param1:int) : void
      {
         o14044.value = param1;
      }
      
      public function sort(param1:int, param2:int) : int
      {
         if(param1 > param2)
         {
            return -1;
         }
         if(param1 < param2)
         {
            return 1;
         }
         return 0;
      }
      
      public function get o2889() : Number
      {
         var _loc2_:* = NaN;
         var _loc1_:int = 0;
         if(o4210 == false)
         {
            return 1;
         }
         if(o15427 <= 0)
         {
            return 1;
         }
         if(o640 <= 1)
         {
            if(o19189 == 0)
            {
               return 1;
            }
            return 0.01;
         }
         if(o15427 == 1 || o15427 == 2 || o15427 == 3)
         {
            return 0.01;
         }
         _loc2_ = Number((o15427 - 1) / (o640 - 1));
         if(_loc2_ < 0.01)
         {
            _loc2_ = 0.01;
         }
         _loc1_ = Math.ceil(_loc2_ * 100);
         _loc2_ = Number(_loc1_ / 100);
         return _loc2_;
      }
      
      public function o15785() : o16124
      {
         var o14478:o14801 = this;
         var promise:o16124 = new o16124();
         var o11630:String = o4519.o8116.profileData.o15894.o4848.o12485;
         if(o11630 == null)
         {
            promise.data = o14478;
            return promise;
         }
         if(o11392 as o14128 is o14128 && (o11392 as o14128).o9854 == 2)
         {
            o8613.o12659(o7376).defer(function(param1:Object):void
            {
               var _loc2_:int = 0;
               if(param1 == null)
               {
                  promise.data = o14478;
               }
               else
               {
                  _loc2_ = param1["wallet"]["currencies"][o7376];
                  if(isNaN(_loc2_) == false)
                  {
                     o14478.o14209 = _loc2_;
                  }
                  else
                  {
                     o14478.o14209 = 0;
                  }
                  promise.data = o14478;
               }
            });
         }
         else
         {
            o8613.o5865(o11630,o7376).defer(function(param1:Object):void
            {
               data = param1;
               if(data == null)
               {
                  promise.data = o14478;
               }
               else
               {
                  var o2162:Object = data["rank"];
                  var o2562:o5192 = new o5192(o2162["rank"],o2162["total"]);
                  o15427 = o2562.position + 1;
                  o640 = o2562.o14170;
                  if(o14478.o12422)
                  {
                     o8613.o5710(o11630,o7376,[o11630]).defer(function(param1:Object):void
                     {
                        var _loc2_:* = null;
                        var _loc3_:int = 0;
                        if(param1 != null)
                        {
                           _loc2_ = param1["scores"]["equal"];
                           if(_loc2_.length > 0)
                           {
                              _loc3_ = _loc2_[0]["score"];
                              if(_loc3_ > 0)
                              {
                                 o14478.o19189 = _loc3_;
                              }
                           }
                        }
                        promise.data = o14478;
                     });
                  }
                  else
                  {
                     promise.data = o14478;
                  }
               }
            });
         }
         return promise;
      }
      
      public function o720() : o16124
      {
         var o14478:o14801 = this;
         var promise:o16124 = new o16124();
         o8613.o12659(o7376).defer(function(param1:Object):void
         {
            var _loc2_:int = 0;
            if(param1 == null)
            {
               promise.data = o14478;
            }
            else
            {
               _loc2_ = param1["wallet"]["currencies"][o7376];
               if(isNaN(_loc2_) == false)
               {
                  o14478.o14209 = _loc2_;
               }
               else
               {
                  o14478.o14209 = 0;
               }
               promise.data = o14478;
            }
         });
         return promise;
      }
      
      public function o20093() : Boolean
      {
         var _loc1_:o14754 = o4519.o8116;
         var _loc2_:String = o4519.o8116.o15020.toString() + " > " + o3593.toString();
         return o4519.o8116.o15020.getTime() > o3593.getTime();
      }
      
      public function o284() : Boolean
      {
         var _loc2_:o14754 = o4519.o8116;
         var _loc1_:int = 86400000;
         return o4519.o8116.o15020.getTime() > o3593.getTime() + _loc1_;
      }
      
      public function o10340(param1:Number = -1) : int
      {
         var _loc2_:int = 0;
         var _loc4_:int = 0;
         var _loc3_:* = o11392.type == 3;
         if(o11392 as o14128 is o14128 && (o11392 as o14128).o9854 == 2)
         {
            if(param1 == -1)
            {
               _loc2_ = (o11392 as o14128).o6680.o20022;
               if(o14209 > _loc2_)
               {
                  o14209 = _loc2_;
               }
               param1 = 1 - Math.ceil(o14209 / _loc2_ * 100) / 100;
            }
            var _loc7_:int = 0;
            var _loc6_:* = o11392.o9938;
            for each(var _loc5_ in o11392.o9938)
            {
               if(_loc3_)
               {
                  if(o15427 <= 0)
                  {
                     return -1;
                  }
                  if(param1 <= _loc5_.o2562)
                  {
                     return _loc4_;
                  }
               }
               else if(param1 <= _loc5_.o2760)
               {
                  return _loc4_;
               }
               _loc4_++;
            }
            return -1;
         }
         if(this.o19189 <= 0 && o11392 && o11392.o9938 && (o11392.o9938.length >= 1?o11392.o9938[0].o2760 == 1:true) && o4210 == false)
         {
            return -1;
         }
         var _loc9_:int = 0;
         var _loc8_:* = o11392.o9938;
         for each(_loc5_ in o11392.o9938)
         {
            if(_loc3_)
            {
               if(o15427 <= 0)
               {
                  return -1;
               }
               if(o15427 <= _loc5_.o2562)
               {
                  return _loc4_;
               }
            }
            else if(this.o2889 <= _loc5_.o2760)
            {
               return _loc4_;
            }
            _loc4_++;
         }
         return -1;
      }
      
      public function o8893(param1:Number) : int
      {
         var _loc2_:int = 0;
         var _loc5_:int = 0;
         var _loc4_:* = o11392.o9938;
         for each(var _loc3_ in o11392.o9938)
         {
            if(param1 <= _loc3_.o2760)
            {
               return _loc2_ + 1;
            }
            _loc2_++;
         }
         return o8160();
      }
      
      private function o8160() : int
      {
         if(o17593 == 3)
         {
            return 7;
         }
         return 6;
      }
      
      public function o14373(param1:Number = -1) : int
      {
         var _loc2_:int = o10340(param1);
         if(_loc2_ < 0)
         {
            return o8160();
         }
         return _loc2_ + 1;
      }
      
      public function o9694() : o11614
      {
         var _loc1_:* = null;
         var _loc2_:int = o10340();
         if(_loc2_ < 0)
         {
            return null;
         }
         _loc1_ = o11392.o9938[_loc2_];
         return o4519.o8116.profileData.o5292.o13988.o9694(_loc1_.o5546);
      }
      
      public function o15368() : o11614
      {
         var _loc1_:o7631 = o11392.o9938[0];
         return o4519.o8116.profileData.o5292.o13988.o9694(_loc1_.o5546);
      }
      
      public function o2395() : o15645
      {
         return o4519.o8116.profileData.o5292.o2395(o11392);
      }
      
      public function o14264() : Object
      {
         var _loc4_:Object = {};
         _loc4_[228] = o7376;
         _loc4_[229] = o19189;
         _loc4_[230] = o17811;
         _loc4_[234] = o15427;
         _loc4_[235] = o640;
         _loc4_[236] = o14423;
         _loc4_[237] = o4210;
         if(o11392 != null)
         {
            o17593 = o11392.type;
            if(o11392 is o14128)
            {
               if((o11392 as o14128).o20963 == 0)
               {
                  o15421 = 0;
               }
               else
               {
                  o15421 = (o11392 as o14128).o15421;
               }
            }
         }
         _loc4_[545] = o11392 is o14128?(o11392 as o14128).o9854:-1;
         _loc4_[240] = o17593;
         _loc4_[241] = o15421;
         _loc4_[507] = o13174;
         _loc4_[412] = Math.round(o4490.value * 100);
         var _loc2_:Array = [];
         var _loc3_:int = 1;
         var _loc6_:int = 0;
         var _loc5_:* = o9763;
         for each(var _loc1_ in o9763)
         {
            _loc2_.push(_loc1_);
            _loc3_++;
         }
         _loc4_[550] = _loc2_;
         _loc4_[551] = o5205;
         return _loc4_;
      }
      
      public function o6305(param1:String) : String
      {
         return param1;
      }
      
      public function o16776() : String
      {
         var _loc1_:o15645 = o2395();
         if(this.o11392 is o14128)
         {
            return o6305((this.o11392 as o14128).o14925);
         }
         return o6305(_loc1_.o17977);
      }
      
      public function o16070() : String
      {
         var _loc1_:o15645 = o2395();
         if(this.o11392 is o14128)
         {
            return o6305((this.o11392 as o14128).o1442);
         }
         return o6305(_loc1_.o12043);
      }
      
      public function o13404() : String
      {
         var _loc1_:o15645 = o2395();
         if(this.o11392 is o14128)
         {
            return o6305((this.o11392 as o14128).o1415);
         }
         return o6305(_loc1_.o8398);
      }
      
      public function o10282() : Vector.<String>
      {
         var _loc1_:Vector.<String> = new Vector.<String>();
         var _loc2_:int = 0;
         var _loc5_:int = 0;
         var _loc4_:* = o11392.o9938;
         for each(var _loc3_ in o11392.o9938)
         {
            _loc1_.push(o2038.o2017[_loc2_] + ": Top " + Math.round(_loc3_.o2760 * 100).toString() + "%:");
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function o19848() : Vector.<String>
      {
         var _loc3_:* = null;
         var _loc1_:o14200 = o4519.o8116.profileData;
         var _loc4_:Vector.<String> = new Vector.<String>();
         var _loc2_:int = 0;
         var _loc7_:int = 0;
         var _loc6_:* = o11392.o9938;
         for each(var _loc5_ in o11392.o9938)
         {
            _loc3_ = _loc1_.o5292.o13988.o9694(_loc5_.o5546);
            _loc4_.push(_loc3_.o18656());
            _loc2_++;
         }
         return _loc4_;
      }
      
      public function o608() : Vector.<int>
      {
         var _loc4_:* = null;
         var _loc2_:o14200 = o4519.o8116.profileData;
         var _loc1_:Vector.<int> = new Vector.<int>();
         var _loc3_:int = 0;
         var _loc7_:int = 0;
         var _loc6_:* = o11392.o9938;
         for each(var _loc5_ in o11392.o9938)
         {
            _loc4_ = _loc2_.o5292.o13988.o9694(_loc5_.o5546);
            _loc1_.push(_loc4_.o15076);
            _loc3_++;
         }
         return _loc1_;
      }
      
      public function o7713(param1:Number = -1) : String
      {
         var _loc2_:int = o10340(param1);
         if(_loc2_ < 0)
         {
            return "";
         }
         return o2038.o2017[_loc2_];
      }
      
      public function o10664(param1:Number = -1) : int
      {
         var _loc2_:int = o10340(param1);
         if(_loc2_ < 0)
         {
            return 16777215;
         }
         return o2038.o6854[_loc2_];
      }
      
      public function o1760() : o16124
      {
         var o19016:o16124 = new o16124();
         var o19419:o14200 = o4519.o8116.profileData;
         if(this.o17593 != 3)
         {
            o19016.data = "ERROR: Not a super event";
            return o19016;
         }
         if(this.o284())
         {
            o13174 = true;
            o15785().defer(function(param1:o14801):void
            {
               o19016.data = "STATUS_COMPILED";
            });
            return o19016;
         }
         var o14478:o14801 = this;
         var o11630:String = o19419.o15894.o4848.o12485;
         if(o11630 == null)
         {
            o19016.data = "ERROR: leaderboard user id not found";
            return o19016;
         }
         var o19629:Array = [];
         o19419.data.o5178(this,o19629);
         var body:Object = null;
         var o19963:Number = 600000;
         body = o8613.o2238(o11630,this.o7376,o19963);
         o8613.o13929(body,true,this.o11392.o3354 + "_MedalsEarned",1);
         var _loc5_:int = 0;
         var _loc4_:* = o19629;
         for each(o11592 in o19629)
         {
            if(o11592.o20093() != false)
            {
               var o1859:Vector.<Number> = new Vector.<Number>();
               var o15675:Vector.<int> = new Vector.<int>();
               var _loc3_:int = 0;
               var _loc2_:* = o11592.o9938;
               for each(o15823 in o11592.o9938)
               {
                  o1859.push(o15823.o2760);
                  var o3359:int = o15823.o5546;
                  var o5546:o11614 = o19419.o5292.o13988.o9694(o3359);
                  o15675.push(o5546.o15076);
               }
               o8613.o16852(body,false,o11592.o3354,o1859,o15675);
            }
         }
         o8613.o16840(body).defer(function(param1:Object):void
         {
            data = param1;
            if(data == null)
            {
               o19016.data = "ERROR: Can only compile on production?";
            }
            else
            {
               var o16705:Object = data["status"];
               var target:String = o16705["target"];
               var o2778:String = o16705["status"];
               if(o2778 == "STATUS_COMPILED")
               {
                  var o7237:Boolean = o14478.o20093();
                  if(o7237)
                  {
                     o13174 = true;
                  }
                  o15785().defer(function(param1:o14801):void
                  {
                     o19016.data = "STATUS_COMPILED";
                  });
               }
               else
               {
                  o19016.data = o2778;
               }
            }
         });
         return o19016;
      }
   }
}
