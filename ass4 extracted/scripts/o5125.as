package
{
   import flash.display.MovieClip;
   
   public class o5125 extends o6539
   {
       
      
      private var o19689:o978;
      
      private var o10805:o20421;
      
      public function o5125()
      {
         super();
      }
      
      public function o16384(param1:MovieClip, param2:o978, param3:o13064) : void
      {
         var _loc4_:int = 0;
         var _loc8_:* = null;
         var _loc5_:int = 0;
         var _loc9_:int = 0;
         var _loc7_:* = null;
         super.init(param1);
         this.o19689 = param2;
         var _loc10_:o20565 = new o20565(this);
         var _loc11_:o15625 = _loc10_.o17578("part1Thera");
         var _loc6_:o15625 = _loc10_.o17578("part2Boreas");
         _loc4_ = 0;
         while(_loc4_ < 7)
         {
            _loc8_ = _loc11_.asset.getChildByName("multiplier" + _loc4_) as MovieClip;
            if(_loc8_)
            {
               _loc8_.visible = o4519.o8116.o476.o9392.o6848(o6613.o1474(_loc4_)) && o4519.o8116.o476.o9392.o905;
               _loc8_.gotoAndStop(0);
            }
            _loc4_++;
         }
         _loc5_ = 0;
         while(_loc5_ < 2)
         {
            _loc8_ = _loc6_.asset.getChildByName("multiplier" + _loc5_) as MovieClip;
            if(_loc8_)
            {
               _loc8_.visible = o4519.o8116.o476.o9392.o6848(o6613.o10998(_loc5_)) && o4519.o8116.o476.o9392.o905;
               _loc8_.gotoAndStop(0);
            }
            _loc5_++;
         }
         _loc9_ = 0;
         while(_loc9_ < 4)
         {
            _loc7_ = this.asset.getChildByName("multiplierPlanet" + _loc9_) as MovieClip;
            if(_loc7_)
            {
               _loc7_.visible = o2522(_loc9_) && o4519.o8116.o476.o9392.o905;
               _loc7_.gotoAndStop(0);
            }
            _loc9_++;
         }
         o10805 = _loc10_.o3538([_loc11_,_loc6_]);
         o10805.addEventListener(o5595.o16737,o4601,false,0,true);
         _loc10_.o13640();
         _loc10_ = null;
      }
      
      private function o2522(param1:int) : Boolean
      {
         var _loc2_:* = param1;
         switch(_loc2_)
         {
            case o6613.o15239:
               return o6613.o20688();
            case 1:
               return o6613.o19194();
            case 2:
               return o6613.o15024();
            case 3:
               return o6613.o2796();
            default:
               return false;
         }
      }
      
      private function o4601(param1:o11507) : void
      {
         var _loc2_:o14200 = o4519.o8116.profileData;
         _loc2_.o202.o18271 = param1.o6457;
         var _loc3_:Vector.<o2736> = _loc2_.o5292.o9177.o4014();
         var _loc4_:o2736 = _loc3_[param1.o6457];
         this.o19689.screen = 19;
      }
      
      override public function o13640() : void
      {
         o10805.removeEventListener(o5595.o16737,o4601);
         o10805 = null;
         o19689 = null;
         super.o13640();
      }
   }
}

class o6613
{
   
   public static const o15239:int = 0;
   
   public static const o20:int = 1;
   
   public static const o19583:int = 2;
   
   public static const o16718:int = 3;
   
   public static const o16494:int = 0;
   
   public static const o6062:int = 1;
   
   public static const o11770:int = 2;
   
   public static const o20553:int = 3;
   
   public static const o2588:int = 4;
   
   public static const o12296:int = 5;
   
   public static const o17118:int = 6;
   
   public static const o10331:int = 0;
   
   public static const o15576:int = 1;
    
   
   function o6613()
   {
      super();
   }
   
   public static function o20688() : Boolean
   {
      var _loc1_:Boolean = false;
      _loc1_ = o4519.o8116.o476.o9392.o6848(o15542.o10769);
      return _loc1_;
   }
   
   public static function o19194() : Boolean
   {
      if(o4519.o8116.o476.o9392.o905 == false)
      {
         return false;
      }
      var _loc1_:Boolean = false;
      _loc1_ = !!_loc1_?true:o4519.o8116.o476.o9392.o6848(o15542.o20553);
      _loc1_ = !!_loc1_?true:o4519.o8116.o476.o9392.o6848(o15542.o3747);
      _loc1_ = !!_loc1_?true:o4519.o8116.o476.o9392.o6848(o15542.o1275);
      _loc1_ = !!_loc1_?true:o4519.o8116.o476.o9392.o6848(o15542.o18508);
      _loc1_ = !!_loc1_?true:o4519.o8116.o476.o9392.o6848(o15542.o9356);
      return _loc1_;
   }
   
   public static function o15024() : Boolean
   {
      if(o4519.o8116.o476.o9392.o905 == false)
      {
         return false;
      }
      var _loc1_:Boolean = false;
      _loc1_ = !!_loc1_?true:o4519.o8116.o476.o9392.o6848(o15542.o5928);
      return _loc1_;
   }
   
   public static function o2796() : Boolean
   {
      if(o4519.o8116.o476.o9392.o905 == false)
      {
         return false;
      }
      var _loc1_:Boolean = false;
      _loc1_ = !!_loc1_?true:o4519.o8116.o476.o9392.o6848(o15542.o7243);
      _loc1_ = !!_loc1_?true:o4519.o8116.o476.o9392.o6848(o15542.o10263);
      return _loc1_;
   }
   
   public static function o1474(param1:int) : int
   {
      switch(int(param1))
      {
         case 0:
            return o15542.o10769;
         case 1:
            return o15542.o3747;
         case 2:
            return o15542.o18508;
         case 3:
            return o15542.o20553;
         case 4:
            return o15542.o9356;
         case 5:
            return o15542.o1275;
         case 6:
            return o15542.o5928;
      }
   }
   
   public static function o10998(param1:int) : int
   {
      switch(int(param1))
      {
         case 0:
            return o15542.o7243;
         case 1:
            return o15542.o10263;
      }
   }
}
