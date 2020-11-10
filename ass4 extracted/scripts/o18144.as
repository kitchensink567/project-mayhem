package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import ui.EventPromoEventsBannerContainer;
   
   public class o18144 extends o9743
   {
       
      
      private var o16989:o13064;
      
      private var o7912:o978;
      
      private var o1533:o12885;
      
      private var o2359:Boolean = true;
      
      private var o14956:Vector.<o15104>;
      
      public var o10350:Boolean;
      
      private var o16622:String = null;
      
      public function o18144()
      {
         super();
      }
      
      private function o10508(param1:Date) : Number
      {
         var _loc4_:Number = param1.time;
         var _loc3_:Number = o4519.o8116.o15020.time;
         var _loc2_:Number = _loc4_ - _loc3_;
         if(_loc2_ < 0)
         {
            return 0;
         }
         return _loc2_;
      }
      
      private function o11218(param1:Date) : Number
      {
         var _loc4_:Number = param1.time;
         var _loc3_:Number = o4519.o8116.o15020.time;
         var _loc2_:Number = _loc3_ - _loc4_;
         if(_loc2_ < 0)
         {
            return 0;
         }
         return _loc2_;
      }
      
      private function o17432(param1:int, param2:Boolean) : int
      {
         var _loc7_:* = null;
         var _loc6_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:* = null;
         var _loc5_:int = 345600000;
         var _loc9_:o16062 = o4519.o8116.o476;
         var _loc3_:Vector.<o6882> = _loc9_.o14399;
         var _loc11_:int = 0;
         var _loc10_:* = _loc3_;
         for each(_loc7_ in _loc3_)
         {
            if(_loc7_.type == 5 && _loc7_.o4018 != null)
            {
               _loc6_ = o10508(_loc7_.o5897.end);
               if(_loc7_.o5897.o13779)
               {
                  _loc8_ = o11218(_loc7_.o5897.start);
                  if(param2 && _loc8_ <= _loc5_ || param2 == false && _loc8_ > _loc5_)
                  {
                     param1++;
                     _loc4_ = o14435(param1,3,_loc7_.o4018,_loc6_,null,_loc7_.o12665);
                     o14956.push(_loc4_);
                     if(_loc7_.o245 && _loc7_.o245 == "patch-notes")
                     {
                        _loc4_.addEventListener("click",o19877,false,0,true);
                     }
                     else if(_loc7_.o245 && _loc7_.o245 == "crafting-info")
                     {
                        _loc4_.addEventListener("click",o9403,false,0,true);
                     }
                     else if(_loc7_.o245 && _loc7_.o245 != "")
                     {
                        o16622 = _loc7_.o245;
                        _loc4_.addEventListener("click",o4405,false,0,true);
                     }
                  }
               }
            }
         }
         return param1;
      }
      
      private function o7301(param1:Event) : void
      {
         if(o7912 == null)
         {
            return;
         }
         this.o7912.o17192();
         this.close();
      }
      
      private function o12299(param1:Event) : void
      {
         if(o7912 == null)
         {
            return;
         }
         o7912.screen = 5;
         this.close();
      }
      
      private function o4405(param1:Event) : void
      {
         if(o16989 == null)
         {
            return;
         }
         §§push(navigateToURL(new URLRequest(o16622),"_blank"));
      }
      
      private function o19877(param1:Event) : void
      {
         if(o16989 == null)
         {
            return;
         }
         o16989.o4077();
         this.close();
      }
      
      private function o9403(param1:Event) : void
      {
         if(o16989 == null)
         {
            return;
         }
         o16989.o15563(o12256,"Go to Collections");
      }
      
      private function o12256() : void
      {
         if(o16989 == null)
         {
            return;
         }
         o16989.o9162();
         this.close();
      }
      
      private function o18119(param1:int, param2:int) : int
      {
         var _loc8_:* = null;
         var _loc6_:* = null;
         var _loc7_:Number = NaN;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc9_:o16062 = o4519.o8116.o476;
         var _loc3_:Vector.<o6882> = _loc9_.o14399;
         var _loc11_:int = 0;
         var _loc10_:* = _loc3_;
         for each(_loc8_ in _loc3_)
         {
            if(_loc8_.type == 4 && _loc8_.o4018 != null)
            {
               _loc6_ = _loc8_ as o12394;
               if(_loc6_.o19446 == param2)
               {
                  _loc7_ = o10508(_loc8_.o5897.end);
                  if(_loc8_.o5897.o13779)
                  {
                     param1++;
                     _loc4_ = o14435(param1,2,_loc8_.o4018,_loc7_,null,_loc8_.o12665);
                     o14956.push(_loc4_);
                     _loc4_.addEventListener("click",o7301,false,0,true);
                  }
               }
            }
            else if(_loc8_.type == 6 && _loc8_.o4018 != null)
            {
               _loc5_ = _loc8_ as o18422;
               if(_loc5_.o16273 == param2)
               {
                  _loc7_ = o10508(_loc8_.o5897.end);
                  if(_loc8_.o5897.o13779)
                  {
                     param1++;
                     _loc4_ = o14435(param1,2,_loc8_.o4018,_loc7_,null,_loc8_.o12665);
                     o14956.push(_loc4_);
                     _loc4_.addEventListener("click",o7301,false,0,true);
                  }
               }
            }
         }
         return param1;
      }
      
      public function o16384(param1:MovieClip, param2:o13064) : void
      {
         var _loc7_:* = null;
         var _loc19_:Number = NaN;
         var _loc5_:* = null;
         var _loc20_:* = null;
         var _loc14_:* = null;
         super.init(param1);
         this.o16989 = param2;
         var _loc6_:o6539 = param2.o7817;
         if(_loc6_ is o978)
         {
            this.o7912 = param2.o7817 as o978;
         }
         var _loc15_:MovieClip = container.getChildByName("content") as MovieClip;
         var _loc10_:MovieClip = container.getChildByName("contentMask") as MovieClip;
         var _loc12_:MovieClip = container.getChildByName("slider") as MovieClip;
         var _loc18_:MovieClip = container.getChildByName("track") as MovieClip;
         if(o2359 == false)
         {
            _loc10_.visible = false;
            _loc12_.visible = false;
            _loc18_.visible = false;
         }
         if(o2359)
         {
            param1.addEventListener("addedToStage",o343,false,0,true);
         }
         o14956 = new Vector.<o15104>();
         var _loc13_:o16062 = o4519.o8116.o476;
         var _loc16_:o14200 = o14200.o19505;
         var _loc9_:int = 0;
         var _loc17_:o5263 = _loc13_.o5215;
         var _loc4_:Vector.<o6882> = _loc13_.o14399;
         var _loc8_:Vector.<o14801> = _loc16_.o5292.o16679.o12738;
         _loc9_ = o17432(_loc9_,true);
         _loc9_ = o18119(_loc9_,725);
         _loc9_ = o18119(_loc9_,726);
         _loc9_ = o18119(_loc9_,727);
         _loc9_ = o18119(_loc9_,728);
         _loc9_ = o18119(_loc9_,729);
         _loc9_ = o18119(_loc9_,730);
         _loc9_ = o18119(_loc9_,748);
         _loc9_ = o18119(_loc9_,749);
         _loc9_ = o18119(_loc9_,750);
         _loc9_ = o18119(_loc9_,751);
         _loc9_ = o18119(_loc9_,752);
         _loc9_ = o18119(_loc9_,753);
         _loc9_ = o18119(_loc9_,756);
         _loc9_ = o18119(_loc9_,754);
         _loc9_ = o18119(_loc9_,755);
         _loc9_ = o18119(_loc9_,759);
         _loc9_ = o18119(_loc9_,758);
         _loc9_ = o18119(_loc9_,757);
         _loc9_ = o18119(_loc9_,760);
         _loc9_ = o18119(_loc9_,761);
         _loc9_ = o18119(_loc9_,763);
         _loc9_ = o18119(_loc9_,764);
         _loc9_ = o18119(_loc9_,762);
         _loc9_ = o18119(_loc9_,669);
         _loc9_ = o18119(_loc9_,609);
         var _loc22_:int = 0;
         var _loc21_:* = _loc8_;
         for each(_loc7_ in _loc8_)
         {
            if(_loc7_.o11392 is o14128)
            {
               _loc19_ = o10508(_loc7_.o11392.o5897.end);
               if(_loc7_.o11392.o5897.o13779)
               {
                  _loc9_++;
                  _loc5_ = o14435(_loc9_,(_loc7_.o11392 as o14128).o9854 == 5?4:1,_loc7_.o11392.o4018,_loc19_,null,_loc7_.o11392.o12665);
                  o14956.push(_loc5_);
                  _loc5_.addEventListener("click",o12299,false,0,true);
               }
            }
         }
         _loc9_ = o17432(_loc9_,false);
         o14956.sort(o3238);
         var _loc11_:int = 0;
         var _loc24_:int = 0;
         var _loc23_:* = o14956;
         for each(var _loc3_ in o14956)
         {
            _loc14_ = new EventPromoEventsBannerContainer();
            _loc14_.y = 16.3 + _loc11_ * 196.3;
            _loc15_.addChild(_loc14_);
            _loc3_.init(_loc14_);
            this.o5452(_loc3_);
            _loc11_++;
         }
         if(_loc9_ == 0)
         {
            o10350 = true;
         }
      }
      
      private function o3238(param1:o15104, param2:o15104) : int
      {
         return param1.o12665 < param2.o12665?1:-1;
      }
      
      private function o14435(param1:int, param2:int, param3:String, param4:Number, param5:String = null, param6:int = 0) : o15104
      {
         var _loc7_:MovieClip = container.getChildByName("content") as MovieClip;
         var _loc8_:o15104 = new o15104();
         _loc8_.o762(param2,param3,param4,param5,param6);
         return _loc8_;
      }
      
      private function o343(param1:Event) : void
      {
         var _loc2_:* = null;
         var _loc4_:MovieClip = container.getChildByName("contentMask") as MovieClip;
         var _loc5_:MovieClip = container.getChildByName("slider") as MovieClip;
         var _loc3_:MovieClip = container.getChildByName("track") as MovieClip;
         if(o2359)
         {
            _loc2_ = container.getChildByName("content") as MovieClip;
            o1533 = new o12885();
            o1533.init(_loc2_,_loc4_,_loc3_,_loc5_);
            asset.removeEventListener("addedToStage",o343);
         }
      }
      
      override public function o13640() : void
      {
         var _loc1_:* = null;
         var _loc3_:int = 0;
         var _loc2_:* = o14956;
         for each(_loc1_ in o14956)
         {
            switch(int(_loc1_.o5917) - 1)
            {
               case 0:
                  _loc1_.removeEventListener("click",o12299);
                  continue;
               case 1:
                  _loc1_.removeEventListener("click",o7301);
                  continue;
               case 2:
                  if(_loc1_.url.search("patch-notes") != -1)
                  {
                     _loc1_.removeEventListener("click",o19877);
                  }
                  else if(_loc1_.url.search("crafting-info") != -1)
                  {
                     _loc1_.removeEventListener("click",o9403);
                  }
                  else
                  {
                     _loc1_.removeEventListener("click",o4405);
                  }
                  continue;
            }
         }
         if(o2359)
         {
            o1533.o19115();
         }
         o16989 = null;
         o1533 = null;
         o14956 = null;
         super.o13640();
      }
   }
}
