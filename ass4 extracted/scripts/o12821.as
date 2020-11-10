package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class o12821 extends o9743
   {
       
      
      private var o18203:Vector.<o12290>;
      
      private var o9679:o20565;
      
      private var o16793:int;
      
      private var o13641:MovieClip;
      
      public function o12821()
      {
         super();
      }
      
      public function o16384(param1:MovieClip) : void
      {
         var _loc3_:int = 0;
         var _loc2_:* = null;
         super.init(param1);
         o9679 = new o20565(this);
         o18203 = new Vector.<o12290>();
         _loc3_ = 0;
         while(_loc3_ < 5)
         {
            _loc2_ = o9679.o15961("btnDebug" + _loc3_.toString(),"Level " + (_loc3_ + 1).toString(),container);
            _loc2_.visible = false;
            _loc2_.o7023 = _loc3_;
            _loc2_.addEventListener("click",o8126,false,0,true);
            o18203.push(_loc2_);
            _loc3_++;
         }
         param1.addEventListener("enterFrame",o6662,false,0,true);
      }
      
      private function o8126(param1:Event) : void
      {
      }
      
      override public function o13640() : void
      {
         o9679.o13640();
         var _loc3_:int = 0;
         var _loc2_:* = o18203;
         for each(var _loc1_ in o18203)
         {
            _loc1_.removeEventListener("click",o8126);
         }
         asset.removeEventListener("enterFrame",o6662);
         o18203 = null;
         o9679 = null;
         o13641 = null;
         super.o13640();
      }
      
      public function o6662(param1:Event) : void
      {
         if(o13641 != null)
         {
            o11692(o13641);
         }
      }
      
      public function o9848(param1:o6993, param2:int, param3:Boolean, param4:Function = null) : void
      {
         var _loc13_:int = 0;
         var _loc7_:int = 0;
         var _loc12_:int = 0;
         var _loc17_:* = null;
         var _loc9_:* = null;
         o16793 = param1.id;
         var _loc11_:o14200 = o4519.o8116.profileData;
         var _loc8_:o4609 = _loc11_.o5292.o20827;
         var _loc15_:int = _loc8_.o320(param2);
         var _loc14_:String = "";
         var _loc6_:String = "";
         var _loc5_:String = "";
         if(_loc15_ < _loc8_.o18156())
         {
            _loc13_ = 0;
            if(_loc15_ > 0)
            {
               _loc13_ = _loc8_.o4518(_loc15_);
            }
            _loc7_ = _loc8_.o4518(_loc15_ + 1);
            _loc5_ = "XP to next level: " + (param2 - _loc13_).toString() + " of " + (_loc7_ - _loc13_);
         }
         _loc14_ = param1.name + " Mastery";
         var _loc16_:TextField = container.getChildByName("lblXP") as TextField;
         _loc16_.text = _loc5_;
         var _loc10_:TextField = container.getChildByName("lblDesc") as TextField;
         _loc10_.text = _loc8_.o722(param1.o2409);
         var _loc18_:MovieClip = container.getChildByName("masteryIcon") as MovieClip;
         _loc18_.gotoAndStop(param1.id + 1);
         _loc12_ = 0;
         while(_loc12_ < _loc8_.o19041)
         {
            _loc17_ = container.getChildByName("lblInfo" + _loc12_.toString()) as TextField;
            _loc9_ = container.getChildByName("masteryLevel" + (_loc12_ + 1).toString()) as MovieClip;
            _loc9_.visible = _loc15_ == _loc12_ + 1;
            _loc9_.stop();
            _loc6_ = "";
            if(_loc15_ > _loc12_ + 1)
            {
               _loc6_ = _loc6_ + "<font color=\'#D90000\'>";
            }
            else if(_loc15_ == _loc12_ + 1)
            {
               _loc6_ = _loc6_ + "<font color=\'#FFFFFF\'>";
               if(param3)
               {
                  o13641 = _loc9_;
                  _loc9_.gotoAndPlay(1);
               }
            }
            else
            {
               _loc6_ = _loc6_ + "<font color=\'#666666\'>";
            }
            _loc17_.htmlText = _loc6_ + param1.o9938[_loc12_].o13404() + "</font>";
            _loc12_++;
         }
         super.o13483(_loc14_,_loc6_,param4,param4);
      }
   }
}
