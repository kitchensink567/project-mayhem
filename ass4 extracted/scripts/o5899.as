package
{
   public class o5899 extends o328
   {
       
      
      private var o19419:o14200;
      
      private var o880:Vector.<String>;
      
      public function o5899(param1:o14200)
      {
         super();
         this.o19419 = param1;
         o880 = param1.o19552.o18150("defaultNames");
      }
      
      override protected function o5312(param1:int, param2:String) : Boolean
      {
         var _loc7_:* = null;
         var _loc3_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         if(param2.replace(" ","").length == 0)
         {
            _loc7_ = o19419.o5099.o9009("dialogMessage.characterNameRequired.title");
            _loc3_ = o19419.o5099.o9009("dialogMessage.characterNameRequired.message");
            this.o16989.o12407(_loc7_,_loc3_);
            return false;
         }
         var _loc9_:String = o5343.o16306(param2);
         if(param2 != _loc9_)
         {
            o4519.o8116.o4812.ui.error.play();
            _loc5_ = o19419.o5099.o9009("dialogMessage.invalidCharacterName.title");
            _loc6_ = o19419.o5099.o9009("dialogMessage.invalidCharacterName.message");
            this.o16989.o12407(_loc5_,_loc6_);
            return false;
         }
         var _loc8_:int = 20;
         if(param2.length > _loc8_)
         {
            o4519.o8116.o4812.ui.error.play();
            this.o16989.o12407("Invalid name","The maximum character name length is " + _loc8_.toString());
            return false;
         }
         var _loc4_:o9145 = o19419.o9573(o19419.o202.o20766,param2,param1);
         this.o19419.o202.o11075 = o19419.o202.o20766;
         if(o19419.o4539)
         {
            var _loc12_:int = 0;
            var _loc11_:* = o15621.o2610().o11952();
            for each(var _loc10_ in o15621.o2610().o11952())
            {
               if(o20543.o1224(_loc10_.o5693))
               {
                  o18488(_loc4_,_loc10_.o5693);
               }
            }
         }
         if(_loc4_.o7211 > 1 || _loc4_.o20170 > 100000)
         {
            o19419.o2719.o8337(o10509.o11909,_loc4_.o7211.toString() + " " + _loc4_.o20170.toString(),true);
         }
         if(o19419.o1029)
         {
            o19419.o1029 = false;
            o16989.screen = 6;
         }
         else
         {
            o19689.screen = 3;
         }
         return true;
      }
      
      private function o18488(param1:o9145, param2:int) : Boolean
      {
         var _loc13_:* = null;
         var _loc7_:* = null;
         var _loc4_:* = null;
         var _loc9_:* = null;
         var _loc15_:* = null;
         var _loc8_:* = null;
         var _loc14_:* = null;
         var _loc5_:* = null;
         var _loc12_:o4162 = o19419.o5292.o3911.o14690(param2);
         if(_loc12_)
         {
            var _loc19_:int = 0;
            var _loc18_:* = _loc12_.o11620;
            for each(var _loc3_ in _loc12_.o11620)
            {
               _loc13_ = o4519.o8116.o1184.o11620[_loc3_.o10748];
               _loc7_ = o19419.o15894.o20444(param1,_loc13_,_loc3_.grade,_loc3_.o11314);
               _loc7_.o2397 = true;
               _loc7_.o17656 = new Vector.<o3743>();
               var _loc17_:int = 0;
               var _loc16_:* = _loc3_.o17656;
               for each(var _loc11_ in _loc3_.o17656)
               {
                  _loc4_ = new o3743();
                  _loc9_ = o19419.o5292.o5812(_loc11_.o8497);
                  _loc4_.init(_loc9_,_loc11_.grade);
                  _loc7_.o17656.push(_loc4_);
               }
            }
            var _loc23_:int = 0;
            var _loc22_:* = _loc12_.o4256;
            for each(var _loc6_ in _loc12_.o4256)
            {
               _loc15_ = o4519.o8116.o9511.o4256[_loc6_.o15568];
               _loc8_ = o19419.o15894.o16590(param1,_loc15_,_loc6_.grade,_loc6_.o11314);
               _loc8_.o2397 = true;
               _loc8_.o17656 = new Vector.<o3743>();
               var _loc21_:int = 0;
               var _loc20_:* = _loc6_.o17656;
               for each(var _loc10_ in _loc6_.o17656)
               {
                  _loc14_ = new o3743();
                  _loc5_ = o19419.o5292.o5812(_loc10_.o8497);
                  _loc14_.init(_loc5_,_loc10_.grade);
                  _loc8_.o17656.push(_loc14_);
               }
            }
         }
         return false;
      }
      
      override protected function o494() : String
      {
         var _loc1_:String = o880[o20852.o17418(o880.length - 1)];
         return _loc1_;
      }
      
      override protected function o11639(param1:o15625) : void
      {
         o4519.o8116.o4812.ui.o14759.play();
      }
      
      override protected function o2806(param1:o15625) : void
      {
         o4519.o8116.o4812.ui.o876.play();
      }
      
      override public function o13640() : void
      {
         o19419 = null;
         o880 = null;
         super.o13640();
      }
   }
}
