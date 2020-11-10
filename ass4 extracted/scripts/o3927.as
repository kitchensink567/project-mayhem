package
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class o3927 extends o9743
   {
       
      
      private var o19419:o14200;
      
      private var o1596:o11614;
      
      private var o3541:Vector.<o5910>;
      
      private var o192:Vector.<MovieClip>;
      
      private var o9050:Vector.<MovieClip>;
      
      private var o11620:Vector.<o14096>;
      
      public function o3927()
      {
         super();
      }
      
      public function o16384(param1:MovieClip) : void
      {
         var _loc4_:* = null;
         var _loc8_:* = null;
         var _loc15_:* = null;
         var _loc10_:int = 0;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc17_:* = null;
         var _loc16_:* = null;
         var _loc9_:* = null;
         this.init(param1);
         o19419 = o14200.o19505;
         var _loc3_:o14801 = o19419.o5292.o16679.o9622();
         var _loc7_:Vector.<o7631> = _loc3_.o11392.o9938;
         var _loc12_:int = _loc3_.o10340();
         var _loc11_:o11614 = _loc3_.o9694();
         var _loc13_:TextField = container.getChildByName("lblTitle") as TextField;
         _loc13_.text = _loc3_.o16776() + " Championship";
         o192 = new Vector.<MovieClip>();
         _loc10_ = 0;
         while(_loc10_ < 13)
         {
            _loc4_ = this.container.getChildByName("reward" + _loc10_.toString()) as MovieClip;
            o192.push(_loc4_);
            _loc10_++;
         }
         o3541 = new Vector.<o5910>();
         o9050 = new Vector.<MovieClip>();
         o11620 = new Vector.<o14096>();
         _loc10_ = 0;
         while(_loc10_ < 3)
         {
            _loc5_ = new o5910();
            _loc5_.init(o192[_loc10_].getChildByName("btnWeapon") as MovieClip);
            _loc5_.addEventListener("click",o11215,false,0,true);
            _loc5_.o7023 = _loc10_;
            o3541.push(_loc5_);
            _loc6_ = _loc5_.asset.getChildByName("version") as MovieClip;
            _loc6_.gotoAndStop(1);
            o9050.push(_loc6_);
            _loc5_.visible = false;
            o11620.push(null);
            _loc10_++;
         }
         o11492();
         var _loc18_:int = 0;
         var _loc2_:* = null;
         var _loc20_:int = 0;
         var _loc19_:* = _loc7_;
         for each(var _loc14_ in _loc7_)
         {
            _loc17_ = o19419.o5292.o13988.o9694(_loc14_.o5546);
            if(_loc17_.o15217 != null)
            {
               _loc16_ = _loc17_.o15217.o229();
               o14290(_loc18_,_loc17_.o15217.o10748,_loc17_.o15217.grade,_loc17_.o15217.o11314,!!_loc16_.o2752.o19901?4:_loc16_.o2752.o11570);
            }
            _loc9_ = "";
            if(_loc14_.o2562 <= 3)
            {
               _loc9_ = _loc9_ + (_loc14_.o2562.toString() + ":" + o16724.o10417(_loc14_.o2562));
            }
            else
            {
               _loc9_ = _loc9_ + (o16724.o10417(_loc2_.o2562 + 1) + " - " + o16724.o10417(_loc14_.o2562));
            }
            o1124(_loc12_ == _loc18_,_loc18_,_loc9_,_loc17_.o18656(true,false,true,true,true,true,false),_loc17_.o3998,_loc17_.o6287,_loc17_.o12753,_loc17_.o10936);
            _loc18_++;
            _loc2_ = _loc14_;
         }
      }
      
      private function o11215(param1:MouseEvent) : void
      {
         var _loc2_:o5910 = param1.target as o5910;
         var _loc3_:o14096 = o11620[_loc2_.o7023];
         var _loc4_:o4117 = o4117.o18521(o14200.o19505,o14200.o19505.o7923);
         o4519.o10093.o16989.o18017(_loc3_,_loc4_,null,false);
      }
      
      private function o11492() : void
      {
         var _loc4_:int = 0;
         var _loc1_:* = null;
         var _loc3_:* = null;
         var _loc2_:* = null;
         _loc4_ = 0;
         while(_loc4_ < o192.length)
         {
            _loc1_ = o192[_loc4_];
            _loc1_.visible = false;
            _loc3_ = _loc1_.getChildByName("badge") as MovieClip;
            _loc2_ = _loc3_.getChildByName("level") as MovieClip;
            _loc2_.gotoAndStop(1);
            _loc4_++;
         }
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
         o1596 = null;
         o3541 = null;
         o192 = null;
         o9050 = null;
         o11620 = null;
         super.o13640();
      }
      
      private function o1124(param1:Boolean, param2:int, param3:String, param4:String, param5:int, param6:int, param7:int, param8:int) : void
      {
         var _loc18_:int = 0;
         var _loc10_:MovieClip = o192[param2];
         var _loc17_:TextField = _loc10_.getChildByName("lblRank") as TextField;
         var _loc9_:TextField = _loc10_.getChildByName("lblReward") as TextField;
         var _loc13_:TextField = _loc10_.getChildByName("lblReviveTokens") as TextField;
         var _loc16_:TextField = _loc10_.getChildByName("lblCashPacks") as TextField;
         var _loc14_:TextField = _loc10_.getChildByName("lblFullBoost") as TextField;
         var _loc12_:MovieClip = _loc10_.getChildByName("selectedBg") as MovieClip;
         _loc12_.visible = param1;
         if(param2 < 3)
         {
            _loc17_.text = "";
         }
         else
         {
            _loc17_.text = param3;
         }
         _loc9_.text = param4;
         _loc13_.text = param5 > 0?param5.toString():"";
         _loc16_.text = "";
         if(param6 > 0)
         {
            _loc18_ = o19419.o5292.o11857() * param6;
            _loc16_.text = param6.toString() + " pack" + (param6 == 1?"":"s") + "\n$" + o16724.o10417(_loc18_) + "";
         }
         _loc14_.text = param7 > 0?param7.toString():"";
         var _loc11_:MovieClip = _loc10_.getChildByName("badge") as MovieClip;
         var _loc15_:MovieClip = _loc11_.getChildByName("level") as MovieClip;
         _loc11_.visible = param8 != -1;
         _loc15_.visible = param8 != -1;
         _loc15_.gotoAndStop(param8 + 1);
         _loc10_.visible = true;
      }
      
      private function o14290(param1:int, param2:int, param3:int, param4:int, param5:int) : void
      {
         var _loc6_:o5910 = o3541[param1];
         var _loc7_:o14096 = o19419.o15894.o19318(param2);
         this.o11620[param1] = _loc7_;
         _loc7_.grade = param3;
         _loc7_.o17656.length = 0;
         _loc7_.o4680 = param4;
         o9050[param1].gotoAndStop(param5);
         _loc6_.o2752 = _loc7_;
         var _loc8_:o20006 = _loc7_.o8815(null);
         _loc8_.o6088 = _loc6_;
         _loc6_.o3700 = _loc8_;
         _loc6_.o1258();
         _loc6_.visible = true;
      }
   }
}
