package
{
   import flash.utils.Dictionary;
   
   public class o10330
   {
      
      public static const o12574:int = 4;
      
      public static const o6808:int = 4;
       
      
      public var o12738:Vector.<o14801>;
      
      private var o10387:o16123;
      
      public function o10330()
      {
         o12738 = new Vector.<o14801>();
         o10387 = new o16123(15);
         super();
      }
      
      public function o9622() : o14801
      {
         var _loc3_:int = 0;
         var _loc2_:* = o12738;
         for each(var _loc1_ in o12738)
         {
            if(_loc1_.o11392.type == 3)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function o4220() : o14801
      {
         var _loc3_:o14801 = o9622();
         if(_loc3_ == null)
         {
            return null;
         }
         var _loc2_:String = _loc3_.o11392.o3354 + "_MedalsEarned";
         var _loc5_:int = 0;
         var _loc4_:* = o12738;
         for each(var _loc1_ in o12738)
         {
            if(_loc1_.o11392.o3354 == _loc2_)
            {
               return _loc1_;
            }
         }
         throw new Error("Boss kills leaderboard not found");
      }
      
      public function o6965(param1:String) : o14801
      {
         var _loc4_:int = 0;
         var _loc3_:* = o12738;
         for each(var _loc2_ in o12738)
         {
            if(_loc2_.o11392.o3354 == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function o3672(param1:int) : o14801
      {
         var _loc4_:int = 0;
         var _loc3_:* = o12738;
         for each(var _loc2_ in o12738)
         {
            if(_loc2_.o11392 as o14128 is o14128 && (_loc2_.o11392 as o14128).o15421 == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function o7079(param1:int) : o14801
      {
         var _loc4_:int = 0;
         var _loc3_:* = o12738;
         for each(var _loc2_ in o12738)
         {
            if(_loc2_.o11392 is o14128 && (_loc2_.o11392 as o14128).o15421 == param1)
            {
               return _loc2_;
            }
            if(_loc2_.o11392.type == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function o12102(param1:o3643, param2:o3643) : int
      {
         if(param1.o2562 < param2.o2562)
         {
            return -1;
         }
         if(param2.o2562 < param1.o2562)
         {
            return 1;
         }
         if(param1.o19189 < param2.o19189)
         {
            return -1;
         }
         if(param2.o19189 < param1.o19189)
         {
            return 1;
         }
         if(param1.o799 < param2.o799)
         {
            return 1;
         }
         if(param2.o799 < param1.o799)
         {
            return -1;
         }
         return 0;
      }
      
      private function o11324(param1:String, param2:Vector.<o3643>) : o3643
      {
         var _loc5_:int = 0;
         var _loc4_:* = param2;
         for each(var _loc3_ in param2)
         {
            if(_loc3_.o799 == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function o13201(param1:o19173) : o16124
      {
         o11392 = param1;
         var promise:o16124 = new o16124();
         if(o11392 == null)
         {
            promise.data = new Vector.<o3643>();
            return promise;
         }
         var o19419:o14200 = o4519.o8116.profileData;
         var o14235:String = o19419.o15894.o4848.o12485;
         var o19014:String = o19419.o15894.o4848.o14996;
         var o5584:int = o19419.o115();
         var o2618:Dictionary = o19419.data.o433.o6366();
         var o7376:String = o11392.o3354;
         var o5897:o5072 = o11392.o5897;
         var o2845:o14801 = o19419.data.o18676(o11392);
         var o8039:o4868 = new o4868(o14235,o7376,o5897,o2845.o19189);
         o8039.o9495(4,o2845.o4210).defer(function(param1:Array):void
         {
            o20092 = param1;
            if(o2845.o4210)
            {
               o20092.push(new o19551(o14235,o2845.o19189,o5584.toString() + ":" + o19014 + ":" + o4868.o186(o2618)));
            }
            var o6759:Array = [];
            var o20434:Vector.<o3643> = new Vector.<o3643>();
            var o4702:Array = [];
            var _loc4_:int = 0;
            var _loc3_:* = o20092;
            for each(o1637 in o20092)
            {
               var o1386:o3643 = new o3643();
               o1386.o799 = o1637.o11630;
               o20434.push(o1386);
               o1386.o20860 = o1637.o11630 == o14235;
               o1386.o19189 = o1637.o19189;
               if(false && o1637.o3735 == null || o1637.o12762 == -1)
               {
                  o6759.push(o8613.o9194(o1637.o11630));
               }
               else
               {
                  o1386.o10615 = o1637.o3735;
                  o1386.o15820 = o11282.o5217(o1637.o12762);
                  o1386.o1727 = o1637.o1727;
               }
               o4702.push(o1637.o11630);
            }
            if(o2845.o12422)
            {
               o6759.push(o2845.o15785());
            }
            var o7023:int = 0;
            o15714.o18684(o6759,function(... rest):void
            {
               o10303 = rest;
               var o8881:Array = o10303;
               var _loc4_:int = 0;
               var _loc3_:* = o8881;
               for each(o12036 in o8881)
               {
                  var o14050:o9433 = o12036 as o9433;
                  if(o14050 != null)
                  {
                     o1386 = o11324(o14050.o104(),o20434);
                     if(o1386 != null)
                     {
                        o1386.o10615 = o14050.name;
                        o1386.o15820 = o14050.o5578;
                     }
                  }
               }
               o8613.o13887(o4702,o7376).defer(function(param1:Object):void
               {
                  var _loc2_:* = null;
                  var _loc3_:* = null;
                  var _loc5_:int = 0;
                  if(param1 == null)
                  {
                     throw new Error("Ranks not found");
                  }
                  _loc2_ = param1["ranks"];
                  var _loc7_:int = 0;
                  var _loc6_:* = _loc2_;
                  for each(var _loc4_ in _loc2_)
                  {
                     _loc3_ = new o5192(_loc4_["rank"],_loc4_["total"]);
                     o1386 = o11324(_loc4_["userID"],o20434);
                     if(o1386 != null)
                     {
                        _loc5_ = Math.ceil(_loc3_.o9664 * 100);
                        o1386.o19730 = _loc5_ / 100;
                        o1386.o2562 = _loc3_.position + 1;
                        o1386.o14626 = _loc3_.o14170;
                     }
                  }
                  o20434.sort(o12102);
                  promise.data = o20434;
               });
            });
         });
         return promise;
      }
      
      public function o7971(param1:o19173) : o16124
      {
         o11392 = param1;
         var promise:o16124 = new o16124();
         if(o11392 == null)
         {
            promise.data = new Vector.<o3643>();
            return promise;
         }
         var o19419:o14200 = o4519.o8116.profileData;
         var o14235:String = o19419.o15894.o4848.o12485;
         var o19014:String = o19419.o15894.o4848.o14996;
         var o5584:int = o19419.o115();
         var o2618:Dictionary = o19419.data.o433.o6366();
         var o7376:String = o11392.o3354;
         var o5897:o5072 = o11392.o5897;
         var o2845:o14801 = o19419.data.o18676(o11392);
         var o8039:o4868 = new o4868(o14235,o7376,o5897,o2845.o19189);
         var o20434:Vector.<o3643> = new Vector.<o3643>();
         var o9106:Array = [];
         o8613.o918(o14235,o7376).defer(function(param1:Object):void
         {
            o20668 = param1;
            if(o20668)
            {
               var object:Object = o20668["scores"];
               var o13566:Object = object["equal"];
               var o1386:o3643 = new o3643();
               var _loc4_:int = 0;
               var _loc3_:* = o13566;
               for each(o6475 in o13566)
               {
                  if(o6475)
                  {
                     o1386 = new o3643();
                     var o14050:o19551 = new o19551(o6475["userID"],o6475["score"],o6475["metadata"]);
                     o1386.o10615 = o14050.o3735;
                     o1386.o799 = o14050.o11630;
                     o1386.o2562 = -1;
                     o1386.o19189 = o14050.o19189;
                     o1386.o15820 = o14050.o12762.toString();
                     o1386.o1727 = o14050.o1727;
                     o20434.push(o1386);
                     o9106.push(o1386.o799);
                  }
               }
            }
            o8613.o13887(o9106,o7376).defer(function(param1:Object):void
            {
               var _loc3_:* = null;
               var _loc2_:int = 0;
               if(param1)
               {
                  _loc3_ = param1["ranks"];
                  var _loc6_:int = 0;
                  var _loc5_:* = _loc3_;
                  for each(var _loc4_ in _loc3_)
                  {
                     o1386 = o11324(_loc4_["userID"],o20434);
                     if(o1386 != null)
                     {
                        o1386.o2562 = _loc4_["rank"] + 1;
                        o1386.o19189 = _loc4_["score"];
                     }
                  }
               }
               o20434.sort(o12102);
               _loc2_ = 0;
               while(_loc2_ < o20434.length)
               {
                  o1386 = new o3643();
                  if(o20434[_loc2_].o19189 == 0)
                  {
                     o1386 = o20434[_loc2_];
                     o20434.splice(_loc2_,1);
                     o20434.push(o1386);
                  }
                  _loc2_++;
               }
               promise.data = o20434;
            });
         });
         return promise;
      }
      
      public function o9772(param1:o19173) : o16124
      {
         o11392 = param1;
         var promise:o16124 = new o16124();
         if(o11392 == null)
         {
            promise.data = new Vector.<o3643>();
            return promise;
         }
         var o19419:o14200 = o4519.o8116.profileData;
         var o14235:String = o19419.o15894.o4848.o12485;
         var o19014:String = o19419.o15894.o4848.o14996;
         var o5584:int = o19419.o115();
         var o2618:Dictionary = o19419.data.o433.o6366();
         var o7376:String = o11392.o3354;
         var o5897:o5072 = o11392.o5897;
         var o2845:o14801 = o19419.data.o18676(o11392);
         var o8039:o4868 = new o4868(o14235,o7376,o5897,o2845.o19189);
         var o20434:Vector.<o3643> = new Vector.<o3643>();
         var o9106:Array = [];
         o8613.o918(o14235,o7376).defer(function(param1:Object):void
         {
            o20668 = param1;
            if(o20668 == null)
            {
               promise.data = new Vector.<o3643>();
               return;
            }
            var object:Object = o20668["scores"];
            var o13566:Object = object["equal"];
            var o16191:int = 0;
            var _loc4_:int = 0;
            var _loc3_:* = o13566;
            for each(o6475 in o13566)
            {
               if(o6475)
               {
                  var o1386:o3643 = new o3643();
                  var o14050:o19551 = new o19551(o6475["userID"],o6475["score"],o6475["metadata"]);
                  if(o14050.o11630 != o14235)
                  {
                     o1386.o10615 = o14050.o3735;
                     o1386.o799 = o14050.o11630;
                     o1386.o2562 = 0;
                     o1386.o19189 = o14050.o19189;
                     o1386.o15820 = o14050.o12762.toString();
                     o1386.o1727 = o14050.o1727;
                     o20434.push(o1386);
                     o9106.push(o1386.o799);
                     o16191 = Number(o16191) + 1;
                  }
               }
               if(o16191 <= 2)
               {
                  continue;
               }
               break;
            }
            o8613.o16029(o14235,o7376,7).defer(function(param1:Object):void
            {
               data = param1;
               if(data)
               {
                  var object:Object = data["scores"];
                  var o5575:Object = object["above"];
                  var o18413:Object = object["below"];
                  var o11891:Vector.<o3643> = new Vector.<o3643>();
                  var _loc4_:int = 0;
                  var _loc3_:* = o5575;
                  for each(o6475 in o5575)
                  {
                     if(o6475)
                     {
                        o1386 = new o3643();
                        var o14050:o19551 = new o19551(o6475["userID"],o6475["score"],o6475["metadata"]);
                        if(o14050.o11630 != o14235)
                        {
                           o1386.o10615 = o14050.o3735;
                           o1386.o799 = o14050.o11630;
                           o1386.o2562 = 0;
                           o1386.o19189 = o14050.o19189;
                           o1386.o15820 = o14050.o12762.toString();
                           o1386.o1727 = o14050.o1727;
                           o11891.push(o1386);
                        }
                     }
                  }
               }
               var o16191:int = 0;
               var o1903:int = 0;
               while(o1903 < o11891.length)
               {
                  if(o8145(o11891[o1903].o799,o20434) == false)
                  {
                     o20434.push(o11891[o1903]);
                     o9106.push(o11891[o1903].o799);
                     o16191 = Number(o16191) + 1;
                  }
                  if(o16191 < 2)
                  {
                     o1903 = Number(o1903) + 1;
                     continue;
                  }
                  break;
               }
               var o1386:o3643 = new o3643();
               o1386.o10615 = o19014;
               o1386.o799 = o14235;
               o1386.o2562 = 10000;
               o1386.o19189 = o2845.o19189 < 0?0:o2845.o19189;
               o1386.o15820 = o5584.toString();
               o1386.o1727 = o2618;
               var o3235:Boolean = false;
               if(o8145(o1386.o799,o20434) == false)
               {
                  o20434.push(o1386);
                  o9106.push(o1386.o799);
               }
               else
               {
                  o3235 = true;
               }
               var _loc6_:int = 0;
               var _loc5_:* = o18413;
               for each(o6475 in o18413)
               {
                  if(o6475)
                  {
                     o1386 = new o3643();
                     o14050 = new o19551(o6475["userID"],o6475["score"],o6475["metadata"]);
                     if(o14050.o11630 != o14235)
                     {
                        o1386.o10615 = o14050.o3735;
                        o1386.o799 = o14050.o11630;
                        o1386.o2562 = 0;
                        o1386.o19189 = o14050.o19189;
                        o1386.o15820 = o14050.o12762.toString();
                        o1386.o1727 = o14050.o1727;
                        if(o8145(o1386.o799,o20434) == false)
                        {
                           o20434.push(o1386);
                           o9106.push(o1386.o799);
                        }
                     }
                  }
               }
               o8613.o13887(o9106,o7376).defer(function(param1:Object):void
               {
                  var _loc3_:* = null;
                  var _loc2_:int = 0;
                  if(param1)
                  {
                     _loc3_ = param1["ranks"];
                     var _loc6_:int = 0;
                     var _loc5_:* = _loc3_;
                     for each(var _loc4_ in _loc3_)
                     {
                        o1386 = o11324(_loc4_["userID"],o20434);
                        if(o1386 != null)
                        {
                           o1386.o2562 = _loc4_["rank"] + 1;
                           o1386.o19189 = _loc4_["score"];
                           if(o1386.o19189 < 0)
                           {
                              o1386.o19189 = 0;
                           }
                        }
                     }
                  }
                  o20434.sort(o12102);
                  _loc2_ = 0;
                  while(_loc2_ < o20434.length)
                  {
                     o1386 = new o3643();
                     if(o20434[_loc2_].o19189 == 0)
                     {
                        o1386 = o20434[_loc2_];
                        o20434.splice(_loc2_,1);
                        o20434.push(o1386);
                     }
                     if(_loc2_ == 0 || _loc2_ == 1 || _loc2_ == 2)
                     {
                        o1386.o2562 = _loc2_ + 1;
                     }
                     _loc2_++;
                  }
                  promise.data = o20434;
               });
            });
         });
         return promise;
      }
      
      public function o2039(param1:o19173, param2:Vector.<o7631>) : o16124
      {
         o11392 = param1;
         o12582 = param2;
         var promise:o16124 = new o16124();
         if(o11392 == null)
         {
            promise.data = new Vector.<o3643>();
            return promise;
         }
         var o19419:o14200 = o4519.o8116.profileData;
         var o14235:String = o19419.o15894.o4848.o12485;
         var o19014:String = o19419.o15894.o4848.o14996;
         var o5584:int = o19419.o115();
         var o2618:Dictionary = o19419.data.o433.o6366();
         var o7376:String = o11392.o3354;
         var o5897:o5072 = o11392.o5897;
         var o2845:o14801 = o19419.data.o18676(o11392);
         var o8039:o4868 = new o4868(o14235,o7376,o5897,o2845.o19189);
         var o20434:Vector.<o3643> = new Vector.<o3643>();
         var o9106:Array = [];
         var o15164:Boolean = false;
         o8613.o918(o14235,o7376).defer(function(param1:Object):void
         {
            o20668 = param1;
            if(o20668 == null)
            {
               promise.data = new Vector.<o3643>();
               return;
            }
            var object:Object = o20668["scores"];
            var o13566:Object = object["equal"];
            var o16191:int = 0;
            var _loc4_:int = 0;
            var _loc3_:* = o13566;
            for each(o6475 in o13566)
            {
               if(o6475)
               {
                  var o1386:o3643 = new o3643();
                  var o14050:o19551 = new o19551(o6475["userID"],o6475["score"],o6475["metadata"]);
                  if(o14050)
                  {
                     o1386.o10615 = o14050.o3735;
                     o1386.o799 = o14050.o11630;
                     o1386.o2562 = o16191 + 1;
                     o1386.o19189 = o14050.o19189;
                     o1386.o15820 = o14050.o12762.toString();
                     o1386.o1727 = o14050.o1727;
                     o1386.o19730 = o12582[0].o2760;
                     o20434.push(o1386);
                     o9106.push(o1386.o799);
                     o16191 = Number(o16191) + 1;
                     if(o1386.o799 == o14235)
                     {
                        o15164 = true;
                     }
                  }
               }
               if(o16191 <= 2)
               {
                  continue;
               }
               break;
            }
            if(o20434.length >= 1)
            {
               if(o20434[0].o19189 == 0)
               {
                  return;
               }
            }
            o8613.o5480(o14235,o7376).defer(function(param1:Object):void
            {
               o20668 = param1;
               if(o20668)
               {
                  var object:Object = o20668["scores"];
                  var o13566:Object = object["equal"];
                  var o6564:int = 0;
                  var o5473:int = 0;
                  var _loc4_:int = 0;
                  var _loc3_:* = o13566;
                  for each(o6475 in o13566)
                  {
                     if(o6564 < o12582.length)
                     {
                        var o1360:int = Math.round(o12582[o6564].o2760 * 100);
                        if(o6475 && o1360 == o5473)
                        {
                           var o1386:o3643 = new o3643();
                           var o14050:o19551 = new o19551(o6475["userID"],o6475["score"],o6475["metadata"]);
                           if(o14050 && o8145(o14050.o11630,o20434) == false)
                           {
                              o1386.o10615 = o14050.o3735;
                              o1386.o799 = o14050.o11630;
                              o1386.o2562 = 0;
                              o1386.o19189 = o14050.o19189;
                              o1386.o15820 = o14050.o12762.toString();
                              o1386.o1727 = o14050.o1727;
                              o1386.o19730 = o12582[o6564].o2760;
                              o20434.push(o1386);
                              o9106.push(o1386.o799);
                              if(o1386.o799 == o14235)
                              {
                                 o15164 = true;
                              }
                           }
                           o6564 = Number(o6564) + 1;
                        }
                        o5473 = Number(o5473) + 1;
                     }
                  }
               }
               o1386 = new o3643();
               if(o15164 == false)
               {
                  o1386.o10615 = o19014;
                  o1386.o799 = o14235;
                  o1386.o2562 = 10000;
                  o1386.o19189 = o2845.o19189 < 0?0:o2845.o19189;
                  o1386.o15820 = o5584.toString();
                  o1386.o1727 = o2618;
                  o1386.o19730 = 1;
                  o20434.push(o1386);
                  o9106.push(o1386.o799);
               }
               o8613.o13887(o9106,o7376).defer(function(param1:Object):void
               {
                  var _loc4_:* = null;
                  var _loc2_:* = null;
                  var _loc3_:int = 0;
                  if(param1)
                  {
                     _loc4_ = param1["ranks"];
                     var _loc7_:int = 0;
                     var _loc6_:* = _loc4_;
                     for each(var _loc5_ in _loc4_)
                     {
                        _loc2_ = new o5192(_loc5_["rank"],_loc5_["total"]);
                        o1386 = o11324(_loc5_["userID"],o20434);
                        if(o1386 != null)
                        {
                           o1386.o2562 = _loc5_["rank"] + 1;
                           o1386.o19189 = _loc5_["score"];
                           if(o1386.o19189 < 0)
                           {
                              o1386.o19189 = 0;
                           }
                           if(o15164 == false && o1386.o799 == o14235)
                           {
                              o1386.o19730 = Math.ceil(_loc2_.o9664 * 100) / 100;
                           }
                        }
                     }
                  }
                  o20434.sort(o12102);
                  _loc3_ = 0;
                  while(_loc3_ < o20434.length)
                  {
                     o1386 = new o3643();
                     if(_loc3_ == 0 || _loc3_ == 1 || _loc3_ == 2)
                     {
                        o1386.o2562 = _loc3_ + 1;
                     }
                     _loc3_++;
                  }
                  promise.data = o20434;
               });
            });
         });
         return promise;
      }
      
      private function o8145(param1:String, param2:Vector.<o3643>) : Boolean
      {
         var _loc5_:int = 0;
         var _loc4_:* = param2;
         for each(var _loc3_ in param2)
         {
            if(_loc3_.o799 == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function o7661(param1:int, param2:o18442 = null) : void
      {
         var _loc6_:int = 0;
         var _loc5_:o14128 = null;
         var _loc7_:int = o3047.o12413;
         var _loc8_:int = o3047.o14789;
         var _loc4_:Boolean = o14200.o19505.o202.o10211;
         if(o14200.o19505.o7923.level >= 15)
         {
            var _loc10_:int = 0;
            var _loc9_:* = o12738;
            for each(var _loc3_ in o12738)
            {
               _loc5_ = _loc3_.o11392 as o14128;
               if(_loc5_ && _loc5_.o19460(param2.type,param2.o4084,param2 is o5600?param2.o16277:param2.grade >= 2))
               {
                  _loc6_ = _loc5_.o19460(param2.type,param2.o4084,param2 is o5600?param2.o16277:param2.grade >= 2);
                  if(_loc5_.o956)
                  {
                     if(_loc5_.o956.o14031 == false && _loc5_.o956.o2183 == false || (_loc5_.o956.o14031 && !_loc4_ || _loc5_.o956.o2183 && _loc4_))
                     {
                        if(_loc5_.o956.o17766(o4519.o13206.o2685.o4326))
                        {
                           _loc3_.o19189 = _loc3_.o19189 + _loc6_;
                        }
                     }
                  }
               }
            }
         }
      }
      
      private function o19007() : void
      {
      }
      
      public function o11750() : void
      {
         o840();
      }
      
      private function o10575(param1:o14801) : o14801
      {
         var _loc5_:o19173 = param1.o11392;
         var _loc6_:o5072 = _loc5_.o5897.o18084();
         var _loc4_:o4070 = new o4070(62,_loc5_.o3354 + "_MedalsEarned",new Vector.<o7631>(),_loc5_.o5897);
         var _loc3_:o14200 = o4519.o8116.profileData;
         var _loc2_:o14801 = _loc3_.data.o18676(_loc4_);
         o4519.o8116.o476.o16679.push(_loc4_);
         return _loc2_;
      }
      
      public function o840() : o16124
      {
         var promise:o16124 = new o16124();
         var o7644:Boolean = true;
         var o19419:o14200 = o4519.o8116.profileData;
         var o16742:String = "alphavirus20140903";
         var o7123:Vector.<o14801> = new Vector.<o14801>();
         o12738 = new Vector.<o14801>();
         var o18510:int = 0;
         var o16679:Vector.<o19173> = o4519.o8116.o476.o16679;
         var _loc3_:int = 0;
         var _loc2_:* = o16679;
         for each(o11392 in o16679)
         {
            if(o11392.type == 3)
            {
               var o11392:o19173 = o11392;
            }
            var o10486:o14801 = o19419.data.o18676(o11392);
            if(o11392.o5897.o13779)
            {
               if(o11392.type == 0 || o11392.type == 1 || o11392.type == 5)
               {
                  o18510 = Number(o18510) + 1;
                  if(o18510 < 4)
                  {
                     o12738.push(o10486);
                  }
               }
               else if(o11392.type != 4)
               {
                  o12738.push(o10486);
                  if(o11392.type == 3)
                  {
                     o12738.push(o10575(o10486));
                  }
               }
               if(o11392.type == 3)
               {
                  o10486.o15785();
               }
            }
            else if(o10486.o11392 is o14128 && (o10486.o11392 as o14128).o9854 == 2 && o10486.o17811 == false && o10486.o20093())
            {
               o7123.push(o10486);
            }
            else if(o10486.o14423 == false && o10486.o17811 == false && o10486.o20093())
            {
               o7123.push(o10486);
            }
         }
         if(o7123.length == 0)
         {
            promise.data = true;
         }
         else
         {
            var o7282:Array = [];
            var _loc5_:int = 0;
            var _loc4_:* = o7123;
            for each(o19837 in o7123)
            {
               o7282.push(o19837.o15785());
            }
            o15714.o18684(o7282,function(... rest):void
            {
               var _loc3_:* = 0;
               var _loc5_:int = 0;
               var _loc4_:* = rest;
               for each(var _loc2_ in rest)
               {
                  _loc3_ = int(_loc2_.o10340());
                  if(_loc3_ < 0)
                  {
                     _loc2_.o17811 = true;
                  }
                  else
                  {
                     _loc3_ = _loc3_;
                  }
                  _loc2_.o14423 = true;
               }
               promise.data = true;
            });
         }
         return promise;
      }
      
      public function o7489() : o16124
      {
         var promise:o16124 = new o16124();
         var o19419:o14200 = o4519.o8116.profileData;
         var o11630:String = o19419.o15894.o4848.o12485;
         var o10615:String = o19419.o15894.o4848.o14996;
         var o115:int = o19419.o115();
         var o19165:Array = [];
         var o17150:int = 0;
         var o18916:Dictionary = o19419.data.o433.o6366();
         var _loc15_:int = 0;
         var _loc14_:* = o12738;
         for each(o10486 in o12738)
         {
            if(o10486.o11392.o5897.o13779 && o19419.o7923.level >= o10387.value && o10486.o3514() && (o10486.o19189 > 0 || o10486.o18018 > 0 || o10486.o5205 > 0))
            {
               var o8039:o4868 = new o4868(o11630,o10486.o11392.o3354,o10486.o11392.o5897,o10486.o19189);
               var o7803:Boolean = true;
               if(o14200.o19505.o20616)
               {
                  o10486.o19189 = 0;
                  o7803 = false;
               }
               if(o10486.o17593 == 3)
               {
                  o7803 = false;
               }
               var o15418:int = 1209600000;
               if(o7803)
               {
                  if(o10486.o11392 as o14128 is o14128)
                  {
                     switch(int((o10486.o11392 as o14128).o9854))
                     {
                        case 0:
                           break;
                        default:
                           o19165.push(o8039.submitScore(o10486.o19189 + o10486.o5205,o10615,o115,o10486.o11392.o5897.o5337() + o15418,o18916));
                           o10486.o4210 = true;
                           o17150 = Number(o17150) + 1;
                           break;
                        case 2:
                        default:
                        default:
                        default:
                        default:
                        default:
                        default:
                        default:
                        default:
                        default:
                        default:
                        default:
                        default:
                           o19165.push(o8039.o15694(o10486.o19189,o10486));
                           o10486.o4210 = true;
                           o17150 = Number(o17150) + 1;
                           break;
                        case 15:
                           var o8230:int = (o10486.o11392 as o14128).o5735.o17679;
                           var o7088:int = 0;
                           var o1903:int = 1;
                           var _loc3_:int = 0;
                           var _loc2_:* = o10486.o9763;
                           for each(o17397 in o10486.o9763)
                           {
                              o7088 = o7088 + o17397;
                              o1903 = Number(o1903) + 1;
                           }
                           if(o10486.o18018 > 0)
                           {
                              o10486.o9763.push(o10486.o18018);
                              o10486.o18018 = 0;
                              o10486.o9763.sort(o10486.sort);
                              if(o10486.o9763.length > o8230)
                              {
                                 if(o10486.o9763.length >= 1)
                                 {
                                 }
                                 o10486.o9763.splice(o8230 - o10486.o9763.length,2147483647);
                              }
                           }
                           var o11354:o16123 = new o16123(0);
                           o1903 = 1;
                           var _loc5_:int = 0;
                           var _loc4_:* = o10486.o9763;
                           for each(o17397 in o10486.o9763)
                           {
                              o11354.value = o11354.value + o17397;
                              o1903 = Number(o1903) + 1;
                           }
                           o10486.o19189 = o11354.value;
                           o19165.push(o8039.submitScore(o10486.o19189,o10615,o115,o10486.o11392.o5897.o5337() + o15418,o18916));
                           o10486.o4210 = true;
                           o17150 = Number(o17150) + 1;
                           var o5284:o14801 = o19419.o5292.o16679.o9622();
                           if(o5284 != null)
                           {
                              var o5411:Boolean = o19419.o7923.level >= o5284.o2395().o10387;
                              if(o5411 && o5284.o11392.o5897.o4574(o10486.o3593))
                              {
                                 var o11411:int = o10486.o19189 - o7088;
                                 o10486.o1998 = o11411;
                                 o14200.o19505.data.o433.o14461 = o14200.o19505.data.o433.o14461 + o11411;
                                 var o4927:o14801 = o19419.o5292.o16679.o4220();
                                 if(o4927)
                                 {
                                    var o6001:o16123 = new o16123(0);
                                    var o6599:Vector.<o14801> = new Vector.<o14801>();
                                    var _loc7_:int = 0;
                                    var _loc6_:* = o4519.o8116.o476.o16679;
                                    for each(o19609 in o4519.o8116.o476.o16679)
                                    {
                                       var o13029:o14128 = o19609 as o14128;
                                       if(o13029 && (o13029.o15421 == 3 || o13029.o15421 == 4 || o13029.o15421 == 5 || o13029.o15421 == 7))
                                       {
                                          o6599.push(o13029.o10486);
                                       }
                                    }
                                    var _loc9_:int = 0;
                                    var _loc8_:* = o6599;
                                    for each(o4205 in o6599)
                                    {
                                       o13029 = o4205.o11392 as o14128;
                                       if(o13029 && o5284.o11392.o5897.o4574(o4205.o3593))
                                       {
                                          o6001.value = o6001.value + o4205.o19189;
                                       }
                                    }
                                    if(o14200.o19505.o20616)
                                    {
                                       o4927.o4210 = false;
                                       o4927.o19189 = 0;
                                    }
                                    else
                                    {
                                       o4927.o19189 = o6001.value;
                                       var o19577:o4868 = new o4868(o11630,o4927.o11392.o3354,o10486.o11392.o5897,o10486.o19189 + o10486.o5205);
                                       o19165.push(o19577.submitScore(o4927.o19189 + o4927.o5205,o10615,o115,o4927.o11392.o5897.o5337() + o15418,o18916));
                                       o10486.o4210 = true;
                                    }
                                 }
                              }
                              o5284.o1760();
                           }
                     }
                  }
                  else
                  {
                     o6001 = new o16123(0);
                     o6599 = new Vector.<o14801>();
                     var _loc11_:int = 0;
                     var _loc10_:* = o4519.o8116.o476.o16679;
                     for each(o17946 in o4519.o8116.o476.o16679)
                     {
                        o13029 = o17946 as o14128;
                        if(o13029 && (o13029.o15421 == 3 || o13029.o15421 == 4 || o13029.o15421 == 5 || o13029.o15421 == 7))
                        {
                           o6599.push(o13029.o10486);
                        }
                     }
                     o5284 = o19419.o5292.o16679.o9622();
                     var _loc13_:int = 0;
                     var _loc12_:* = o6599;
                     for each(o19026 in o6599)
                     {
                        o13029 = o19026.o11392 as o14128;
                        if(o13029 && o5284.o11392.o5897.o4574(o19026.o3593))
                        {
                           o6001.value = o6001.value + o19026.o19189;
                        }
                     }
                     o10486.o19189 = o6001.value;
                     o19165.push(o8039.submitScore(o10486.o19189 + o10486.o5205,o10615,o115,o10486.o11392.o5897.o5337() + o15418,o18916));
                     o10486.o4210 = true;
                     o5284 = o19419.o5292.o16679.o9622();
                     if(o5284 != null)
                     {
                        o5284.o1760();
                     }
                  }
               }
            }
         }
         if(o17150 == 0)
         {
            promise.data = false;
         }
         else
         {
            o15714.o18684(o19165,function(... rest):void
            {
               promise.data = true;
               o11750();
            });
         }
         o19419.saveData();
         return promise;
      }
   }
}
