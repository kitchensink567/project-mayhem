package
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class o8889 extends o9743
   {
       
      
      private var o19419:o14200;
      
      private var o3541:Vector.<o5910>;
      
      private var o11620:Vector.<o14096>;
      
      public function o8889()
      {
         super();
      }
      
      public function o16384(param1:MovieClip, param2:o14801) : void
      {
         var _loc6_:int = 0;
         var _loc14_:* = null;
         var _loc10_:* = null;
         var _loc7_:* = null;
         var _loc11_:* = null;
         var _loc16_:* = null;
         var _loc13_:* = null;
         super.init(param1);
         o19419 = o14200.o19505;
         var _loc8_:TextField = container.getChildByName("lblDlgHeading") as TextField;
         var _loc9_:TextField = container.getChildByName("lblDlgDetails") as TextField;
         _loc8_.text = "Championship Complete: " + param2.o2395().o17977;
         _loc9_.text = "Loading...";
         o3541 = new Vector.<o5910>();
         o11620 = new Vector.<o14096>();
         var _loc4_:Vector.<o7631> = param2.o11392.o9938;
         _loc6_ = 0;
         while(_loc6_ < 3)
         {
            _loc14_ = container.getChildByName("player" + _loc6_.toString()) as MovieClip;
            _loc10_ = _loc14_.getChildByName("badge") as MovieClip;
            _loc7_ = _loc10_.getChildByName("level") as MovieClip;
            _loc7_.gotoAndStop(1);
            _loc14_.visible = false;
            _loc11_ = new o5910();
            _loc11_.init(_loc14_.getChildByName("btnWeapon") as MovieClip);
            _loc11_.addEventListener("click",o11215,false,0,true);
            _loc11_.o7023 = _loc6_;
            o3541.push(_loc11_);
            o11620.push(null);
            _loc6_++;
         }
         var _loc17_:int = 0;
         var _loc19_:int = 0;
         var _loc18_:* = _loc4_;
         for each(var _loc12_ in _loc4_)
         {
            _loc16_ = o19419.o5292.o13988.o9694(_loc12_.o5546);
            if(_loc16_.o15217 != null)
            {
               _loc13_ = _loc16_.o15217.o229();
               o14290(_loc17_,_loc16_.o15217.o10748,_loc16_.o15217.grade,_loc16_.o15217.o11314,!!_loc13_.o2752.o19901?4:_loc13_.o2752.o11570);
            }
            _loc17_++;
            if(_loc17_ < 3)
            {
               continue;
            }
            break;
         }
         var _loc3_:String = o14200.o19505.o15894.o4848.o12485;
         var _loc5_:o5072 = new o5072(null,null);
         _loc5_.start = new Date(2000);
         _loc5_.end = new Date(2100);
         var _loc15_:o4868 = new o4868(_loc3_,param2.o7376,_loc5_,0);
         _loc15_.o12318(3).defer(o1321);
      }
      
      private function o14290(param1:int, param2:int, param3:int, param4:int, param5:int) : void
      {
         var _loc6_:o5910 = o3541[param1];
         var _loc7_:o14096 = o19419.o15894.o19318(param2);
         this.o11620[param1] = _loc7_;
         _loc7_.grade = param3;
         _loc7_.o17656.length = 0;
         _loc7_.o4680 = param4;
         _loc6_.o2752 = _loc7_;
         var _loc8_:o20006 = _loc7_.o8815(null);
         _loc8_.o6088 = _loc6_;
         _loc6_.o3700 = _loc8_;
         _loc6_.o1258();
         _loc6_.visible = true;
      }
      
      private function o11215(param1:MouseEvent) : void
      {
         var _loc2_:o5910 = param1.target as o5910;
         var _loc3_:o14096 = o11620[_loc2_.o7023];
         var _loc4_:o4117 = o4117.o18521(o14200.o19505,o14200.o19505.o7923);
         o4519.o10093.o16989.o18017(_loc3_,_loc4_,null,false);
      }
      
      override public function o13640() : void
      {
         var _loc3_:int = 0;
         var _loc2_:* = o3541;
         for each(var _loc1_ in o3541)
         {
            _loc1_.removeEventListener("click",o11215);
         }
         o19419 = null;
         o3541 = null;
         o11620 = null;
         super.o13640();
      }
      
      private function o1321(param1:Array) : void
      {
         var _loc3_:TextField = container.getChildByName("lblDlgDetails") as TextField;
         _loc3_.text = "Congratulations to the top ranked players";
         var _loc2_:int = 0;
         var _loc6_:int = 0;
         var _loc5_:* = param1;
         for each(var _loc4_ in param1)
         {
            switch(int(_loc2_))
            {
               case 0:
                  o12342(_loc2_,"blackDiamond","1st",_loc4_.o3735);
                  break;
               case 1:
                  o12342(_loc2_,"redDiamond","2nd",_loc4_.o3735);
                  break;
               case 2:
                  o12342(_loc2_,"diamond","3rd",_loc4_.o3735);
            }
            _loc2_++;
         }
      }
      
      private function o12342(param1:int, param2:String, param3:String, param4:String) : void
      {
         var _loc7_:String = "player" + param1.toString();
         var _loc9_:MovieClip = container.getChildByName(_loc7_) as MovieClip;
         var _loc10_:MovieClip = _loc9_.getChildByName("badge") as MovieClip;
         var _loc8_:MovieClip = _loc10_.getChildByName("level") as MovieClip;
         var _loc6_:TextField = _loc9_.getChildByName("lblStanding") as TextField;
         _loc8_.gotoAndStop(param2);
         _loc6_.text = param3;
         var _loc5_:TextField = _loc9_.getChildByName("lblPlayerName") as TextField;
         if(param4)
         {
            _loc5_.text = param4;
         }
         else
         {
            _loc5_.text = "???";
         }
         _loc9_.visible = true;
      }
   }
}
