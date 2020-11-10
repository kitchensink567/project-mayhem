package
{
   import flash.events.Event;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.setTimeout;
   
   public class o2144 extends o14519
   {
      
      private static var o12718:int = 0;
       
      
      public var o9721:int = -1;
      
      private var o6383:int = 4;
      
      private var o2092:int = 2;
      
      public var o20274:Boolean = true;
      
      public var o7459:Vector.<o17790>;
      
      public var o16035:Vector.<o17790>;
      
      public var o19772:Vector.<o126>;
      
      private var o9533:int = -1;
      
      private var o7175:ByteArray = null;
      
      private var o5539:ByteArray = null;
      
      private const o6551:int = 2;
      
      private const o20469:int = 3;
      
      private const o18152:int = 4;
      
      private const o13647:int = 5;
      
      private const o1090:int = 6;
      
      private const o951:int = 7;
      
      private const o16248:int = 8;
      
      private const o20346:int = 9;
      
      private const o12059:int = 10;
      
      private const o8079:int = 11;
      
      private const o13688:int = 12;
      
      private const o3310:int = 13;
      
      private const o5177:int = 14;
      
      private const o11667:int = 15;
      
      private var o4322:int = -1;
      
      private var o14349:Vector.<o7443>;
      
      public var o9983:Number;
      
      public var o19169:o15755 = null;
      
      public var o14470:Boolean = true;
      
      public var o7060:String;
      
      private var o19195:int = -1;
      
      private var o567:int = -1;
      
      private var o394:int = 0;
      
      public function o2144()
      {
         o7459 = new Vector.<o17790>();
         o16035 = new Vector.<o17790>();
         o19772 = new Vector.<o126>();
         o14349 = new Vector.<o7443>();
         o7060 = "";
         super();
         o8339("ROOM: " + o12718);
         o7060 = o12718.toString();
         o12718 = Number(o12718) + 1;
      }
      
      override public function o16955(param1:String, param2:int, param3:int, param4:int, param5:Vector.<int>, param6:int = 1) : void
      {
         o4353 = param1;
         o11025 = param2;
         o4326 = param3;
         o16114 = param4;
         o18098 = param5;
         level = param6;
         if(o2010)
         {
            return;
         }
         super.o16955(o4353,o11025,o4326,o16114,o18098,o4519.o8116.profileData.o7923.level);
         var o19505:o2144 = this;
         if(o4353 == null)
         {
            o4519.o8116.random.o10611 = Math.random() * 5000;
            o3861();
            start(time + 100);
         }
         o4519.o8116.o14443.o16280(this,o3348.o20630,function(param1:o10641):void
         {
            if(!o19352(param1.o20488))
            {
               return;
            }
            if(param1.o4385 != -1)
            {
               var _loc6_:int = 0;
               var _loc5_:* = o14349;
               for each(var _loc3_ in o14349)
               {
                  if(_loc3_.o5973 == param1.o20488.o5973 && _loc3_.o16728 == param1.o4385)
                  {
                     return;
                  }
               }
               var _loc8_:int = 0;
               var _loc7_:* = o16035;
               for each(var _loc2_ in o16035)
               {
                  if(_loc2_.o5973 == param1.o20488.o5973 && _loc2_.o4385 == param1.o4385)
                  {
                     return;
                  }
               }
            }
            var _loc4_:int = time;
            if(param1.o9112 && o4519.o13206.multiplayer)
            {
               _loc4_ = _loc4_ + 500;
            }
            if(!param1.o15752 && !o13303(param1.o20488))
            {
               if(param1.o4385 != -1)
               {
                  o16035.push(new o17790(_loc4_,param1.o20488.o5973,param1.o4385,param1.data));
               }
               return;
            }
            o19894([[1,5],[2,_loc4_],[2,param1.o20488.o5973],[2,param1.o4385],[5,param1.data]]);
            if(param1.o5081)
            {
               o5021(_loc4_,param1.o20488.o5973,param1.o4385,param1.data);
            }
         });
         o4519.o8116.o14443.o16280(o4519.o8116,o3348.o5373,function(param1:o1519):void
         {
            var _loc2_:* = null;
            var _loc6_:int = 0;
            var _loc5_:* = o7459;
            for each(var _loc4_ in o7459)
            {
               if(_loc4_.o5973 == param1.o20488.o5973)
               {
                  o5021(_loc4_.o20205,_loc4_.o5973,_loc4_.o4385,_loc4_.data);
                  o7459.splice(o7459.indexOf(_loc4_),1);
                  break;
               }
            }
            var _loc8_:int = 0;
            var _loc7_:* = o19772;
            for each(var _loc3_ in o19772)
            {
               if(_loc3_.to == param1.o20488.o5973)
               {
                  _loc2_ = o12038(_loc3_);
                  if(_loc2_ != null)
                  {
                     _loc2_.to.o5725(_loc2_.o5725);
                     _loc2_.o5725.o13640();
                     o19772.splice(o19772.indexOf(_loc3_),1);
                  }
               }
            }
         });
      }
      
      public function o4798() : void
      {
         var _loc2_:Object = o15711.o9268("com.ninjakiwi.sas4.scripts.extras.ChatRoomScript");
         var _loc3_:Class = _loc2_.o13465();
         o19169 = new _loc3_();
         var _loc1_:int = 999;
         o19169.o16955(_loc1_,new ByteArray());
         o19169.o5973 = _loc1_;
         o19169.name = "CHAT_ROOM";
         o4519.o8116.o14443.o5373(o19169);
      }
      
      override protected function o6110(param1:int) : void
      {
         super.o6110(param1);
         if(o9533 != -1 && o4519.o32 != null)
         {
            o4519.o32.o4632(o7146);
         }
      }
      
      public function o13303(param1:o6212) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         return param1.o10887 == id;
      }
      
      override protected function o16556(param1:int, param2:int) : void
      {
         var _loc5_:* = undefined;
         super.o16556(param1,param2);
         o4519.o8116.o2996.o750 = param2;
         o8339("Host changed to " + o10591[param2].name);
         var _loc9_:int = 0;
         var _loc8_:* = o4519.o8116.o14443.o4814;
         for each(var _loc3_ in o4519.o8116.o14443.o4814)
         {
            if(o19352(_loc3_) && _loc3_.o10887 == param1)
            {
               if(!(!_loc3_.o12086 && o10591[_loc3_.o10887] != null))
               {
                  _loc3_.o10887 = param2;
                  if(o6370)
                  {
                     _loc5_ = o16035.concat();
                     var _loc7_:int = 0;
                     var _loc6_:* = _loc5_;
                     for each(var _loc4_ in _loc5_)
                     {
                        if(_loc4_.o5973 == _loc3_.o5973)
                        {
                           o19894([[1,5],[2,_loc4_.o20205],[2,_loc4_.o5973],[2,_loc4_.o4385],[5,_loc4_.data]]);
                           o5021(_loc4_.o20205,_loc4_.o5973,_loc4_.o4385,_loc4_.data);
                        }
                     }
                     continue;
                  }
                  continue;
               }
               continue;
            }
         }
      }
      
      public function o13938(param1:Number) : void
      {
         if(isNaN(param1))
         {
            return;
         }
         var _loc2_:int = param1 * 100;
         if(_loc2_ == o19195)
         {
            return;
         }
         o19195 = _loc2_;
         o10591[id].o951 = param1;
         o15777(o9782.o11785);
         send([[1,-10],[1,_loc2_]]);
         o19894([[1,7],[1,id],[3,param1]]);
      }
      
      private function o5021(param1:int, param2:int, param3:int, param4:ByteArray) : void
      {
         time = param1;
         id = param2;
         o4385 = param3;
         data = param4;
         data.position = 0;
         var o20488:o6212 = o4519.o8116.o14443.o2929(id);
         if(o4385 != -1)
         {
            o14349.push(new o7443(id,o4385));
            var _loc7_:int = 0;
            var _loc6_:* = o16035;
            for each(o1903 in o16035)
            {
               if(o1903.o5973 == id && o1903.o4385 == o4385)
               {
                  o16035.splice(o16035.indexOf(o1903),1);
                  break;
               }
            }
         }
         if(o20488 == null)
         {
            o7459.push(new o17790(time,id,o4385,data));
            return;
         }
         if(time <= this.time)
         {
            if(!o20488.o8289())
            {
               o20488.o20630(this.time - time,data);
            }
         }
         else
         {
            o1051.o9310(this,(time - this.time) / 500,function():void
            {
               if(!o20488.o8289())
               {
                  o20488.o20630(0,data);
               }
            });
         }
      }
      
      override public function connect(param1:Event) : void
      {
         var _loc12_:int = 0;
         var _loc10_:int = 0;
         var _loc2_:int = 0;
         level = o4519.o8116.profileData.o7923.level;
         super.connect(param1);
         var _loc13_:String = o4519.o8116.profileData.o7923.o12110;
         if(o4519.o17061)
         {
            _loc13_ = o4519.kong.getKongUsername();
         }
         else if(o4519.o8116.profileData.o4539 != null)
         {
            _loc13_ = o4519.o8116.profileData.o4539.loginInfo.name;
         }
         var _loc11_:Vector.<o20401> = o18201();
         o5539 = new ByteArray();
         o5539.writeByte(_loc11_.length);
         var _loc19_:int = 0;
         var _loc18_:* = _loc11_;
         for each(var _loc7_ in _loc11_)
         {
            o5539.writeByte(_loc7_.type);
            o5539.writeShort(_loc7_.o11876);
            o5539.writeByte(_loc7_.grade);
            o5539.writeFloat(_loc7_.o15192);
            o5539.writeInt(_loc7_.o263);
            o5539.writeByte(_loc7_.o631);
            _loc12_ = 0;
            while(_loc12_ < _loc7_.o631)
            {
               o5539.writeShort(_loc7_.o4530(_loc12_));
               _loc12_++;
            }
            o5539.writeInt(_loc7_.o4752);
            o5539.writeBoolean(_loc7_.o1419);
         }
         var _loc8_:Dictionary = o6235();
         var _loc15_:int = o5773.o7903(_loc8_);
         o5539.writeByte(_loc15_);
         var _loc21_:int = 0;
         var _loc20_:* = _loc8_;
         for(var _loc3_ in _loc8_)
         {
            o5539.writeByte(_loc3_);
            o5539.writeByte(_loc8_[_loc3_]);
         }
         var _loc4_:o9145 = o4519.o8116.profileData.o7923;
         o5539.writeInt(_loc4_.o6470);
         o5539.writeInt(_loc4_.o12159);
         o5539.writeInt(_loc4_.o20831);
         o5539.writeInt(_loc4_.o2988);
         var _loc17_:Vector.<int> = new Vector.<int>();
         var _loc5_:o13467 = o4519.o8116.profileData.o202;
         var _loc23_:int = 0;
         var _loc22_:* = _loc5_.o11032;
         for each(var _loc14_ in _loc5_.o11032)
         {
            _loc17_.push(_loc14_.id);
         }
         o5539.writeByte(_loc17_.length);
         _loc10_ = 0;
         while(_loc10_ < _loc17_.length)
         {
            o5539.writeByte(_loc17_[_loc10_]);
            _loc10_++;
         }
         var _loc9_:int = o4519.o8116.profileData.o115();
         o5539.writeByte(_loc9_);
         var _loc16_:Vector.<int> = _loc4_.o13012.o6575();
         o5539.writeByte(_loc16_.length);
         _loc2_ = 0;
         while(_loc2_ < _loc16_.length)
         {
            o5539.writeByte(_loc16_[_loc2_]);
            _loc2_++;
         }
         o14200.o19505.data.o433.o20663(o5539);
         var _loc6_:o8443 = new o8443(this.id,o4519.o8116.profileData.o7923.o2274,_loc13_,o4519.o8116.profileData.o7923.level,_loc11_,_loc8_,_loc4_.o6470,_loc4_.o12159,_loc4_.o20831,_loc4_.o2988,_loc17_,_loc9_,0,_loc16_,o14200.o19505.data.o433);
         o4003 = _loc6_;
         send([[7,_loc13_],[1,o4519.o8116.profileData.o7923.o2274],[8,o5539]]);
      }
      
      override protected function o18811(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int) : void
      {
         o19195 = -1;
         if(o19169 != null)
         {
            o4519.o8116.o14443.o7609(o19169);
            o19169.o19115();
            o19169 = null;
         }
         if(param4 <= 0)
         {
            param4 = this.o9721;
            param6 = Math.random() * 1000;
         }
         super.o18811(param1,param2,param3,param4,param5,param6,param7);
         o4519.o8116.o2996.o750 = param1;
         o10792(param6);
         o13098(param4,param5);
         o13497(param7);
         if(o14470)
         {
            o4798();
         }
         o15777(o9782.o11785);
      }
      
      override protected function o10792(param1:int) : void
      {
         o4519.o8116.random.o10611 = param1;
      }
      
      override protected function o13497(param1:int) : void
      {
         if(param1 < 0)
         {
            return;
         }
         o9983 = param1 / 1000;
         o15777(o9782.o17372);
      }
      
      override public function o18352() : void
      {
         send([[1,-17]]);
      }
      
      override public function o8113(param1:int, param2:int) : void
      {
         send([[1,-14],[6,param1],[6,param2]]);
      }
      
      override protected function o13098(param1:int, param2:int) : void
      {
         o4519.o13206.o14068();
         this.o9721 = param1;
         this.o4326 = param2;
         o15777(o9782.o3851);
      }
      
      override public function o19115() : void
      {
         if(o8289())
         {
            return;
         }
         o7723();
         super.o19115();
         if(o19169 != null)
         {
            o4519.o8116.o14443.o7609(o19169);
            o19169.o19115();
            o19169 = null;
         }
         o9721 = 0;
         o6383 = 0;
         o2092 = 0;
         o20274 = true;
         o7459 = null;
         o19772 = null;
         o9533 = -1;
         o7175 = null;
         o5539 = null;
      }
      
      private function o18201() : Vector.<o20401>
      {
         var _loc4_:* = null;
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         var _loc3_:Vector.<o20401> = new Vector.<o20401>();
         var _loc7_:Vector.<o1253> = o4519.o8116.profileData.o7923.o420;
         var _loc13_:int = 0;
         var _loc12_:* = _loc7_;
         for each(var _loc6_ in _loc7_)
         {
            if(_loc6_ != null)
            {
               _loc4_ = new o20401();
               _loc4_.type = 1;
               _loc4_.o11876 = _loc6_.o15372;
               _loc4_.grade = _loc6_.grade;
               _loc4_.o15192 = _loc6_.o13296;
               _loc4_.o263 = _loc6_.o263;
               _loc4_.o4752 = 0;
               _loc4_.o1419 = _loc6_.o1419;
               _loc2_ = _loc6_.o4680;
               _loc1_ = 0;
               if(_loc6_.o17656.length > 0)
               {
                  _loc4_.o20140();
                  var _loc11_:int = 0;
                  var _loc10_:* = _loc6_.o17656;
                  for each(var _loc8_ in _loc6_.o17656)
                  {
                     _loc4_.o14893(_loc8_.o8265.id);
                     _loc1_++;
                  }
               }
               while(_loc1_ < _loc2_)
               {
                  _loc4_.o14893(-1);
                  _loc1_++;
               }
               _loc3_.push(_loc4_);
            }
         }
         var _loc9_:Vector.<o14096> = o4519.o8116.profileData.o7923.o7993;
         var _loc17_:int = 0;
         var _loc16_:* = _loc9_;
         for each(var _loc5_ in _loc9_)
         {
            if(_loc5_ != null)
            {
               _loc4_ = new o20401();
               _loc4_.type = 0;
               _loc4_.o11876 = _loc5_.o10748;
               _loc4_.grade = _loc5_.grade;
               _loc4_.o15192 = _loc5_.o13296;
               _loc4_.o263 = _loc5_.o263;
               _loc4_.o4752 = _loc5_.o4752;
               _loc4_.o1419 = _loc5_.o1419;
               _loc2_ = _loc5_.o4680;
               _loc1_ = 0;
               if(_loc5_.o17656.length > 0)
               {
                  _loc4_.o20140();
                  var _loc15_:int = 0;
                  var _loc14_:* = _loc5_.o17656;
                  for each(_loc8_ in _loc5_.o17656)
                  {
                     _loc4_.o14893(_loc8_.o8265.id);
                     _loc1_++;
                  }
               }
               while(_loc1_ < _loc2_)
               {
                  _loc4_.o14893(-1);
                  _loc1_++;
               }
               _loc3_.push(_loc4_);
            }
         }
         return _loc3_;
      }
      
      private function o19562(param1:int) : String
      {
         var _loc2_:String = null;
         switch(int(param1))
         {
            default:
               _loc2_ = "com.ninjakiwi.sas4.scripts.avatars.Assault";
               break;
            case 1:
               _loc2_ = "com.ninjakiwi.sas4.scripts.avatars.Medic";
               break;
            case 2:
               _loc2_ = "com.ninjakiwi.sas4.scripts.avatars.Heavy";
         }
         return _loc2_;
      }
      
      private function o6235() : Dictionary
      {
         var _loc1_:int = 0;
         var _loc2_:* = null;
         var _loc3_:Dictionary = new Dictionary();
         _loc1_ = 1;
         while(_loc1_ < 35)
         {
            _loc2_ = o4519.o8116.profileData.o7923.o11241(_loc1_);
            if(!(_loc2_ == null || _loc2_.level <= 0))
            {
               _loc3_[_loc1_] = _loc2_.level;
            }
            _loc1_++;
         }
         return _loc3_;
      }
      
      override public function o3861() : void
      {
         o394 = o4519.o8116.o4100.o2026;
         o4519.o13206.o19926(this,o16450.o8591,function(param1:Event = null):void
         {
            o1051.o19115(o567);
            o10591[id].o951 = 1;
            o15777(o9782.o11785);
            o19894([[1,7],[1,id],[3,1]]);
            send([[1,-15],[1,100]]);
         });
         o9533 = time;
         o4519.o13206.o19769 = 1000;
         var o19505:o2144 = this;
         var o236:Vector.<o8443> = new Vector.<o8443>();
         var _loc3_:int = 0;
         var _loc2_:* = o10591;
         for each(client in o10591)
         {
            o236.push(client);
         }
         o236 = o236.sort(function(param1:o8443, param2:o8443):int
         {
            if(param1.id < param2.id)
            {
               return -1;
            }
            return 1;
         });
         if(o236.length > 1)
         {
            o1051.o19268 = true;
         }
         else
         {
            o1051.o19268 = false;
         }
         var o7299:Boolean = false;
         var _loc5_:int = 0;
         var _loc4_:* = o236;
         for each(client in o236)
         {
            var o2269:Boolean = client.id == id;
            var o8774:String = o19562(client.o8774);
            var o7616:o3358 = null;
            if(o2269)
            {
               o7299 = true;
               o7616 = new o4693(o4519.o8116.stage,o4519.o8116.o18929);
            }
            else
            {
               o7616 = new o3358(null,o4519.o8116.o18929);
            }
            var o32:o17517 = o4519.o8116.o2996.o2998(o4519.o8116.o20291[o8774],[o7616,client.level],client.id) as o17517;
            o32.o12086 = false;
            o32.o10887 = client.id;
            o32.o5933(client.o4256,client.o2671,client.o17915);
            o4519.o8116.o5518.o8087(o9721).defer(function(param1:o8621):void
            {
               var _loc2_:o9884 = param1.o12584[o236.indexOf(client) % param1.o12584.length];
               o32.body.o8564(_loc2_.x,_loc2_.y);
               if(o32 is o17517 && o32.o5973 == o4519.o13206.o2685.id)
               {
                  o17517(o32).o15315(new o18509(_loc2_.x,_loc2_.y));
               }
            });
            if(o2269)
            {
               (o7616 as o4693).o18447 = o32;
               o4519.o32 = o32;
               o4519.o13206.o32 = o32;
               o4519.o13206.o15885 = o32;
            }
            o32.o12236(client.name);
         }
         if(o7299 == false)
         {
            throw new Error("Room: own avatar not found");
         }
         if(o4353 != null)
         {
            o1051.o4767(this,1,o13045,o1051.o4804);
            o1051.o4767(this,1,o9816,o1051.o4804);
         }
         o19505.o15777(o9782.o10719);
         o567 = o1051.o4767(this,0.5,o6638,o1051.o4804);
      }
      
      override public function o3517(param1:Event = null) : void
      {
         var _loc4_:* = undefined;
         var _loc2_:* = false;
         if(o4519.o13206.o9745)
         {
            _loc4_ = new Vector.<int>();
            var _loc6_:int = 0;
            var _loc5_:* = o10591;
            for(var _loc3_ in o10591)
            {
               if(_loc3_ != id)
               {
                  _loc4_.push(_loc3_);
               }
            }
            var _loc8_:int = 0;
            var _loc7_:* = _loc4_;
            for each(_loc3_ in _loc4_)
            {
               _loc2_ = _loc3_ == o750;
               o7943(_loc3_);
               if(_loc2_)
               {
                  o16556(_loc3_,id);
               }
            }
         }
         super.o3517(param1);
      }
      
      private function o6638() : void
      {
         var _loc1_:Number = o4519.o8116.o4100.o2026 - o394 + o4519.o8116.o4100.o12322;
         var _loc2_:Number = o4519.o8116.o4100.o2026 - o394;
         var _loc4_:Number = _loc2_ / _loc1_;
         o10591[id].o951 = _loc4_;
         o15777(o9782.o11785);
         var _loc3_:Number = _loc2_ / _loc1_;
         send([[1,-15],[1,_loc3_]]);
         o19894([[1,7],[1,id],[3,_loc4_]]);
      }
      
      override public function start(param1:int) : void
      {
         o12059 = param1;
         var o9533:int = Math.max(1,o12059 - time);
         setTimeout(function():void
         {
            if(!o5836)
            {
               o4519.o13206.o132();
               if(o7629() > 1)
               {
                  o4519.o8116.o4812.ui.o4676.play();
               }
            }
            else
            {
               o3517(null);
            }
         },o9533);
         if(o7629() > 1)
         {
            var o1678:int = o9533 - 1000;
            while(o1678 > 0)
            {
               setTimeout(function():void
               {
                  if(!o5836)
                  {
                     o4519.o8116.o4812.ui.o995.play();
                  }
               },o1678);
               o1678 = o1678 - 1000;
            }
         }
      }
      
      override protected function o12434(param1:o8443) : void
      {
         super.o12434(param1);
         o15777(o9782.o11785);
      }
      
      override protected function o7943(param1:int) : void
      {
         super.o7943(param1);
         var _loc3_:o17517 = o4519.o8116.o14443.o2929(param1) as o17517;
         if(_loc3_ != null)
         {
            o4519.o8116.o14443.o2929(param1).o19115();
         }
         var _loc5_:int = 0;
         var _loc4_:* = o4519.o8116.o14443.o4814;
         for each(var _loc2_ in o4519.o8116.o14443.o4814)
         {
            if(_loc2_.o10887 == param1)
            {
               _loc2_.o10887 = o750;
            }
         }
         o15777(o9782.o11785);
      }
      
      private function o13045() : void
      {
         var _loc4_:* = null;
         var _loc1_:* = null;
         var _loc8_:* = NaN;
         var _loc7_:Number = NaN;
         var _loc3_:* = null;
         var _loc5_:ByteArray = null;
         var _loc12_:int = 0;
         var _loc11_:* = o4519.o8116.o14443.o4814;
         for each(var _loc2_ in o4519.o8116.o14443.o4814)
         {
            if(!(!o19352(_loc2_) || _loc2_.o12086 || !_loc2_.o9153 || !o13303(_loc2_)))
            {
               _loc4_ = _loc2_ as o7848;
               if(!(_loc4_ == null || _loc4_.body == null))
               {
                  _loc1_ = o4519.o32;
                  _loc8_ = Number(Math.pow(_loc4_.body.position.x - o4519.o32.body.position.x,2) + Math.pow(_loc4_.body.position.y - o4519.o32.body.position.y,2));
                  var _loc10_:int = 0;
                  var _loc9_:* = o4519.o8116.o2996.o20698(o17517);
                  for each(var _loc6_ in o4519.o8116.o2996.o20698(o17517))
                  {
                     if(_loc6_ != o4519.o32)
                     {
                        _loc7_ = Math.pow(_loc4_.body.position.x - _loc6_.body.position.x,2) + Math.pow(_loc4_.body.position.y - _loc6_.body.position.y,2);
                        if(_loc7_ < _loc8_)
                        {
                           _loc1_ = _loc6_;
                           _loc8_ = _loc7_;
                        }
                     }
                  }
                  if(_loc2_.o10887 != _loc1_.o5973)
                  {
                     if(_loc5_ == null)
                     {
                        _loc5_ = new ByteArray();
                     }
                     _loc5_.writeInt(_loc2_.o5973);
                     _loc5_.writeByte(_loc1_.o5973);
                     _loc3_ = new ByteArray();
                     _loc2_.o18192(_loc3_);
                     _loc3_.position = 0;
                     _loc5_.writeShort(_loc3_.length);
                     _loc5_.writeBytes(_loc3_,_loc3_.position,_loc3_.length);
                     _loc2_.o10887 = _loc1_.o5973;
                  }
               }
            }
         }
         if(_loc5_ != null)
         {
            o19894([[1,9],[2,time],[5,_loc5_]],-2);
         }
      }
      
      private function o9816() : void
      {
         var _loc1_:ByteArray = o4519.o8116.o14443.o13078(id,o17517);
         o19894([[1,2],[2,time],[5,_loc1_]],-2,false);
      }
      
      public function o12081(param1:Vector.<int>) : void
      {
         var _loc2_:int = 0;
         var _loc3_:ByteArray = new ByteArray();
         _loc2_ = 0;
         while(_loc2_ < param1.length)
         {
            _loc3_.writeInt(param1[_loc2_]);
            _loc2_++;
         }
         o19894([[1,11],[2,id],[5,_loc3_]],-2,false);
      }
      
      public function o7803(param1:int, param2:int = -1, param3:String = null) : void
      {
         var _loc4_:ByteArray = new ByteArray();
         _loc4_.writeInt(param1);
         _loc4_.writeInt(param2);
         if(param3)
         {
            _loc4_.writeUTF(param3);
         }
         else
         {
            _loc4_.writeUTF("");
         }
         o19894([[1,12],[2,id],[5,_loc4_]],-2,false);
      }
      
      public function o2133(param1:int) : void
      {
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeInt(param1);
         o19894([[1,13],[2,id],[5,_loc2_]],-2,false);
      }
      
      public function o19352(param1:o6212) : Boolean
      {
         if(param1.o5973 < 0)
         {
            return false;
         }
         return true;
      }
      
      public function o5725(param1:o6270, param2:o4016) : void
      {
         if(param1.o8289())
         {
            return;
         }
         if(param1 is o17517 && o13303(param1) || !(param1 is o17517) && o13303(param2.o16334))
         {
            param1.o11022(param2);
            if(!param2.o2720)
            {
               return;
            }
            param2.amount = Math.floor(param2.amount);
            if(param2.amount <= 0)
            {
               return;
            }
            param1.o5725(param2);
            if(!o19352(param1))
            {
               return;
            }
            o19894([[1,6],[2,time],[2,param1 != null && o19352(param1)?param1.o5973:-1],[3,param2.amount],[1,param2.o3],[2,param2.o16334 != null && o19352(param2.o16334)?param2.o16334.o5973:-1],[2,param2.o7869 != null && o19352(param2.o7869)?param2.o7869.o5973:-1],[2,param2.o4835 != null && o19352(param2.o4835)?param2.o4835.o5973:-1],[3,param2.o1487],[3,param2.o20248],[3,param2.o9273],[3,param2.o4128],[4,param2.o9968],[4,param2.isCrit],[2,param2.o6522],[4,param2.o2344],[3,param2.o9486],[2,param2.o1783],[4,param2.o19367],[2,param2.o1783]]);
         }
      }
      
      public function o8105(param1:int, param2:String) : void
      {
         var _loc3_:Object = o19169;
         if(_loc3_ != null)
         {
            _loc3_.postMessage(param1,param2);
         }
      }
      
      public function o3742(param1:o11190, param2:o18848) : void
      {
         if(param1.o8289())
         {
            return;
         }
         if(o13303(param1))
         {
            param1.o2533(param2);
            if(!param2.o2720)
            {
               return;
            }
            param2.amount = Math.floor(param2.amount);
            param1.o3742(param2);
            o19894([[1,8],[2,time],[2,param1 != null && o19352(param1)?param1.o5973:-1],[3,param2.amount]]);
         }
      }
      
      public function o20009(param1:o6925, param2:o2940) : void
      {
         if(param1.o8289())
         {
            return;
         }
         if(o13303(param1))
         {
            if(param2.o2031 <= 0 || param2.o6355 <= 0)
            {
               return;
            }
            param1.o20009(param2);
            o19894([[1,14],[2,time],[2,param1 != null && o19352(param1)?param1.o5973:-1],[2,param2.o5092],[6,param2.o3079],[3,param2.o6355],[3,param2.o2031]]);
         }
      }
      
      public function o19378(param1:o6925, param2:o2940) : void
      {
         if(param1.o8289())
         {
            return;
         }
         if(o13303(param1))
         {
            param1.o19378(param2);
            o19894([[1,15],[2,time],[2,param1 != null && o19352(param1)?param1.o5973:-1],[2,param2.o5092]]);
         }
      }
      
      private function o12038(param1:o126) : o12375
      {
         if(o4519.o8116.o14443.o2929(param1.to) as o6270 == null)
         {
            return null;
         }
         var _loc2_:o4016 = o4016.o10062();
         _loc2_.amount = param1.amount;
         _loc2_.o3 = param1.o3;
         _loc2_.o16334 = param1.o16334 < 0?null:o4519.o8116.o14443.o2929(param1.o16334) as o7848;
         _loc2_.o7869 = param1.o7869 < 0?null:o4519.o8116.o14443.o2929(param1.o7869) as o7848;
         _loc2_.o4835 = param1.o4835 < 0?null:o4519.o8116.o14443.o2929(param1.o4835) as o7848;
         _loc2_.o1487 = param1.o1487;
         _loc2_.o20248 = param1.o20248;
         _loc2_.o9273 = param1.o9273;
         _loc2_.o4128 = param1.o4128;
         _loc2_.o9968 = param1.o9968;
         _loc2_.isCrit = param1.isCrit;
         _loc2_.o19367 = param1.o19367;
         _loc2_.o6522 = param1.o6522;
         _loc2_.o2344 = param1.o2344;
         _loc2_.o19367 = param1.o19367;
         _loc2_.o1783 = param1.o1783;
         return new o12375(o4519.o8116.o14443.o2929(param1.to) as o6270,_loc2_);
      }
      
      override protected function o4587(param1:ByteArray) : void
      {
         data = param1;
         super.o4587(data);
         data.position = 0;
         var o17659:int = data.readByte();
         switch(int(o17659) - 2)
         {
            case 0:
               o4519.o8116.o14443.o17491(data,this.time - data.readInt(),false);
               break;
            default:
               o4519.o8116.o14443.o17491(data,this.time - data.readInt(),false);
               break;
            case 2:
               var id:int = data.readByte();
               if(o7300.indexOf(id) != -1)
               {
                  return;
               }
               var name:String = data.readUTF();
               var o2274:int = data.readByte();
               var o8647:int = data.readShort();
               var o4256:Vector.<o20401> = new Vector.<o20401>();
               var o3729:int = data.readByte();
               var o1903:int = 0;
               while(o1903 < o3729)
               {
                  var o9135:o20401 = new o20401();
                  o9135.type = data.readByte();
                  o9135.o11876 = data.readShort();
                  o9135.grade = data.readByte();
                  o9135.o15192 = data.readFloat();
                  o9135.o263 = data.readInt();
                  var o631:int = data.readByte();
                  var o9577:int = 0;
                  while(o9577 < o631)
                  {
                     o9135.o14893(data.readShort());
                     o9577 = o9577 + 1;
                  }
                  o9135.o4752 = data.readInt();
                  o9135.o1419 = data.readBoolean();
                  o4256.push(o9135);
                  o1903 = o1903 + 1;
               }
               var o2671:Dictionary = new Dictionary();
               var o8811:int = data.readByte();
               o1903 = 0;
               while(o1903 < o8811)
               {
                  o2671[data.readByte()] = data.readByte();
                  o1903 = o1903 + 1;
               }
               o10591[id] = new o8443(id,o2274,name,o8647,o4256,o2671);
               o15777(o9782.o11785);
               break;
            case 3:
               var o20205:int = data.readInt();
               var o5973:int = data.readInt();
               var o4385:int = data.readInt();
               var o19906:ByteArray = new ByteArray();
               o19906.writeBytes(data,data.position);
               o5021(o20205,o5973,o4385,o19906);
               break;
            case 4:
               var o15394:int = data.readInt();
               var o18405:o126 = new o126();
               o18405.to = data.readInt();
               o18405.amount = data.readFloat();
               o18405.o3 = data.readByte();
               o18405.o16334 = data.readInt();
               o18405.o7869 = data.readInt();
               o18405.o4835 = data.readInt();
               o18405.o1487 = data.readFloat();
               o18405.o20248 = data.readFloat();
               o18405.o9273 = data.readFloat();
               o18405.o4128 = data.readFloat();
               o18405.o9968 = data.readBoolean();
               o18405.isCrit = data.readBoolean();
               o18405.o6522 = data.readInt();
               o18405.o2344 = data.readBoolean();
               o18405.o13451 = data.readShort();
               o18405.o9252 = data.readShort();
               o18405.o1783 = data.readInt();
               var o17310:o12375 = o12038(o18405);
               if(o17310 != null)
               {
                  o17310.to.o5725(o17310.o5725);
                  o17310.o5725.o13640();
               }
               else
               {
                  o19772.push(o18405);
               }
               break;
            case 5:
               id = data.readByte();
               var client:o8443 = o10591[id];
               if(client == null)
               {
                  return;
               }
               client.o951 = data.readFloat();
               o15777(o9782.o11785);
               break;
            case 6:
               var o7330:int = data.readInt();
               var o746:int = data.readInt();
               var to:o11190 = o4519.o8116.o14443.o2929(o746) as o11190;
               if(to != null)
               {
                  var o752:o18848 = new o18848();
                  o752.amount = data.readFloat();
                  to.o3742(o752);
                  break;
               }
               break;
            case 7:
               o20205 = data.readInt();
               while(data.bytesAvailable > 8)
               {
                  var o20488:o6212 = o4519.o8116.o14443.o2929(data.readInt());
                  var o1432:int = data.readByte();
                  var o7652:int = data.readShort();
                  if(o20488 != null)
                  {
                     o20488.o10887 = o1432;
                     o20488.o14232(data,o20205);
                  }
                  else
                  {
                     var o19409:ByteArray = new ByteArray();
                     data.readBytes(o19409,data.position,o7652);
                  }
               }
               break;
            case 8:
               setTimeout(function():void
               {
                  if(!o5836)
                  {
                     o4519.o13206.o132();
                  }
               },data.readInt() - time);
               break;
            case 9:
               id = data.readInt();
               var o11008:Vector.<int> = new Vector.<int>();
               while(data.bytesAvailable > 0)
               {
                  o11008.push(data.readInt());
               }
               if(o10591[id])
               {
                  o10591[id].o12081(o11008);
               }
               break;
            case 10:
               id = data.readInt();
               var o19189:int = data.readInt();
               var o19113:int = data.readInt();
               var o19778:String = data.readUTF();
               if(o10591[id] != null && id != o4519.o32.o5973)
               {
                  (o10591[id] as o8443).o19189 = o19189;
                  (o10591[id] as o8443).o19113 = o19113;
                  (o10591[id] as o8443).o19778 = o19778;
               }
               break;
            case 11:
               id = data.readInt();
               var value:int = data.readInt();
               if(o10591[id] != null && id != o4519.o32.o5973)
               {
                  (o10591[id] as o8443).o18448 = value;
               }
               break;
            case 12:
               var o9914:int = data.readInt();
               o746 = data.readInt();
               var o3057:o6925 = o4519.o8116.o14443.o2929(o746) as o6925;
               if(o3057 != null)
               {
                  var o12795:o2940 = new o2940();
                  o12795.o5092 = data.readInt();
                  o12795.o3079 = data.readShort();
                  o12795.o6355 = data.readFloat();
                  o12795.o2031 = data.readFloat();
                  o3057.o20009(o12795);
                  break;
               }
               break;
            case 13:
               o9914 = data.readInt();
               o746 = data.readInt();
               o3057 = o4519.o8116.o14443.o2929(o746) as o6925;
               if(o3057 != null)
               {
                  o12795 = new o2940();
                  o12795.o5092 = data.readInt();
                  o3057.o19378(o12795);
                  break;
               }
         }
      }
   }
}

import flash.utils.ByteArray;

class o17790
{
    
   
   private var o20205:int = 0;
   
   private var o5973:int = 0;
   
   private var data:ByteArray = null;
   
   private var o4385:int = -1;
   
   function o17790(param1:int, param2:int, param3:int, param4:ByteArray)
   {
      super();
      this.o20205 = param1;
      this.o5973 = param2;
      this.data = param4;
      this.o4385 = param3;
   }
}

class o12375
{
    
   
   private var to:o6270 = null;
   
   private var o5725:o4016 = null;
   
   function o12375(param1:o6270, param2:o4016)
   {
      super();
      this.to = param1;
      this.o5725 = param2;
   }
}

class o7443
{
    
   
   private var o5973:int = 0;
   
   private var o16728:int = 0;
   
   function o7443(param1:int, param2:int)
   {
      super();
      this.o5973 = param1;
      this.o16728 = param2;
   }
}
