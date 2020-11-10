package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class o9602 extends o8023
   {
       
      
      public var o32:o17517 = null;
      
      public var multiplayer:Boolean = false;
      
      private var scale:Number = 1;
      
      private var o7263:Number = 1;
      
      public var o2685:o2144 = null;
      
      private var o1307:Boolean = false;
      
      private var o19640:int = -1;
      
      private var o137:int;
      
      public var o4326:int = 1;
      
      private var o16158:Boolean = true;
      
      public var o19155:Boolean = true;
      
      public var o17216:Boolean = true;
      
      private var o6707:Boolean = true;
      
      private var o5800:Boolean = false;
      
      public var o18739:Boolean = false;
      
      public var o4231:Boolean = false;
      
      private var o20680:int = 1000;
      
      public var o9745:Boolean = false;
      
      private var o3890:Boolean = false;
      
      public var o10802:Boolean = true;
      
      public var o14821:Boolean = false;
      
      private var o14508:Boolean = false;
      
      public var o16542:Boolean = true;
      
      public var o3625:Boolean = false;
      
      public var o6859:Boolean = false;
      
      public var o17723:Boolean = false;
      
      public var o12089:Boolean = false;
      
      public var o20582:Boolean = false;
      
      private var o3422:Dictionary;
      
      public var o17551:Boolean = false;
      
      public var o15890:Boolean = false;
      
      public var o14606:Boolean = false;
      
      public var o13771:Boolean = false;
      
      public var o2200:Boolean = false;
      
      public var o4732:Boolean = false;
      
      public var o7:Boolean = false;
      
      public var o15251:Boolean = false;
      
      public var o14417:String;
      
      public var o19357:int = 0;
      
      public var o7975:Boolean = false;
      
      public var o19170:Boolean = false;
      
      private var o19072:Boolean = false;
      
      private var o20633:Boolean = true;
      
      private var o10649:Dictionary;
      
      private var o1239:int = 0;
      
      private var o9020:Boolean = false;
      
      public var o8591:Boolean = false;
      
      private var o13753:o16124 = null;
      
      public var o19769:int = 1000;
      
      public var o9176:o15755;
      
      public var o15885:o7848 = null;
      
      public var o3145:Boolean = false;
      
      public var o15982:Number = 0;
      
      public var o17568:Boolean = false;
      
      public var o12068:Number = 0;
      
      public var o5360:Boolean = false;
      
      private var o6738:Vector.<o4399>;
      
      public function o9602()
      {
         o3422 = new Dictionary();
         o14417 = "Null";
         o10649 = new Dictionary();
         o6738 = new Vector.<o4399>();
         super();
         o3422[3] = "com.ninjakiwi.sas4.scripts.gameModes.AlphaVirusMode";
         o3422[4] = "com.ninjakiwi.sas4.scripts.gameModes.LastManStanding";
         o3422[5] = "com.ninjakiwi.sas4.scripts.gameModes.Apocalypse";
         o3422[7] = "com.ninjakiwi.sas4.scripts.gameModes.SampleCollection";
      }
      
      public static function o18645() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:Dictionary = new Dictionary();
         _loc3_[o14818] = 1;
         var _loc6_:int = 0;
         var _loc5_:* = o4519.o8116.o11461.o9620;
         for(var _loc4_ in o4519.o8116.o11461.o9620)
         {
            _loc2_ = o4519.o8116.o11461.o9620[_loc4_];
            _loc1_ = o4519.o8116.o20291[_loc2_];
            _loc3_[_loc1_] = 10 + _loc4_;
         }
         o4519.o8116.o14443 = new o7276(_loc3_);
         o4519.o8116.o2996.o14443 = o4519.o8116.o14443;
      }
      
      public function get o248() : Boolean
      {
         if(o16542 == false)
         {
            return false;
         }
         return o10802;
      }
      
      public function set o248(param1:Boolean) : void
      {
         o10802 = param1;
      }
      
      public function o11054() : void
      {
         o14508 = true;
      }
      
      public function o7563() : void
      {
         o10802 = true;
         o14821 = false;
         o16542 = true;
         o3625 = false;
         o6859 = false;
         o17723 = false;
         o12089 = false;
         o17551 = false;
         o15890 = false;
         o13771 = false;
         o2200 = false;
         o4732 = false;
         o7 = false;
         o7975 = false;
         o15251 = false;
         o14417 = "Null";
         o19357 = 0;
         o4231 = false;
         o20582 = false;
         o14606 = false;
         o19170 = false;
         o7141.o14574 = false;
         if(o14200.o19505.o7923)
         {
            o14200.o19505.o7923.o10005 = 0;
         }
         o6743.o15986 = false;
      }
      
      public function get o2034() : Boolean
      {
         return o16158;
      }
      
      public function set o2034(param1:Boolean) : void
      {
         o16158 = param1;
         if(o4519.o32.o7616 != null)
         {
            (o4519.o32.o7616 as o4693).o6127();
         }
      }
      
      public function get o17442() : Boolean
      {
         return o6707;
      }
      
      public function set o17442(param1:Boolean) : void
      {
         o6707 = param1;
         if(o4519.o32.o7616 != null)
         {
            (o4519.o32.o7616 as o4693).enabled = param1;
         }
      }
      
      public function o9033() : void
      {
         if(o4519.o32.o7616 != null)
         {
            (o4519.o32.o7616 as o4693).o13356();
         }
      }
      
      public function initialise(param1:int, param2:Boolean, param3:o2144, param4:int) : o16124
      {
         o12387 = param1;
         multiplayer = param2;
         o2685 = param3;
         o4326 = param4;
         this.o4326 = o4326;
         o5800 = false;
         o18739 = false;
         o9020 = false;
         o8591 = false;
         o1239 = 0;
         o20633 = true;
         o14508 = false;
         o4519.o8116.o6895.o4448 = 0;
         o4793();
         o5836 = false;
         o137 = o12387;
         var promise:o16124 = new o16124();
         this.multiplayer = multiplayer;
         this.o2685 = o2685;
         o4519.o13206.o14606 = false;
         o11381.reset();
         o3047.reset();
         o14882.o12128.splice(0,4294967295);
         o13502.reset();
         o4519.o8116.o5518.o8087(o12387).defer(function(param1:o8621):void
         {
            o11722 = param1;
            var o9721:o14818 = new o14818();
            o4519.o9721 = o9721;
            o9721.o19926(null,o12927.o5422,function():void
            {
               o4519.o8116.stage.addEventListener("keyDown",function(param1:KeyboardEvent):void
               {
               });
               o4519.o8116.stage.addEventListener("keyUp",function(param1:KeyboardEvent):void
               {
               });
               o4519.o8116.stage.addEventListener("mouseWheel",o2902);
               o2641(o9721,promise);
            });
            o9721.initialise(o11722);
            o10016();
         });
         var o19505:o9602 = this;
         if(o20633)
         {
            o17517.o10763.o16280(o19505,o2777.o3964,o8907);
            o17517.o10763.o16280(o19505,o2777.o16969,o14717);
            o17517.o10763.o16280(o19505,o2777.o7613,o14717);
            o17517.o10763.o16280(o19505,o2777.o9110,o1588);
         }
         return promise;
      }
      
      private function o8907(param1:Event = null) : void
      {
         o19072 = o587();
         if(o19072)
         {
            o15777(o16450.o19072);
            o15777(o16450.o4468);
            var _loc4_:int = 0;
            var _loc3_:* = o4519.o8116.o2996.o20698(o17517);
            for each(var _loc2_ in o4519.o8116.o2996.o20698(o17517))
            {
               _loc2_.o16901();
            }
         }
      }
      
      public function set o7306(param1:Boolean) : void
      {
         if(o20633 == param1)
         {
            return;
         }
         o17517.o10763.o12657(o2777.o3964,o8907);
         o17517.o10763.o12657(o2777.o16969,o14717);
         o17517.o10763.o12657(o2777.o7613,o14717);
         o17517.o10763.o12657(o2777.o9110,o1588);
         o20633 = param1;
         if(o20633)
         {
            o17517.o10763.o16280(this,o2777.o3964,o8907);
            o17517.o10763.o16280(this,o2777.o16969,o14717);
            o17517.o10763.o16280(this,o2777.o7613,o14717);
            o17517.o10763.o16280(this,o2777.o9110,o1588);
         }
      }
      
      public function get o7306() : Boolean
      {
         return o20633;
      }
      
      private function o14717(param1:Event = null) : void
      {
         if(o19072)
         {
            o19072 = false;
            o15777(o16450.o4042);
            o15777(o16450.o5485);
         }
         var _loc4_:int = 0;
         var _loc3_:* = o4519.o8116.o2996.o20698(o17517);
         for each(var _loc2_ in o4519.o8116.o2996.o20698(o17517))
         {
            _loc2_.o1085();
            _loc2_.o9652 = false;
         }
      }
      
      private function o1588(param1:Event = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc5_:int = 0;
         var _loc4_:* = o4519.o8116.o2996.o20698(o17517);
         for each(var _loc3_ in o4519.o8116.o2996.o20698(o17517))
         {
            if(!_loc3_.o9652)
            {
               _loc2_ = false;
               break;
            }
         }
         if(_loc2_)
         {
            if(this.o2685 && (this.o2685.o4326 == 3 || this.o2685.o4326 == 5 || this.o2685.o4326 == 7 || this.o2685.o4326 == 4))
            {
               o14994();
            }
            else
            {
               o17799();
            }
         }
      }
      
      public function getTime() : Number
      {
         return o1051.getTimer(o19640).current / 1000;
      }
      
      public function o9185(param1:o12600, param2:Number, param3:Function) : int
      {
         return o1051.o9310(param1,param2 - getTime(),param3);
      }
      
      public function o16469() : void
      {
         o15777(o16450.o9745);
      }
      
      public function o4509(param1:int) : void
      {
         o12387 = param1;
         o4519.o8116.o5518.o8087(o12387).defer(function(param1:o8621):void
         {
            o11722 = param1;
            var o9721:o14818 = new o14818();
            o9721.o19926(null,o12927.o5422,function():void
            {
               o2641(o9721,new o16124(),true);
            });
            o9721.initialise(o11722,false);
         });
      }
      
      public function o14068() : void
      {
         o4519.o8116.clear();
      }
      
      public function o3861(param1:String) : void
      {
         id = param1;
         if(id == null || o10649[id])
         {
            return;
         }
         o10649[id] = true;
         var o20863:o16124 = o4519.o8116.o1234.o11690(id);
         o20863.defer(function(param1:Class):void
         {
            var _loc3_:int = 0;
            var _loc2_:* = 0;
            var _loc4_:MovieClip = new param1();
            o5773.o9980(_loc4_);
            o5773.o9481(_loc4_);
            _loc3_ = 0;
            while(_loc3_ < _loc4_.totalFrames)
            {
               o1239 = Number(o1239) + 1;
               _loc2_ = uint(o4519.o8116.o20828.o13252(id,_loc3_ + 1));
               _loc3_++;
            }
         });
      }
      
      private function o20507(param1:Event = null) : void
      {
         o1239 = Number(o1239) - 1;
         if((o1239 <= 0 || !o4519.o8116.o20828.o11623()) && o9020)
         {
            o8339("Cache done");
            o8591 = true;
            o4519.o8116.o20828.o12657(0,o20507);
            o4519.o9721.o2311();
            o15777(o16450.o8591);
         }
      }
      
      public function o2641(param1:o14818, param2:o16124, param3:Boolean = false) : void
      {
         o1239 = 0;
         o4519.o8116.o20828.o16280(this,0,o20507);
         this.o13753 = param2;
         var _loc5_:Vector.<String> = Vector.<String>(param1.o3690);
         if(!param3)
         {
            o20096(param1);
            var _loc8_:int = 0;
            var _loc7_:* = o4519.o8116.o20291;
            for each(var _loc6_ in o4519.o8116.o20291)
            {
               if(_loc6_.hasOwnProperty("getGlobalCacheAssets"))
               {
                  _loc5_ = _loc5_.concat(_loc6_.getGlobalCacheAssets());
               }
            }
         }
         var _loc10_:int = 0;
         var _loc9_:* = _loc5_;
         for each(var _loc4_ in _loc5_)
         {
            if(!o14508)
            {
               o3861(_loc4_);
               continue;
            }
            break;
         }
         o9020 = true;
      }
      
      public function o132(param1:Event = null) : void
      {
         o7367 = param1;
         if(o2685.o7629() != 1 || o2685.o7629() == 1 && o1239 <= 0)
         {
            if(o19640 != -1)
            {
               o1051.o19115(o19640);
               o19640 = -1;
            }
            o19640 = o1051.o9310(o4519.o8116.o2996,999999,function():void
            {
            });
            o13753.data = this;
            o9745 = true;
            o15777(o16450.o11970);
         }
         else
         {
            o19926(this,o16450.o8591,o132);
         }
      }
      
      public function o1802(param1:int) : int
      {
         var _loc2_:int = o19769;
         o19769 = o19769 + param1;
         return _loc2_;
      }
      
      public function o19304(param1:Number, param2:Number) : o3047
      {
         var _loc4_:o3047 = new o3047();
         _loc4_.o10887 = o2685.o750;
         o19769 = Number(o19769) + 1;
         _loc4_.o5973 = Number(o19769);
         _loc4_.position.x = param1;
         _loc4_.position.y = param2;
         o19769 = Number(o19769) + 1;
         var _loc3_:int = Number(o19769);
         o19769 = o19769 + 10000000;
         _loc4_.o949(_loc3_);
         o4519.o8116.o14443.o5373(_loc4_);
         return _loc4_;
      }
      
      private function o20096(param1:o14818) : void
      {
         var _loc10_:int = 0;
         var _loc12_:* = null;
         var _loc2_:* = null;
         var _loc19_:* = undefined;
         var _loc5_:int = 0;
         var _loc22_:* = null;
         var _loc24_:* = null;
         var _loc7_:* = null;
         var _loc23_:int = 0;
         var _loc14_:Boolean = false;
         var _loc8_:* = null;
         var _loc21_:* = undefined;
         var _loc20_:* = null;
         var _loc13_:int = 0;
         var _loc15_:* = null;
         var _loc4_:* = null;
         var _loc16_:* = null;
         var _loc9_:* = null;
         var _loc6_:Vector.<String> = new Vector.<String>();
         _loc10_ = 0;
         while(_loc10_ < param1.o4670.o7642.length)
         {
            _loc12_ = param1.o4670.o7642[_loc10_];
            _loc2_ = o4519.o8116.o20291[o4519.o8116.o11461.o9009(_loc12_.o14765)];
            _loc19_ = new _loc2_();
            _loc19_.o10887 = o2685.o750;
            o19769 = Number(o19769) + 1;
            _loc19_.o5973 = Number(o19769);
            _loc19_.position.x = _loc12_.x;
            _loc19_.position.y = _loc12_.y;
            _loc12_.o19964.position = 0;
            o19769 = Number(o19769) + 1;
            _loc5_ = Number(o19769);
            o19769 = o19769 + 10000000;
            _loc19_.o16955(_loc5_,_loc12_.o19964);
            param1.o5649(_loc19_);
            _loc21_ = _loc19_.getCacheAssets();
            if(_loc21_ != null)
            {
               _loc6_ = _loc6_.concat(_loc21_);
            }
            _loc10_++;
         }
         _loc10_ = 0;
         while(_loc10_ < param1.o4670.o19585.length)
         {
            _loc22_ = param1.o4670.o19585[_loc10_];
            _loc24_ = o4519.o8116.o20291[o4519.o8116.o11461.o9009(_loc22_.o14765)];
            if(_loc24_.hasOwnProperty("getCacheAssets"))
            {
               _loc6_ = _loc6_.concat(_loc24_.getCacheAssets());
            }
            if(new _loc24_() is o7848)
            {
               _loc7_ = o4519.o8116.o20291[o4519.o8116.o11461.o9009(_loc22_.o14765)];
               _loc23_ = -1;
               _loc14_ = false;
               if(_loc7_.hasOwnProperty("networked"))
               {
                  _loc14_ = _loc7_.networked;
               }
               else
               {
                  _loc14_ = true;
               }
               if(_loc14_)
               {
                  o19769 = Number(o19769) + 1;
                  _loc23_ = Number(o19769);
               }
               _loc22_.o19964.position = 0;
               _loc8_ = o4519.o8116.o2996.o2998(_loc7_,[_loc22_.o19964],_loc23_);
               if(_loc8_ is o6743 && _loc8_.body != null)
               {
                  _loc8_.body.o8564(_loc22_.x,_loc22_.y);
               }
               _loc21_ = _loc8_.getCacheAssets();
               if(_loc21_ != null)
               {
                  _loc6_ = _loc6_.concat(_loc21_);
               }
            }
            else if(new _loc24_() is o15755)
            {
               _loc20_ = new _loc24_();
               _loc22_.o19964.position = 0;
               o19769 = Number(o19769) + 1;
               _loc13_ = Number(o19769);
               _loc20_.o10887 = o2685.o750;
               _loc20_.o16955(_loc13_,_loc22_.o19964);
               o19769 = Number(o19769) + 1;
               _loc20_.o5973 = Number(o19769);
               param1.o5649(_loc20_);
               _loc21_ = _loc20_.getCacheAssets();
               if(_loc21_ != null)
               {
                  _loc6_ = _loc6_.concat(_loc21_);
               }
            }
            _loc10_++;
         }
         o10176.init();
         var _loc18_:Array = o10176.o15062(o14789);
         var _loc26_:int = 0;
         var _loc25_:* = _loc18_;
         for each(var _loc17_ in _loc18_)
         {
            _loc15_ = _loc17_[0];
            _loc4_ = o17439.o12681[_loc17_[0]];
            _loc16_ = o4519.o8116.o20291[o17439.o12681[_loc17_[0]]];
            if(_loc16_ == null)
            {
               throw new Error("enemy class not found? " + _loc4_);
            }
            if(_loc16_.hasOwnProperty("getGradeCacheAssets"))
            {
               _loc6_ = _loc6_.concat(_loc16_.getGradeCacheAssets(_loc17_[1],_loc17_[2]));
            }
         }
         var _loc28_:int = 0;
         var _loc27_:* = o4519.o8116.o2996.o20698(o17517);
         for each(var _loc11_ in o4519.o8116.o2996.o20698(o17517))
         {
            _loc21_ = _loc11_.getCacheAssets();
            if(_loc21_ != null)
            {
               _loc6_ = _loc6_.concat(_loc21_);
            }
         }
         var _loc30_:int = 0;
         var _loc29_:* = _loc6_;
         for each(var _loc3_ in _loc6_)
         {
            if(!o14508)
            {
               o3861(_loc3_);
               continue;
            }
            break;
         }
         if(o3422[o4326] != null)
         {
            _loc9_ = o15711.o9268(o3422[o4326]);
            _loc24_ = _loc9_.o13465();
            o9176 = new _loc24_();
            o19769 = Number(o19769) + 1;
            _loc13_ = Number(o19769);
            o9176.o16955(_loc13_,new ByteArray());
            o19769 = Number(o19769) + 1;
            o9176.o5973 = Number(o19769);
            o9176.name = "ModeScript";
            param1.o5649(o9176);
         }
      }
      
      public function o4793() : void
      {
         if(o4519.o8116.profileData.o202.o20274 || o4519.o8116.profileData.o202.o10211 == false)
         {
            o4519.o8116.o2535.o16923 = false;
            o1051.o4793();
         }
         o15777(o16450.o4793);
      }
      
      public function o12392() : void
      {
         if(o5800)
         {
            return;
         }
         if(o4519.o8116.profileData.o202.o20274 || o4519.o8116.profileData.o202.o10211 == false)
         {
            o4519.o8116.o2535.o16923 = true;
            o1051.o12392();
         }
         o15777(o16450.o12392);
      }
      
      private function o2902(param1:MouseEvent) : void
      {
         if(!o1307)
         {
            return;
         }
         o7263 = o7263 + param1.delta * 0.02;
         if(o7263 > 2)
         {
            o7263 = 2;
         }
         else if(o7263 < 0.1)
         {
            o7263 = 0.1;
         }
      }
      
      public function o16821(param1:Number, param2:Number = -1) : o4399
      {
         var _loc3_:o4399 = new o4399(param1,param2);
         o6738.push(_loc3_);
         return _loc3_;
      }
      
      public function o754(param1:o4399) : void
      {
         var _loc2_:int = o6738.indexOf(param1);
         if(_loc2_ != -1)
         {
            o6738.splice(_loc2_,1);
         }
      }
      
      public function o8858(param1:Event) : void
      {
         var _loc2_:* = NaN;
         var _loc7_:int = 0;
         var _loc3_:* = null;
         var _loc6_:* = null;
         scale = scale + (o7263 - scale) / 4;
         o4519.o8116.o18929.width = o4519.o8116.stage.stageWidth / scale;
         o4519.o8116.o18929.height = o4519.o8116.stage.stageHeight / scale;
         var _loc5_:* = 0;
         var _loc4_:* = 0;
         if(o15885 != null)
         {
            _loc5_ = Number(o15885.body.position.x - o4519.o8116.o18929.width / 2);
            _loc4_ = Number(o15885.body.position.y - o4519.o8116.o18929.height / 2);
         }
         if(o3145)
         {
            _loc5_ = Number(o15982 - o4519.o8116.o18929.width / 2);
         }
         if(o17568)
         {
            _loc4_ = Number(o12068 - o4519.o8116.o18929.height / 2);
         }
         if(o5360)
         {
            o4519.o8116.o18929.x = o4519.o8116.o18929.x + (_loc5_ - o4519.o8116.o18929.x) / 8;
            o4519.o8116.o18929.y = o4519.o8116.o18929.y + (_loc4_ - o4519.o8116.o18929.y) / 8;
         }
         else
         {
            o4519.o8116.o18929.x = _loc5_;
            o4519.o8116.o18929.y = _loc4_;
         }
         if(o4519.o8116.o9690 == true && o6738.length > 0 && o4519.o8116.o2535.o16923)
         {
            _loc2_ = 0;
            _loc7_ = 0;
            while(_loc7_ < o6738.length)
            {
               _loc3_ = o6738[_loc7_];
               _loc3_.o15565 = _loc3_.o15565 + 0.0333333333333333;
               if(_loc3_.o15565 >= _loc3_.length && _loc3_.length != -1)
               {
                  o6738.splice(_loc7_,1);
                  _loc7_--;
               }
               else
               {
                  _loc2_ = Number(_loc2_ + o6738[_loc7_].o15771);
               }
               _loc7_++;
            }
            _loc6_ = o15460.o4078;
            _loc6_.x = _loc2_ * (Math.random() * 2 - 1);
            _loc6_.y = _loc2_ * (Math.random() * 2 - 1);
            o4519.o8116.o18929.x = o4519.o8116.o18929.x + _loc6_.x;
            o4519.o8116.o18929.y = o4519.o8116.o18929.y + _loc6_.y;
         }
         o4519.o8116.o11954.o14352(o4519.o8116.o18929.x,o4519.o8116.o18929.y,o4519.o8116.o18929.width,o4519.o8116.o18929.height);
         o4519.o8116.o20828.o12004 = scale;
      }
      
      public function o8891() : int
      {
         var _loc1_:Array = o4519.o8116.o2996.o20698(o17517);
         var _loc3_:* = 0;
         var _loc5_:int = 0;
         var _loc4_:* = _loc1_;
         for each(var _loc2_ in _loc1_)
         {
            _loc3_ = Number(_loc3_ + _loc2_.level);
         }
         return _loc3_ / _loc1_.length;
      }
      
      private function o17923() : void
      {
         var _loc2_:o14200 = o4519.o8116.profileData;
         var _loc3_:o9145 = _loc2_.o7923;
         var _loc4_:o17517 = o4519.o32;
         var _loc1_:int = _loc3_.o20734();
         if(_loc4_.o7211 > _loc1_)
         {
            _loc4_.o7211 = _loc1_;
         }
      }
      
      public function o15342(param1:Number) : void
      {
         var _loc6_:* = null;
         var _loc7_:Number = NaN;
         var _loc5_:* = NaN;
         var _loc4_:Number = NaN;
         var _loc3_:o13467 = o4519.o8116.profileData.o202;
         var _loc2_:Array = o4519.o8116.o2996.o20698(o17517);
         var _loc9_:int = 5;
         var _loc8_:int = 0;
         var _loc12_:int = 0;
         var _loc11_:* = _loc2_;
         for each(_loc6_ in _loc2_)
         {
            if(!_loc3_.o20769(_loc6_))
            {
               _loc8_ = _loc8_ + (_loc6_.level + _loc9_);
            }
         }
         var _loc10_:* = 0;
         var _loc14_:int = 0;
         var _loc13_:* = _loc2_;
         for each(_loc6_ in _loc2_)
         {
            if(!_loc3_.o20769(_loc6_))
            {
               _loc7_ = (_loc6_.level + _loc9_) / _loc8_ * param1;
               _loc6_.o7211 = _loc6_.o7211 + _loc7_;
               _loc10_ = Number(_loc10_ + _loc7_);
            }
         }
         if(false && "" == "paul")
         {
            _loc5_ = 1;
            _loc4_ = Math.abs(_loc10_ - param1);
            if(_loc4_ > _loc5_)
            {
               throw new Error("Error distributing xp. xp: " + param1.toString() + " sum xp:" + _loc10_.toString());
            }
         }
      }
      
      public function o14994() : void
      {
         var _loc3_:* = null;
         var _loc2_:* = null;
         if(o18739)
         {
            return;
         }
         o18739 = true;
         var _loc1_:o14818 = o4519.o9721;
         if(o4519.o9721.o8917 == null)
         {
            throw new Error("level info not found?");
         }
         if(o2685.o4326 == 1 || o2685.o4326 == 2)
         {
            o10523();
         }
         o32.o17861 = o32.o17861 + o8631(o32.o7211 * o4519.o8116.profileData.o5292.o5193);
         o32.o1203 = o32.o7211;
         o32.o18641 = o32.o11281;
         if(o14200.o19505 && o14200.o19505.o7923.o13308 > 0)
         {
            if(o4519.o8116.o476.o9095.o2596 > 0 && o4519.o8116.o476.o9095.o2596 <= 10)
            {
               if(o4519.o8116.o476.o9392.o20722(o2685.o9721) < 1 && o4519.o8116.o476.o9392.o20722(o2685.o9721) > 0)
               {
                  o32.o7211 = o32.o7211 * o4519.o8116.o476.o9392.o20722(o2685.o9721);
                  o32.o7560 = (o32.o7211 * o4519.o8116.o476.o9095.o2596 - o32.o7211) * o4519.o8116.o476.o9392.o20722(o2685.o9721);
                  o32.o7211 = o32.o7211 * o4519.o8116.o476.o9095.o2596;
               }
               else
               {
                  _loc3_ = new o15787(o4519.o8116.o476.o9392.o20722(o2685.o9721) == 1?0:o4519.o8116.o476.o9392.o20722(o2685.o9721));
                  o32.o7560 = o32.o7211 * (o4519.o8116.o476.o9095.o2596 + _loc3_.value) - o32.o7211;
                  o32.o7211 = o32.o7211 * (o4519.o8116.o476.o9095.o2596 + _loc3_.value);
               }
            }
            if(o4519.o8116.o476.o9095.o979 > 0 && o4519.o8116.o476.o9095.o979 <= 10)
            {
               if(o4519.o8116.o476.o9392.o15487(o2685.o9721) < 1 && o4519.o8116.o476.o9392.o15487(o2685.o9721) > 0)
               {
                  o32.o17861 = o32.o17861 * o4519.o8116.o476.o9392.o15487(o2685.o9721);
                  o32.o18641 = o32.o11281 * o4519.o8116.o476.o9392.o15487(o2685.o9721);
                  o32.o15973 = (o32.o18641 * o4519.o8116.o476.o9095.o979 - o32.o18641) * o4519.o8116.o476.o9392.o15487(o2685.o9721);
               }
               else
               {
                  _loc2_ = new o15787(o4519.o8116.o476.o9392.o15487(o2685.o9721) == 1?0:o4519.o8116.o476.o9392.o15487(o2685.o9721));
                  o32.o15973 = o32.o18641 * (o4519.o8116.o476.o9095.o979 + _loc2_.value) - o32.o18641;
               }
            }
            if(o4519.o8116.o476.o9392.o16959(o2685.o9721) > 0)
            {
               o14200.o19505.o7923.o10005 = Math.ceil(o14200.o19505.o7923.o10005 * o4519.o8116.o476.o9392.o16959(o2685.o9721));
            }
         }
         else
         {
            if(o4519.o8116.o476.o9392.o20722(o2685.o9721) > 1)
            {
               o32.o7560 = o32.o7211 * o4519.o8116.o476.o9392.o20722(o2685.o9721) - o32.o7211;
               o32.o7211 = o32.o7211 * o4519.o8116.o476.o9392.o20722(o2685.o9721);
            }
            else if(o4519.o8116.o476.o9392.o20722(o2685.o9721) > 0 && o4519.o8116.o476.o9392.o20722(o2685.o9721) < 1)
            {
               o32.o7211 = o32.o7211 * o4519.o8116.o476.o9392.o20722(o2685.o9721);
               o32.o7560 = (o32.o7211 * o4519.o8116.o476.o9095.o2596 - o32.o7211) * o4519.o8116.o476.o9392.o20722(o2685.o9721);
               o32.o7211 = o32.o7211 * o4519.o8116.o476.o9095.o2596;
            }
            if(o4519.o8116.o476.o9392.o15487(o2685.o9721) > 1)
            {
               o32.o15973 = o32.o18641 * o4519.o8116.o476.o9392.o15487(o2685.o9721) - o32.o18641;
            }
            else if(o4519.o8116.o476.o9392.o15487(o2685.o9721) > 0 && o4519.o8116.o476.o9392.o15487(o2685.o9721) < 1)
            {
               o32.o17861 = o32.o17861 * o4519.o8116.o476.o9392.o15487(o2685.o9721);
               o32.o18641 = o32.o11281 * o4519.o8116.o476.o9392.o15487(o2685.o9721);
               o32.o15973 = (o32.o18641 * o4519.o8116.o476.o9392.o15487(o2685.o9721) - o32.o18641) * o4519.o8116.o476.o9392.o15487(o2685.o9721);
            }
            if(o4519.o8116.o476.o9392.o16959(o2685.o9721) > 0)
            {
               o14200.o19505.o7923.o10005 = Math.ceil(o14200.o19505.o7923.o10005 * o4519.o8116.o476.o9392.o16959(o2685.o9721));
            }
         }
         o4519.o32.o18959();
         o15777(o16450.o14994);
      }
      
      private function o8631(param1:int) : int
      {
         var _loc2_:* = null;
         var _loc5_:* = undefined;
         var _loc4_:int = o32.o6122(6);
         if(_loc4_ > 0)
         {
            _loc2_ = o4519.o8116.o6055.o11241(6);
            _loc5_ = _loc2_.o5395(_loc4_);
            param1 = _loc5_[0].apply(param1);
            var _loc7_:int = 0;
            var _loc6_:* = _loc5_;
            for each(var _loc3_ in _loc5_)
            {
               _loc3_.o19115();
            }
            _loc5_ = null;
         }
         return param1;
      }
      
      private function o10523() : void
      {
         var _loc1_:Number = 350 + 100 * o4519.o32.level;
         o32.o17861 = o32.o17861 + o8631(_loc1_);
      }
      
      public function o17799() : void
      {
         if(o18739)
         {
            return;
         }
         o18739 = true;
         var _loc1_:* = 0.333333333333333;
         o32.o7211 = o32.o7211 * _loc1_;
         o17923();
         o32.o17861 = o32.o17861 + o8631(o32.o7211 * o4519.o8116.profileData.o5292.o5193);
         o4519.o32.o18959();
         o15777(o16450.o17799);
      }
      
      public function o8765() : void
      {
         if(o18739)
         {
            return;
         }
         o18739 = true;
         var _loc1_:* = 0.333333333333333;
         o32.o7211 = o32.o7211 * _loc1_;
         o17923();
         o32.o17861 = o32.o17861 + o8631(o32.o7211 * o4519.o8116.profileData.o5292.o5193);
         o4519.o32.o18959();
         o15777(o16450.o18198);
      }
      
      public function o7914() : void
      {
         var _loc1_:* = null;
         if(o9745)
         {
            _loc1_ = o4519.o8116.o8756;
            _loc1_.o2564();
            if(_loc1_.o5186 != null)
            {
               _loc1_.o5186.o5611();
            }
            _loc1_.o733();
            _loc1_.o9641();
            o8339("stopping audio");
            if(o3890)
            {
               o6489();
            }
            else
            {
               o17951();
            }
         }
      }
      
      override public function o19115() : void
      {
         o7563();
         o9745 = false;
         o4519.o8116.stage.removeEventListener("mouseWheel",o2902);
         o4519.o8116.stage.removeEventListener("enterFrame",o8858);
         if(o4519.o9721 != null)
         {
            o4519.o9721.o19115();
         }
         o10176.o9745 = false;
         if(o32 != null)
         {
            this.o17442 = true;
            this.o2034 = true;
            this.o19155 = true;
            this.o17216 = true;
         }
         super.o19115();
         o6104.clear();
         o4519.o8116.clear();
         o19640 = -1;
         o3145 = false;
         o17568 = false;
         o5360 = false;
         o6738.splice(0,4294967295);
         o10649 = new Dictionary();
         o19769 = 1000;
         o17541.clear();
         if(o2685)
         {
            o2685.o19115();
         }
         o2685 = null;
      }
      
      public function o10016() : void
      {
         var _loc1_:o7304 = o4519.o8116.o8756;
         if(_loc1_.o5186 != null)
         {
            _loc1_.o5186.o5611();
            _loc1_.o733();
         }
         var _loc2_:o3355 = _loc1_.o18374(o14789);
         o18738();
         _loc1_.o13375(o14789);
         if(_loc2_ == null)
         {
            return;
         }
         _loc2_.play(_loc1_.o12040,0,0,true);
      }
      
      public function get o14789() : int
      {
         return o137;
      }
      
      private function o18738() : void
      {
         o16280(this,o16450.o14994,o13105);
         o16280(this,o16450.o17799,o18127);
         o16280(this,o16450.o18198,o1018);
      }
      
      private function o12188() : void
      {
         o12657(o16450.o14994,o13105);
         o12657(o16450.o17799,o18127);
         o12657(o16450.o18198,o1018);
      }
      
      private function o18127(param1:Event) : void
      {
         o3890 = false;
      }
      
      private function o1018(param1:Event) : void
      {
         o3890 = false;
      }
      
      private function o13105(param1:Event) : void
      {
         o3890 = true;
      }
      
      public function o16704() : void
      {
         var _loc1_:o7304 = o4519.o8116.o8756;
         _loc1_.o2564();
         _loc1_.o5186.o5611();
         _loc1_.o733();
         _loc1_.o9641();
         o12188();
         o3890 = false;
      }
      
      private function o17951() : void
      {
         var _loc1_:o7304 = o4519.o8116.o8756;
         if(o4519.o8116.profileData.o1317.o9671)
         {
            _loc1_.o456.play(0.4,0,0,false);
         }
         o12188();
         o3890 = false;
      }
      
      private function o6489() : void
      {
         var _loc1_:o7304 = o4519.o8116.o8756;
         if(o4519.o8116.profileData.o1317.o9671)
         {
            _loc1_.o2783.play(0.55,0,0,false);
         }
         o12188();
         o3890 = false;
      }
      
      public function o20481() : void
      {
         o5800 = true;
         o4519.o8116.o2535.o16923 = false;
         o1051.o4793();
      }
      
      public function o587() : Boolean
      {
         var _loc1_:Array = o4519.o8116.o2996.o20698(o17517);
         var _loc4_:int = 0;
         var _loc3_:* = _loc1_;
         for each(var _loc2_ in _loc1_)
         {
            if(!_loc2_.o7694)
            {
               return false;
            }
         }
         return true;
      }
   }
}
