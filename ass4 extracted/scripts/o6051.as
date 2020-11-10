package
{
   import flash.utils.Dictionary;
   
   public class o6051 extends o8023
   {
       
      
      private var o11620:Array;
      
      private var o4256:Array;
      
      private var o16555:Array;
      
      private var o1468:Array;
      
      private var o19343:Dictionary;
      
      public var o4448:int = 0;
      
      public var o3721:int = 10;
      
      public function o6051()
      {
         o11620 = [];
         o4256 = [];
         o16555 = [];
         o1468 = [];
         o19343 = new Dictionary();
         super();
         o17897();
         o4649();
      }
      
      private function o17897() : void
      {
         o4519.o8116.o1184.o1557(19).defer(function():void
         {
            var _loc3_:int = 0;
            var _loc2_:* = o4519.o8116.o1184.o11620;
            for each(var _loc1_ in o4519.o8116.o1184.o11620)
            {
               if(_loc1_.o6947 == false && _loc1_.o5168 == false && _loc1_.o19901 == false)
               {
                  if(_loc1_.o11570 <= 2)
                  {
                     o11620.push(_loc1_);
                  }
                  else
                  {
                     o16555.push(_loc1_);
                  }
               }
            }
         });
      }
      
      private function o4649() : void
      {
         o4519.o8116.o9511.o12203(98).defer(function():void
         {
            var _loc3_:int = 0;
            var _loc2_:* = o4519.o8116.o9511.o4256;
            for each(var _loc1_ in o4519.o8116.o9511.o4256)
            {
               if(_loc1_.o18072 <= 2)
               {
                  o4256.push(_loc1_);
               }
               else
               {
                  o1468.push(_loc1_);
               }
            }
         });
      }
      
      public function o8278(param1:Dictionary, param2:Number = 1, param3:Number = 0) : int
      {
         var _loc6_:* = Number(Math.random() * param2);
         _loc6_ = Number(_loc6_ + param3);
         if(_loc6_ > param2)
         {
            _loc6_ = param2;
         }
         var _loc4_:* = 0;
         var _loc8_:int = 0;
         var _loc7_:* = param1;
         for(var _loc5_ in param1)
         {
            _loc4_ = Number(_loc4_ + param1[_loc5_]);
            if(_loc6_ <= _loc4_)
            {
               return _loc5_;
            }
         }
         return -1;
      }
      
      public function o3432(param1:int) : int
      {
         o19343 = new Dictionary();
         var _loc2_:o7374 = o4519.o8116.profileData.o5292.o13723.o5506;
         o19343[o1197.o9344] = new Dictionary();
         var _loc3_:Number = o4519.o8116.profileData.o202.o12874.o13362;
         if(_loc3_ > 0)
         {
            o19343[o1197.o9344][o19053.o17861] = _loc2_.o9344.o17861;
            o19343[o1197.o9344][o19053.o14325] = _loc2_.o9344.o14325;
            o19343[o1197.o9344][o19053.o14669] = _loc2_.o9344.o14669;
            var _loc4_:* = o19053.o14669;
            var _loc5_:* = o19343[o1197.o9344][_loc4_] + _loc3_;
            o19343[o1197.o9344][_loc4_] = _loc5_;
            _loc5_ = o19053.o14325;
            _loc4_ = o19343[o1197.o9344][_loc5_] - _loc3_;
            o19343[o1197.o9344][_loc5_] = _loc4_;
         }
         else
         {
            o19343[o1197.o9344][o19053.o17861] = _loc2_.o9344.o17861;
            o19343[o1197.o9344][o19053.o14325] = _loc2_.o9344.o14325;
            o19343[o1197.o9344][o19053.o14669] = _loc2_.o9344.o14669;
         }
         o19343[o1197.o8919] = new Dictionary();
         o19343[o1197.o8919][o19053.o17861] = _loc2_.o8919.o17861;
         o19343[o1197.o8919][o19053.o14325] = _loc2_.o8919.o14325;
         o19343[o1197.o8919][o19053.o14669] = _loc2_.o8919.o14669;
         if(o4519.o8116.profileData.o202.o18339 == 1 || o4519.o8116.profileData.o202.o18339 == 2)
         {
            o19343[o1197.o5281] = new Dictionary();
            o19343[o1197.o5281][o19053.o17861] = _loc2_.o5281.o17861;
            o19343[o1197.o5281][o19053.o14325] = _loc2_.o5281.o14325;
            o19343[o1197.o5281][o19053.o14669] = _loc2_.o5281.o14669;
         }
         else if(o4519.o8116.profileData.o202.o18339 == 4 || o4519.o8116.profileData.o202.o18339 == 5 || o4519.o8116.profileData.o202.o18339 == 7)
         {
            o19343[o1197.o5281] = new Dictionary();
            o19343[o1197.o5281][o19053.o17861] = 0.35;
            o19343[o1197.o5281][o19053.o14325] = 0.4;
            o19343[o1197.o5281][o19053.o14669] = 0.25;
         }
         else
         {
            o19343[o1197.o5281] = new Dictionary();
            o19343[o1197.o5281][o19053.o17861] = 0.5;
            o19343[o1197.o5281][o19053.o14325] = 0.5;
         }
         o19343[o1197.o19789] = new Dictionary();
         o19343[o1197.o19789][o19053.o17861] = _loc2_.o19789.o17861;
         o19343[o1197.o19789][o19053.o14325] = _loc2_.o19789.o14325;
         o19343[o1197.o19789][o19053.o14669] = _loc2_.o19789.o14669;
         o19343[o1197.o3007] = new Dictionary();
         o19343[o1197.o3007][o19053.o17861] = _loc2_.o3007.o17861;
         o19343[o1197.o3007][o19053.o14325] = _loc2_.o3007.o14325;
         o19343[o1197.o3007][o19053.o14669] = _loc2_.o3007.o14669;
         o19343[o1197.o17861] = new Dictionary();
         o19343[o1197.o17861][o19053.o17861] = _loc2_.o17861.o17861;
         o19343[o1197.o17861][o19053.o14325] = _loc2_.o17861.o14325;
         o19343[o1197.o17861][o19053.o14669] = _loc2_.o17861.o14669;
         o19343[o1197.o14419] = new Dictionary();
         o19343[o1197.o14419][o19053.o14419] = 1;
         o19343[o1197.o311] = new Dictionary();
         o19343[o1197.o311][o19053.o14669] = 1;
         return o8278(o19343[param1]);
      }
      
      public function o7888() : int
      {
         var _loc1_:o1717 = o4519.o8116.profileData.o5292.o13723.o17961;
         var _loc4_:Array = [[1,_loc1_.o15724],[2,_loc1_.o2438],[12,_loc1_.o14419],[11,_loc1_.o17472],[4,_loc1_.o6904],[5,_loc1_.o15526],[6,_loc1_.o9989],[7,_loc1_.o15198],[8,_loc1_.o3315],[9,_loc1_.o15612],[10,_loc1_.o15075]];
         var _loc5_:int = o4519.o8116.o20488.o10608.level;
         var _loc2_:Number = Math.min(1,_loc5_ / 100 + 0.7);
         var _loc3_:* = 0;
         if(o14200.o19505.o202.o18339 == 2)
         {
            _loc3_ = Number(_loc3_ + o14576.o18420);
         }
         return o8278(o4791(_loc4_,_loc2_),1,_loc3_);
      }
      
      public function o11227(param1:o12443) : int
      {
         var _loc3_:o14200 = o4519.o8116.profileData;
         var _loc9_:o15745 = _loc3_.o5292.o418;
         if(_loc3_.o7923.level >= _loc9_.o18774)
         {
            if(Math.random() <= _loc9_.o18254)
            {
               return o4189.o12328;
            }
         }
         var _loc4_:o19696 = o4519.o8116.profileData.o5292.o13723.o4723;
         var _loc8_:Array = [[o4189.o19843,_loc4_.o19843],[o4189.o17868,_loc4_.o17868],[o4189.o20918,_loc4_.o20918],[o4189.o6765,_loc4_.o6765],[o4189.o16296,_loc4_.o16296],[o4189.o11328,_loc4_.o11328],[o4189.o15243,_loc4_.o15243],[o4189.o1897,_loc4_.o1897]];
         var _loc10_:int = o4519.o8116.o20488.o10608.level;
         var _loc2_:Number = _loc10_ * 10 + 800;
         _loc2_ = Math.min(1000,_loc2_);
         _loc2_ = Math.max(0,_loc2_);
         _loc2_ = _loc2_ / 1000;
         var _loc5_:int = o4519.o13206.o2685.o7629();
         var _loc7_:* = 0;
         if(_loc5_ == 2)
         {
            _loc7_ = 0.002;
         }
         else if(_loc5_ == 3)
         {
            _loc7_ = 0.003;
         }
         else if(_loc5_ == 4)
         {
            _loc7_ = 0.004;
         }
         if(o14200.o19505.o202.o18339 == 2 && param1 != null)
         {
            _loc7_ = Number(_loc7_ + o14576.o1375(param1.o9899,param1.o4084,param1.o16277));
         }
         var _loc6_:int = o8278(o4791(_loc8_),_loc2_,_loc7_);
         if(_loc6_ < 0)
         {
            _loc6_ = 0;
         }
         if(_loc6_ != o4189.o1897 && o4519.o8116.profileData.o202.o12874.o7830)
         {
            if(_loc6_ == -1)
            {
               trace("Invalid box");
               _loc6_ = 0;
            }
            _loc6_++;
         }
         return _loc6_;
      }
      
      public function o4791(param1:Array, param2:Number = 1) : Dictionary
      {
         var _loc7_:int = 0;
         var _loc4_:Dictionary = new Dictionary();
         var _loc3_:Array = [];
         _loc7_ = 0;
         while(_loc7_ < param1.length)
         {
            if(param1[_loc7_][1] <= param2)
            {
               _loc3_.push(param1[_loc7_]);
            }
            _loc7_++;
         }
         var _loc8_:Number = _loc3_[_loc3_.length - 1][1];
         var _loc6_:* = 0;
         var _loc10_:int = 0;
         var _loc9_:* = _loc3_;
         for each(var _loc5_ in _loc3_)
         {
            _loc4_[_loc5_[0]] = (_loc5_[1] - _loc6_) / _loc8_;
            _loc6_ = Number(_loc5_[1]);
         }
         return _loc4_;
      }
      
      public function o16809(param1:int, param2:o12443, param3:Number = 1) : o14331
      {
         var _loc7_:Number = NaN;
         var _loc6_:int = 0;
         var _loc4_:o14331 = new o14331(param2);
         var _loc5_:int = o3432(param1);
         _loc4_.type = _loc5_;
         if(_loc4_.type == o19053.o14669 && param1 != o1197.o5281 && o4448 >= o3721 && param1 != o1197.o311)
         {
            while(_loc4_.type == o19053.o14669)
            {
               _loc5_ = o3432(param1);
               _loc4_.type = _loc5_;
            }
         }
         if(_loc4_.type == o19053.o14669)
         {
            o4448 = Number(o4448) + 1;
         }
         var _loc8_:* = _loc5_;
         switch(_loc8_)
         {
            case o19053.o17861:
               if(param2 != null && param2.o7743 != 0)
               {
                  _loc7_ = 50 + param2.o7743 * 20;
                  _loc7_ = (0.5 + Math.random() * 0.5) * _loc7_;
                  _loc7_ = Math.ceil(_loc7_);
                  _loc4_.value = _loc7_;
               }
               else
               {
                  _loc6_ = o4519.o8116.profileData.o7923.level;
                  _loc4_.value = (20 + Math.random() * 21) * _loc6_ * param3;
               }
               if(o14200.o19505.o202.o18339 == 2)
               {
                  _loc4_.value = _loc4_.value * o14576.o17763;
               }
               break;
            case o19053.o14419:
               _loc4_.o9449 = false;
               _loc4_.o5408 = false;
               _loc4_.type = o19053.o14325;
               _loc4_.o17401 = 12;
               _loc4_.value = 1;
               break;
            case o19053.o14325:
               _loc4_.o17401 = o7888();
               switch(int(_loc4_.o17401) - 1)
               {
                  case 0:
                     _loc4_.value = int(Math.random() * 3 + 2);
                     break;
                  case 1:
                     _loc4_.value = int(Math.random() * 3 + 2);
               }
               break;
            case o19053.o14669:
               _loc4_.value = o11227(param2);
         }
         return _loc4_;
      }
      
      public function o13665(param1:o14331) : void
      {
         dispatchData(new o16898(param1));
      }
      
      public function o5236(param1:o14331) : void
      {
         dispatchData(new o18415(param1));
      }
      
      private function o18539() : o8347
      {
         var _loc3_:int = o4519.o8116.profileData.o5292.o18891();
         var _loc1_:int = _loc3_ * Math.random();
         var _loc2_:int = o4519.o8116.profileData.o5292.o2702(_loc1_);
         return o4519.o8116.o1184.o11620[_loc2_] as o8347;
      }
      
      public function o11612(param1:int, param2:Boolean, param3:o12443) : o16124
      {
         o16982 = param1;
         o5408 = param2;
         o11938 = param3;
         var o19419:o14200 = o4519.o8116.profileData;
         var o1889:o3262 = o4519.o8116.profileData.o5292.o13723.o11612;
         var o418:o15745 = o19419.o5292.o418;
         var o10609:Boolean = o16982 == o4189.o12328;
         var o3923:o9607 = new o9607();
         if(o10609)
         {
            var o16982:int = o4189.o11328;
         }
         var char:o9145 = o19419.o7923;
         var o18601:int = o19419.o7923.o7188[o16982];
         var o8871:int = o19419.o7923.o13560[o16982];
         var o11816:int = (o18601 + o8871) % o9607.o8102.length;
         o3923.o11478(o11816);
         var _loc5_:* = o19419.o7923.o13560;
         var _loc6_:* = o16982;
         var _loc7_:* = Number(_loc5_[_loc6_]) + 1;
         _loc5_[_loc6_] = _loc7_;
         var o9165:Boolean = o19419.o202.o11661 && o4519.o8116.profileData.o7923.o11661;
         if(o4519.o8116.profileData.o202.o11661)
         {
            o4519.o8116.profileData.o202.o11661 = false;
         }
         var o11158:o10411 = new o10411(false);
         var promise:o16124 = new o16124();
         var o3436:o10411 = new o10411(false);
         var o6775:Array = [];
         if(o16982 == o4189.o1897)
         {
            if(o5408 || o19419.o202.o18339 == 2 && o19419.o7923.level >= o418.o6606)
            {
               if(o3923.random() <= o418.o19259)
               {
                  o3436.value = true;
               }
            }
            if(o19419.o202.o18339 == 2 && o19419.o7923.level >= o418.o2109)
            {
               var o18013:Boolean = false;
               if(o11938 != null)
               {
                  o18013 = o11938.o5766;
               }
               if(o18013)
               {
                  var o12529:Number = 0;
                  switch(int(o11938.o9899) - 10)
                  {
                     case 0:
                        o12529 = o418.o14225;
                        break;
                     case 1:
                        o12529 = o418.o11898;
                        break;
                     case 2:
                        o12529 = o418.o20545;
                        break;
                     case 3:
                        o12529 = o418.o8425;
                        break;
                     case 4:
                        o12529 = o418.o10473;
                  }
                  if(o3923.random() <= o12529)
                  {
                     o11158.value = true;
                  }
               }
            }
         }
         char = o19419.o7923;
         var o3686:int = char.level;
         var o20133:o15787 = new o15787(0);
         o20133.value = 4 * Math.sqrt(o3686 * 20);
         if(o4519.o8116.profileData.o202.o12874.o7830)
         {
            o20133.value = o20133.value + 5;
         }
         if(o14200.o19505.o202.o18339 == 2)
         {
            o20133.value = o20133.value + o3686 / o14576.o20288;
         }
         var o4240:Dictionary = new Dictionary();
         var o20428:o19696 = o1889.o20428;
         o4240[o4189.o19843] = o20428.o19843;
         o4240[o4189.o17868] = o20428.o17868;
         o4240[o4189.o20918] = o20428.o20918;
         o4240[o4189.o6765] = o20428.o6765;
         o4240[o4189.o16296] = o20428.o16296;
         o4240[o4189.o11328] = o20428.o11328;
         o4240[o4189.o15243] = o20428.o15243;
         o4240[o4189.o1897] = o20428.o1897;
         var o12381:Number = o4240[o16982];
         o20133.value = o20133.value + o12381;
         var o5915:Boolean = o3923.random() <= o1889.o19983;
         if(o5915)
         {
            var o2103:Array = !!o10609?o16555:o11620;
         }
         else
         {
            o2103 = !!o10609?o1468:o4256;
         }
         var o20612:Array = o2103.sort(function(param1:Object, param2:Object):Number
         {
            var _loc3_:Number = Math.abs(param1.o20133 - o20133.value);
            var _loc4_:Number = Math.abs(param2.o20133 - o20133.value);
            if(_loc3_ < _loc4_)
            {
               return -1;
            }
            if(_loc3_ > _loc4_)
            {
               return 1;
            }
            return 0;
         });
         if(o9165 && o10609 == false)
         {
            o5915 = true;
            o20612 = [o18539()];
         }
         var o19765:* = o20612[0];
         var o16783:* = o20612[o20612.length - 1];
         var o14912:Array = [];
         var o9001:int = 0;
         var o16634:int = 0;
         var o13682:int = o1889.o13682;
         var o9124:int = 0;
         var o5063:int = Math.round(Math.sqrt(o20133.value)) + o1889.o15276;
         if(o3686 > 50)
         {
            o5063 = new o16123(15 + (o4189.o1350 - o16982) * 2).value;
            o13682 = new o16123(10 - (o4189.o1350 - o16982)).value;
         }
         var o1903:int = 0;
         while(o1903 < o20612.length)
         {
            if(o20612[o1903].o10810 >= 0)
            {
               var o14460:Boolean = o20612[o1903].o20133 >= o20133.value;
               if(o14460 && o16634 < o13682)
               {
                  o14912.push(o20612[o1903]);
                  o9001 = o9001 + o20612[o1903].o7498;
                  o16634 = Number(o16634) + 1;
               }
               if(!o14460 && o9124 < o5063)
               {
                  o14912.push(o20612[o1903]);
                  o9001 = o9001 + o20612[o1903].o7498;
                  o9124 = Number(o9124) + 1;
               }
               if(o16634 >= o13682 && o9124 >= o5063)
               {
                  break;
               }
            }
            o1903 = o1903 + 1;
         }
         if(o14912.length == 0)
         {
            return o11612(!!o10609?o4189.o12328:o16982,false,o11938);
         }
         var o3126:Number = o3923.random();
         var o16191:Number = 0;
         var o9039:* = o14912[0];
         var _loc9_:int = 0;
         var _loc8_:* = o14912;
         for each(o19701 in o14912)
         {
            o16191 = o16191 + o19701.o7498 / o9001;
            if(o3126 <= o16191)
            {
               o9039 = o19701;
               break;
            }
         }
         var o13354:Array = o14912.sort(function(param1:Object, param2:Object):Number
         {
            if(param1.o20133 > param2.o20133)
            {
               return -1;
            }
            if(param1.o20133 < param2.o20133)
            {
               return 1;
            }
            return 0;
         });
         var o11571:Number = 0;
         if(o13354.indexOf(o9039) < 5)
         {
            if(o3686 < 90)
            {
               var o17018:int = o13354.indexOf(o9039) + 1;
               o11571 = -(4 * (6 - o17018)) / 100;
            }
         }
         else if(o13354.length - o13354.indexOf(o9039) < 10)
         {
            o17018 = o13354.length - o13354.indexOf(o9039) + 1;
            var o14380:int = 11;
            if(o9124 < 10)
            {
               o14380 = o9124 + 1;
            }
            o11571 = 4 * (o14380 - o17018);
            var add:Number = o11571 * o3923.random();
            o11571 = o11571 + add;
            o11571 = o11571 / 100;
         }
         var o11873:Dictionary = new Dictionary();
         var o6823:o19696 = o1889.o11873;
         o11873[o4189.o19843] = o6823.o19843;
         o11873[o4189.o17868] = o6823.o17868;
         o11873[o4189.o20918] = o6823.o20918;
         o11873[o4189.o6765] = o6823.o6765;
         o11873[o4189.o16296] = o6823.o16296;
         o11873[o4189.o11328] = o6823.o11328;
         o11873[o4189.o15243] = o6823.o15243;
         o11873[o4189.o1897] = o6823.o1897;
         var o16678:Dictionary = new Dictionary();
         var o10184:o19696 = o1889.o16678;
         o16678[o4189.o19843] = o10184.o19843;
         o16678[o4189.o17868] = o10184.o17868;
         o16678[o4189.o20918] = o10184.o20918;
         o16678[o4189.o6765] = o10184.o6765;
         o16678[o4189.o16296] = o10184.o16296;
         o16678[o4189.o11328] = o10184.o11328;
         o16678[o4189.o15243] = o10184.o15243;
         o16678[o4189.o1897] = o10184.o1897;
         var o11783:Number = int(o3686 / 3) / 100 + o16678[o16982];
         var o1075:int = 0;
         while(o1075 < o11873[o16982])
         {
            var o17429:Number = o3923.random();
            var o14507:Number = o17429;
            o14507 = o14507 * 12;
            o14507 = Math.floor(o14507);
            o14507 = o14507 / 100;
            o14507 = o14507 + 0.01;
            o11783 = o11783 + o14507;
            o1075 = o1075 + 1;
         }
         o11783 = o11783 + o11571;
         var o10101:Array = o1889.o18041();
         var grade:int = 0;
         var _loc11_:int = 0;
         var _loc10_:* = o10101;
         for each(o6885 in o10101)
         {
            if(o11783 >= o6885)
            {
               grade = Number(grade) + 1;
               continue;
            }
            break;
         }
         var o13376:o8347 = o9039 as o8347;
         var o6616:o14809 = o9039 as o14809;
         var o2838:int = !!o5915?o13376.o16647:o6616.o16647;
         var o9411:int = !!o5915?o13376.o10810:o6616.o10810;
         if(grade > o2838)
         {
            grade = o2838;
         }
         if(grade < o9411 && o9411 >= 0)
         {
            grade = o9411;
         }
         var o1120:Dictionary = new Dictionary();
         var o5821:o19696 = o1889.o1120;
         o1120[o4189.o19843] = o5821.o19843;
         o1120[o4189.o17868] = o5821.o17868;
         o1120[o4189.o20918] = o5821.o20918;
         o1120[o4189.o6765] = o5821.o6765;
         o1120[o4189.o16296] = o5821.o16296;
         o1120[o4189.o11328] = o5821.o11328;
         o1120[o4189.o15243] = o5821.o15243;
         o1120[o4189.o1897] = o5821.o1897;
         var o10159:int = o3686 + o1120[o16982];
         var o9528:Array = null;
         if(o5915)
         {
            o9528 = [[10,[0.8,0.2,0]],[30,[0.4,0.5,0.1]],[2147483647,[0.1,0.6,0.3]]];
         }
         else
         {
            o9528 = [[10,[0.8,0.2,0]],[30,[0.5,0.5,0]],[2147483647,[0.3,0.7,0]]];
         }
         var o11558:int = 0;
         if(o16982 == o4189.o1897 || o10609)
         {
            if(o5915)
            {
               o11558 = 3;
            }
            else
            {
               o11558 = 2;
            }
         }
         else if(grade > 0)
         {
            var _loc15_:int = 0;
            var _loc14_:* = o9528;
            for each(o4697 in o9528)
            {
               if(o10159 <= o4697[0])
               {
                  var o10917:Number = o3923.random();
                  var o12695:Number = 0;
                  var _loc13_:int = 0;
                  var _loc12_:* = o4697[1];
                  for each(o10171 in o4697[1])
                  {
                     o12695 = o12695 + o10171;
                     o11558 = Number(o11558) + 1;
                     if(o10917 > o12695)
                     {
                        continue;
                     }
                     break;
                  }
                  break;
               }
            }
         }
         var o17656:Vector.<int> = new Vector.<int>();
         var o6453:Vector.<int> = new Vector.<int>();
         var o2742:Number = 0;
         var o5325:Number = 0;
         var o5222:Number = 0;
         var o15002:Number = 0;
         var o10964:int = 0;
         var o9577:int = 0;
         while(o9577 < o11558)
         {
            var o4486:Boolean = o3923.random() <= 0.5;
            if(o4486)
            {
               var o3437:Dictionary = new Dictionary();
               var o19621:o19696 = o1889.o3437;
               o3437[o4189.o19843] = o19621.o19843;
               o3437[o4189.o17868] = o19621.o17868;
               o3437[o4189.o20918] = o19621.o20918;
               o3437[o4189.o6765] = o19621.o6765;
               o3437[o4189.o16296] = o19621.o16296;
               o3437[o4189.o11328] = o19621.o11328;
               o3437[o4189.o15243] = o19621.o15243;
               o3437[o4189.o1897] = o19621.o1897;
               var o8509:Number = 0;
               var o5486:int = 0;
               while(o5486 < o3437[o16982])
               {
                  o8509 = o8509 + (0.01 + Math.floor(o3923.random() * 6) / 100);
                  o5486 = o5486 + 1;
               }
               var o10222:Array = o1889.o9715();
               var o19540:int = 1;
               var _loc17_:int = 0;
               var _loc16_:* = o10222;
               for each(o2260 in o10222)
               {
                  if(o8509 > o2260)
                  {
                     o19540 = Number(o19540) + 1;
                     continue;
                  }
                  break;
               }
               if(o19540 > grade)
               {
                  o19540 = grade;
               }
               var o2292:Array = null;
               if(o5915)
               {
                  var o4642:o11930 = o1889.o9738;
                  o7045 = [[1,o4642.o5725],[2,o4642.o18640],[3,o4642.o14120],[4,o4642.o6215],[5,o4642.o5991],[6,o4642.o19455],[7,o4642.o4687],[8,o4642.o9139],[9,o4642.o16832],[10,o4642.o13369],[11,o4642.o16685]];
                  o14528(o7045);
                  var remove:Vector.<int> = new Vector.<int>();
                  var _loc19_:int = 0;
                  var _loc18_:* = o7045;
                  for each(o14153 in o7045)
                  {
                     var o8556:int = o14153[0];
                     if(o14018.o20494(o13376,o8556) == false)
                     {
                        remove.push(o8556);
                     }
                  }
                  var o8100:Array = o7045.concat();
                  var _loc21_:int = 0;
                  var _loc20_:* = o7045;
                  for each(o4237 in o7045)
                  {
                     if(remove.indexOf(o4237[0]) == -1)
                     {
                        o8100.push(o4237[0]);
                     }
                  }
                  o5222 = 0;
                  o15002 = 0;
                  var _loc25_:int = 0;
                  var _loc24_:* = o7045;
                  for each(o4237 in o7045)
                  {
                     var _loc23_:int = 0;
                     var _loc22_:* = o8100;
                     for each(o10964 in o8100)
                     {
                        if(o4237[0] == o10964)
                        {
                           o5222 = o5222 + (o4237[1] - o15002);
                           break;
                        }
                     }
                     o15002 = o4237[1];
                  }
                  o2292 = [];
                  o15002 = 0;
                  var _loc29_:int = 0;
                  var _loc28_:* = o7045;
                  for each(o4237 in o7045)
                  {
                     var _loc27_:int = 0;
                     var _loc26_:* = o8100;
                     for each(o10964 in o8100)
                     {
                        if(o4237[0] == o10964)
                        {
                           o2742 = (o4237[1] - o15002) / o5222;
                           o5325 = 0;
                           if(o2292.length > 0)
                           {
                              o5325 = o2292[o2292.length - 1][1];
                           }
                           o2292.push([o10964,o5325 + o2742]);
                           break;
                        }
                     }
                     o15002 = o4237[1];
                  }
               }
               else
               {
                  var o8569:o626 = o1889.o20203;
                  var o7045:Array = [[13,o8569.o8672],[14,o8569.o9362],[15,o8569.o75],[22,o8569.o17636],[23,o8569.o10167],[24,o8569.o9170],[16,o8569.energy],[17,o8569.o11243],[18,o8569.regenHealth],[19,o8569.o11031],[20,o8569.o331],[25,o8569.o2262],[21,o8569.o16109]];
                  var o5844:Dictionary = o4519.o8116.profileData.o5292.o9024();
                  var o16702:int = o6616.o20559;
                  o5222 = 0;
                  o15002 = 0;
                  var _loc33_:int = 0;
                  var _loc32_:* = o7045;
                  for each(o4237 in o7045)
                  {
                     var _loc31_:int = 0;
                     var _loc30_:* = o5844[o16702];
                     for each(o10964 in o5844[o16702])
                     {
                        if(o4237[0] == o10964)
                        {
                           o5222 = o5222 + (o4237[1] - o15002);
                           break;
                        }
                     }
                     o15002 = o4237[1];
                  }
                  o2292 = [];
                  o15002 = 0;
                  var _loc37_:int = 0;
                  var _loc36_:* = o7045;
                  for each(o4237 in o7045)
                  {
                     var _loc35_:int = 0;
                     var _loc34_:* = o5844[o16702];
                     for each(o10964 in o5844[o16702])
                     {
                        if(o4237[0] == o10964)
                        {
                           o2742 = (o4237[1] - o15002) / o5222;
                           o5325 = 0;
                           if(o2292.length > 0)
                           {
                              o5325 = o2292[o2292.length - 1][1];
                           }
                           o2292.push([o10964,o5325 + o2742]);
                           break;
                        }
                     }
                     o15002 = o4237[1];
                  }
               }
               var o12136:int = 0;
               do
               {
                  o12136 = o8278(o4791(o2292));
               }
               while(o6453.indexOf(o12136) != -1);
               
               o6453.push(o12136);
               var o20500:o16124 = o4519.o8116.o9986.o11969(o12136,o19540);
               o20500.defer(function(param1:int):void
               {
                  o17656.push(param1);
               });
               o6775.push(o20500);
            }
            else
            {
               o17656.push(-1);
            }
            o9577 = o9577 + 1;
         }
         o15714.o18684(o6775,function():void
         {
            var _loc1_:o20401 = new o20401();
            _loc1_.type = !!o5915?0:1;
            _loc1_.o11876 = !!o5915?(o9039 as o8347).id:(o9039 as o14809).id;
            _loc1_.grade = grade;
            _loc1_.o20140();
            var _loc4_:int = 0;
            var _loc3_:* = o17656;
            for each(var _loc2_ in o17656)
            {
               if(o10609)
               {
                  _loc1_.o14893(-1);
               }
               else
               {
                  _loc1_.o14893(_loc2_);
               }
            }
            _loc1_.o3257 = o3436.value;
            _loc1_.o8031 = o11158.value;
            promise.data = _loc1_;
         });
         return promise;
      }
      
      private function o14528(param1:Array) : void
      {
         var _loc3_:int = 0;
         var _loc2_:Number = 1 - param1[param1.length - 1][1];
         var _loc4_:Number = _loc2_ / param1.length;
         _loc3_ = 0;
         while(_loc3_ < param1.length)
         {
            var _loc5_:int = 1;
            var _loc6_:* = param1[_loc3_][_loc5_] + _loc4_;
            param1[_loc3_][_loc5_] = _loc6_;
            _loc3_++;
         }
         param1[param1.length - 1][1] = 1;
      }
      
      public function o892(param1:int) : o14331
      {
         var _loc2_:o14331 = new o14331(null);
         _loc2_.type = o19053.o14325;
         _loc2_.o17401 = param1;
         _loc2_.value = 2;
         return _loc2_;
      }
      
      public function o6716(param1:int) : o14331
      {
         var _loc2_:o14331 = new o14331(null);
         _loc2_.type = o19053.o14669;
         _loc2_.value = param1;
         return _loc2_;
      }
      
      private function o16600() : void
      {
         var _loc1_:* = o4519.o8116.profileData.o5292.o13723;
         _loc1_ = _loc1_;
      }
   }
}
