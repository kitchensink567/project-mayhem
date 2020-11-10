package
{
   import com.ninjakiwi.gateway.nk.NKGatewayUser;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.SharedObject;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class o6701 extends EventDispatcher
   {
      
      public static const o7641:String = "saveStart";
      
      public static const o1025:String = "saveComplete";
      
      public static const o19715:String = "saveError";
      
      private static const o6608:int = 20;
      
      private static const o16937:int = 3;
       
      
      private var o12895:SharedObject;
      
      private var o15748:NKGatewayUser;
      
      private var o4685:int;
      
      private var o15416:Function;
      
      private var o14008:Boolean = false;
      
      private var o9873:Boolean = false;
      
      public var o12015:String;
      
      public var o18278:o15621;
      
      public var o2719:o921;
      
      private var o5514:String;
      
      private var o18126:Boolean = false;
      
      public var o17406:Vector.<String>;
      
      public var o353:Vector.<String>;
      
      private var o19112:SharedObject;
      
      private var o12828:int;
      
      private var o14316:o16124;
      
      public function o6701(param1:String, param2:Function, param3:int, param4:String)
      {
         o17406 = new Vector.<String>();
         o353 = new Vector.<String>();
         super();
         o20193();
         o4685 = param3;
         o12895 = SharedObject.getLocal(param1);
         o18278 = o15621.o2610();
         o5514 = param4;
         o2719 = new o921();
      }
      
      public function get o12485() : String
      {
         if(isGuest)
         {
            return null;
         }
         if(o4519.o17061)
         {
            return o4539.loginInfo.name;
         }
         return o4539.loginInfo.id;
      }
      
      public function get o14996() : String
      {
         if(isGuest)
         {
            return "Guest";
         }
         if(o4519.o17061)
         {
            return o4519.kong.getKongUsername();
         }
         return o4539.loginInfo.name;
      }
      
      private function o18259() : void
      {
         o19112 = SharedObject.getLocal("sas4Session","/");
      }
      
      private function o8474() : void
      {
         o19112.flush();
         o19112 = null;
      }
      
      private function o20193() : void
      {
         o12828 = Math.random() * 2147483647;
         o18259();
         o19112.data["sessionId"] = o12828;
         o8474();
      }
      
      private function o7532() : Number
      {
         o18259();
         var _loc1_:int = o19112.data["sessionId"];
         o8474();
         return _loc1_;
      }
      
      public function o5701() : Boolean
      {
         return o12828 == o7532();
      }
      
      public function o8371() : void
      {
         if(o18126 == false)
         {
            o2719.init(o5514);
            o18126 = true;
         }
      }
      
      public function get o2584() : int
      {
         if(o4519.o17061)
         {
            return 10000;
         }
         if(o15748 != null)
         {
            return o15748.coins;
         }
         return 0;
      }
      
      public function get isGuest() : Boolean
      {
         return o15748 == null;
      }
      
      public function o16445() : void
      {
         this.save({});
         o12895.clear();
         o12895.flush();
      }
      
      public function o662() : void
      {
         o12895.clear();
         o12895.flush();
      }
      
      public function o6216() : Object
      {
         if(isGuest)
         {
            if(o7590 == null)
            {
               return {};
            }
            return o1817.o5114(o7590);
         }
         if(o620 == null)
         {
            return {};
         }
         return o1817.o5114(o620);
      }
      
      private function get o620() : String
      {
         return o15748.saveData.stuff as String;
      }
      
      private function set o620(param1:String) : void
      {
         o15748.saveData.stuff = param1;
      }
      
      private function get o7590() : String
      {
         var _loc1_:String = o12895.data["sas4"] as String;
         return _loc1_;
      }
      
      private function set o7590(param1:String) : void
      {
         o12895.data["sas4"] = param1;
      }
      
      public function save(param1:Object) : o16124
      {
         var _loc4_:* = null;
         if(o14008)
         {
            o9873 = true;
            return o14316;
         }
         var _loc2_:o16124 = new o16124();
         o14316 = _loc2_;
         if(this.isGuest == false)
         {
            o14008 = true;
         }
         var _loc3_:String = o1817.o18607(param1);
         if(isGuest)
         {
            o7590 = _loc3_;
            o12895.flush();
            _loc2_.data = true;
         }
         else
         {
            _loc4_ = new o8374(this,_loc2_);
            o15748.saveData.stuff = _loc3_;
            o15748.save().then(_loc4_.o13815,_loc4_.o2077);
         }
         return _loc2_;
      }
      
      public function o13925() : void
      {
         o14008 = false;
         o14316 = null;
         if(o9873)
         {
            o9873 = false;
            o4519.o8116.profileData.saveData();
         }
      }
      
      public function o2599(param1:Object) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         o14316 = null;
         o14008 = false;
         o9873 = false;
         var _loc2_:Event = new Event(o19715);
         try
         {
            _loc3_ = param1["code"];
            _loc4_ = param1["description"];
            if(_loc3_ == null || _loc4_ == null)
            {
               _loc3_ = param1["error"];
               _loc4_ = param1["message"];
            }
            o12015 = String(_loc3_) + "\n" + String(_loc4_);
         }
         catch(o12826:Error)
         {
            o12015 = "Unknown error";
         }
         this.dispatchEvent(_loc2_);
      }
      
      public function get o4539() : NKGatewayUser
      {
         return o15748;
      }
      
      public function o1700(param1:o13064) : void
      {
         this.o18278.o16989 = param1;
      }
      
      private function o17813(param1:Object) : Vector.<String>
      {
         var _loc2_:Vector.<String> = new Vector.<String>();
         var _loc5_:int = 0;
         var _loc4_:* = param1;
         for each(var _loc3_ in param1)
         {
            _loc2_.push(_loc3_["username"]);
         }
         return _loc2_;
      }
      
      private function o18466(param1:Event) : void
      {
         var _loc2_:String = param1.target["data"];
         var _loc3_:Object = JSON.parse(_loc2_);
         o17406 = o17813(_loc3_);
      }
      
      private function o10341(param1:Event) : void
      {
         var _loc2_:String = param1.target["data"];
         var _loc3_:Object = JSON.parse(_loc2_);
         o353 = o17813(_loc3_);
      }
      
      public function o1720(param1:String) : Boolean
      {
         return o17406.indexOf(param1) >= 0;
      }
      
      public function o14265(param1:String) : Boolean
      {
         return o353.indexOf(param1) >= 0;
      }
      
      private function o786(param1:Event) : void
      {
      }
      
      public function o14986(param1:NKGatewayUser) : o16124
      {
         var _loc5_:* = null;
         var _loc4_:* = null;
         var _loc10_:* = null;
         var _loc9_:* = null;
         var _loc3_:* = null;
         var _loc7_:* = null;
         var _loc8_:o16124 = o18278.o14655(param1,o4519.o8116.profileData);
         var _loc2_:Boolean = o15748 == null && param1 != null;
         var _loc6_:Boolean = o15748 != null && param1 == null;
         o15748 = param1;
         o17406 = new Vector.<String>();
         o353 = new Vector.<String>();
         if(o15748 != null && o4519.o17061 == false)
         {
            _loc5_ = o12485;
            _loc4_ = new URLLoader();
            _loc4_.addEventListener("complete",o18466);
            _loc4_.addEventListener("ioError",o786);
            _loc10_ = o2555.o17203("ninjakiwi.com");
            _loc4_.load(new URLRequest(_loc10_ + "/api/v1/users/" + _loc5_ + "/friends.json"));
            _loc9_ = new URLLoader();
            _loc9_.addEventListener("complete",o10341);
            _loc9_.addEventListener("ioError",o786);
            _loc9_.load(new URLRequest(_loc10_ + "/api/v1/users/" + _loc5_ + "/following.json"));
         }
         if(_loc2_)
         {
            o8339("NKUserHelper::nkUser 2");
            try
            {
               if(o620 == null)
               {
                  o8339("NKUserHelper::nkUser 3 save");
                  if(this.o7590 == null)
                  {
                     _loc3_ = {};
                  }
                  else
                  {
                     _loc3_ = o1817.o5114(o7590);
                  }
                  this.save(_loc3_).defer(o6219);
                  _loc7_ = _loc3_[221];
                  o2719.o13151(_loc7_);
               }
               o8339("NKUserHelper::nkUser 4");
            }
            catch(o19631:Error)
            {
               o8339("NKUserHelper::nkUser guest transfer error. Nk bar override");
               throw o19631;
            }
         }
         else
         {
            o8339("NKUserHelper::nkUser 5");
         }
         return _loc8_;
      }
      
      private function o6219(param1:Boolean) : void
      {
         if(param1 == false)
         {
            return;
         }
         o12895.clear();
         o12895.flush();
      }
      
      public function setAchievement(param1:int, param2:Number) : void
      {
         if(o15748 == null)
         {
            return;
         }
         var _loc3_:int = param2 * 100;
         if(_loc3_ == 0)
         {
            return;
         }
         if(o4519.o17061 == false)
         {
            o15748.setAchievement(param1,_loc3_);
         }
      }
      
      public function o7692(param1:int, param2:Number) : void
      {
         if(o15748 == null)
         {
            return;
         }
         if(o4519.o8116.profileData.o20616 || o4519.o17061)
         {
            return;
         }
         if(param2 > 0)
         {
            o15748.submitScore(param2,param1);
         }
      }
      
      private function o15053(param1:int, param2:int) : Number
      {
         if(param1 >= param2)
         {
            return 1;
         }
         return param1 / param2;
      }
      
      private function o20929(param1:o14200) : Number
      {
         var _loc8_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         var _loc4_:* = 0;
         var _loc7_:* = 0;
         var _loc10_:int = 0;
         var _loc9_:* = param1.data.o11400;
         for each(var _loc6_ in param1.data.o11400)
         {
            if(_loc6_ != null)
            {
               if(_loc8_ == false && _loc6_.o2274 == 1)
               {
                  _loc8_ = true;
                  _loc2_ = Number(o15053(_loc6_.level,10));
               }
               else if(_loc6_.o2274 == 0)
               {
                  _loc3_ = true;
                  _loc4_ = Number(o15053(_loc6_.level,10));
               }
               else if(_loc6_.o2274 == 2)
               {
                  _loc5_ = true;
                  _loc7_ = Number(o15053(_loc6_.level,10));
               }
            }
         }
         return (_loc2_ + _loc4_ + _loc7_) / 3;
      }
      
      private function o19957(param1:o14200) : Number
      {
         var _loc2_:* = 0;
         var _loc5_:int = 0;
         var _loc4_:* = param1.data.o11400;
         for each(var _loc3_ in param1.data.o11400)
         {
            if(_loc3_ != null)
            {
               if(_loc3_.level >= 20)
               {
                  _loc2_++;
               }
            }
         }
         return _loc2_ / 3;
      }
      
      private function o15614(param1:o14200, param2:int, param3:int, param4:int) : void
      {
         var _loc5_:int = param1.o11453.o15743(param3);
         setAchievement(param2,o15053(_loc5_,param4));
      }
      
      private function o13990(param1:o14200) : void
      {
         var _loc4_:* = undefined;
         var _loc2_:Dictionary = param1.o11453.o19018();
         var _loc5_:Dictionary = param1.o11453.o13297();
         var _loc11_:Dictionary = param1.o11453.o2237();
         var _loc9_:int = 0;
         var _loc6_:int = 0;
         var _loc15_:int = 0;
         var _loc14_:* = _loc2_;
         for(var _loc7_ in _loc2_)
         {
            _loc4_ = _loc2_[_loc7_];
            var _loc13_:int = 0;
            var _loc12_:* = _loc4_;
            for each(var _loc8_ in _loc4_)
            {
               _loc9_++;
               if(_loc8_ > 0)
               {
                  _loc6_++;
               }
            }
         }
         var _loc17_:int = 0;
         var _loc16_:* = _loc5_;
         for each(var _loc10_ in _loc5_)
         {
            _loc9_++;
            if(_loc10_ > 0)
            {
               _loc6_++;
            }
         }
         var _loc19_:int = 0;
         var _loc18_:* = _loc11_;
         for each(var _loc3_ in _loc11_)
         {
            _loc9_++;
            if(_loc3_ > 0)
            {
               _loc6_++;
            }
         }
         setAchievement(396,o15053(_loc6_,_loc9_));
      }
      
      private function o6841(param1:o14200) : void
      {
         setAchievement(408,o15053(param1.o11453.o9935(),1000000));
      }
      
      public function o19856(param1:o14200) : void
      {
         var _loc2_:o16819 = param1.o11453;
         setAchievement(375,o15053(_loc2_.o11285 + _loc2_.o10488,5000));
      }
      
      private function o19124(param1:o14200) : void
      {
         var _loc2_:* = null;
         var _loc5_:int = 0;
         var _loc6_:Array = [o15542.o10769,o15542.o18508,o15542.o3747,o15542.o1275,o15542.o5928,o15542.o9356,o15542.o20553];
         var _loc4_:String = "updateYouHaveNoSecretsAchievement: ";
         var _loc8_:int = 0;
         var _loc7_:* = _loc6_;
         for each(var _loc3_ in _loc6_)
         {
            _loc2_ = param1.o11453.o4635(_loc3_);
            if(_loc2_ != null && _loc2_.o10318)
            {
               _loc5_++;
               _loc4_ = _loc4_ + _loc2_.o18800;
            }
         }
         setAchievement(395,o15053(_loc5_,_loc6_.length));
      }
      
      private function o7451(param1:o14200, param2:int) : void
      {
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc3_:o4733 = param1.o11453.o4635(param2);
         var _loc5_:int = _loc3_.o8293 + _loc3_.o18433;
         var _loc4_:int = o15542.o1265(param2);
         if(_loc4_ > 0)
         {
            _loc6_ = param1.o11453.o4635(_loc4_);
            if(_loc6_ != null)
            {
               _loc5_ = _loc5_ + (_loc6_.o8293 + _loc6_.o18433);
            }
         }
         var _loc8_:int = o15542.o9291(param2);
         if(_loc8_ > 0)
         {
            _loc7_ = param1.o11453.o4635(_loc8_);
            if(_loc7_ != null)
            {
               _loc5_ = _loc5_ + (_loc7_.o8293 + _loc7_.o18433);
            }
            param2 = _loc8_;
         }
         var _loc9_:* = param2;
         switch(_loc9_)
         {
            case o15542.o10769:
               setAchievement(378,o15053(_loc5_,1000));
               break;
            case o15542.o5928:
               setAchievement(380,o15053(_loc5_,1000));
               break;
            case o15542.o3747:
               setAchievement(382,o15053(_loc5_,1000));
               break;
            case o15542.o18508:
               setAchievement(385,o15053(_loc5_,1000));
               break;
            case o15542.o20553:
               setAchievement(387,o15053(_loc5_,1000));
               break;
            case o15542.o9356:
               setAchievement(390,o15053(_loc5_,1000));
               break;
            case o15542.o1275:
               setAchievement(392,o15053(_loc5_,1000));
               break;
            case o15542.o7243:
               setAchievement(543,o15053(_loc5_,100));
               break;
            case o15542.o10263:
               setAchievement(546,o15053(_loc5_,100));
               break;
            case 1058:
               break;
            default:
               return;
         }
      }
      
      public function o15191(param1:o14200, param2:int) : void
      {
         var _loc3_:int = param1.o11453.o130 + param1.o11453.o8679;
         if(_loc3_ > 0)
         {
            setAchievement(409,1);
         }
         setAchievement(410,o15053(param2,5));
         setAchievement(411,o15053(_loc3_,50));
         setAchievement(412,o15053(param2,10));
         setAchievement(413,o15053(param1.o11453.o8679,1000));
         setAchievement(414,o15053(param1.o11453.o130,1000));
      }
      
      public function o5036(param1:o14200) : void
      {
         var _loc2_:o9145 = param1.o7923;
         var _loc3_:o16819 = param1.o11453;
         setAchievement(373,o15053(_loc3_.o10118,10));
         setAchievement(374,o15053(_loc3_.o10118,100));
         setAchievement(376,o15053(_loc3_.o10118,10000));
      }
      
      public function o20466(param1:o14200) : void
      {
         var _loc2_:* = undefined;
         if(o4519.o17061 == false)
         {
            _loc2_ = param1.data.o433.o10586();
            setAchievement(568,o15053(_loc2_[2],5));
            setAchievement(567,o15053(_loc2_[2],4));
            setAchievement(566,o15053(_loc2_[2],3));
            setAchievement(565,o15053(_loc2_[2],2));
            setAchievement(564,o15053(_loc2_[2],1));
            setAchievement(563,o15053(_loc2_[0],1));
            setAchievement(569,o15053(_loc2_[5],1));
            setAchievement(569,o15053(_loc2_[4],1));
            setAchievement(569,o15053(_loc2_[3],1));
         }
      }
      
      public function o15666(param1:o14200) : void
      {
         var _loc7_:o16819 = param1.o11453;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc14_:int = 0;
         var _loc12_:int = 0;
         var _loc8_:int = 0;
         var _loc5_:int = 0;
         var _loc3_:int = 0;
         var _loc6_:int = 0;
         var _loc4_:Boolean = false;
         var _loc11_:Vector.<o14801> = param1.data.o13955;
         var _loc13_:Array = ["alphavirus20140903","spitter20140903","shielder20140905"];
         var _loc16_:int = 0;
         var _loc15_:* = _loc11_;
         for each(var _loc2_ in _loc11_)
         {
            if(_loc2_.o17811 && _loc13_.indexOf(_loc2_.o7376) < 0)
            {
               if(_loc2_.o14283)
               {
                  _loc9_++;
                  if(_loc2_.o2889 <= 0.01)
                  {
                     _loc6_++;
                     if(_loc6_ >= 2)
                     {
                        _loc4_ = true;
                     }
                  }
                  if(_loc2_.o2889 <= 0.01)
                  {
                     _loc10_++;
                  }
                  if(_loc2_.o2889 <= 0.25)
                  {
                     _loc14_++;
                  }
                  if(_loc2_.o2889 <= 0.5)
                  {
                     _loc12_++;
                  }
               }
               else if(_loc2_.o6228)
               {
                  if(_loc2_.o2889 <= 0.01)
                  {
                     _loc8_++;
                  }
                  if(_loc2_.o2889 <= 0.25)
                  {
                     _loc5_++;
                  }
                  if(_loc2_.o2889 <= 0.5)
                  {
                     _loc3_++;
                  }
               }
            }
            else if(_loc2_.o14283)
            {
               _loc6_ = 0;
            }
         }
         if(_loc9_ > 0)
         {
            this.setAchievement(483,1);
         }
         if(_loc14_ > 0)
         {
            this.setAchievement(484,1);
         }
         if(_loc10_ > 0)
         {
            this.setAchievement(485,1);
         }
         if(!_loc4_)
         {
         }
         if(_loc10_ > 0)
         {
         }
         if(_loc3_ > 0)
         {
            this.setAchievement(488,1);
         }
         if(_loc5_ > 0)
         {
         }
         if(_loc3_ > 0)
         {
         }
      }
      
      private function o17996(param1:o14200) : void
      {
         var _loc3_:o11995 = param1.o7923.o13012;
         var _loc7_:* = 0;
         var _loc5_:int = 0;
         var _loc2_:int = 3;
         var _loc6_:o4609 = param1.o5292.o20827;
         var _loc9_:int = 0;
         var _loc8_:* = _loc6_.o20687;
         for each(var _loc4_ in _loc6_.o20687)
         {
            _loc5_ = _loc3_.o15613(_loc4_.id);
            _loc7_ = int(Math.max(_loc7_,_loc5_));
            if(_loc7_ >= _loc2_)
            {
               _loc7_ = _loc2_;
               break;
            }
         }
         setAchievement(491,o15053(_loc7_,_loc2_));
         setAchievement(492,o15053(_loc3_.o15613(6),5));
         setAchievement(493,o15053(_loc3_.o15613(8),5));
         setAchievement(494,o15053(_loc3_.o15613(10),5));
         setAchievement(495,o15053(_loc3_.o15613(2),5));
         setAchievement(496,o15053(_loc3_.o15613(0),5));
         setAchievement(497,o15053(_loc3_.o15613(1),5));
         setAchievement(498,o15053(_loc3_.o15613(3),5));
         setAchievement(499,o15053(_loc3_.o15613(5),5));
         setAchievement(500,o15053(_loc3_.o15613(4),5));
         setAchievement(501,o15053(_loc3_.o15613(7),5));
         setAchievement(502,o15053(_loc3_.o15613(15),5));
         setAchievement(503,o15053(_loc3_.o15613(13),5));
         setAchievement(504,o15053(_loc3_.o15613(11),5));
         setAchievement(505,o15053(_loc3_.o15613(14),5));
         setAchievement(506,o15053(_loc3_.o15613(12),5));
         setAchievement(507,o15053(_loc3_.o15613(9),5));
      }
      
      private function o17417(param1:o14200) : void
      {
         var _loc5_:o12557 = new o12557();
         _loc5_.o15765();
         var _loc6_:o12557 = new o12557();
         _loc6_.o13344();
         var _loc4_:o7705 = _loc5_.o13163(1,3);
         setAchievement(540,o15053(_loc4_.o5411,_loc4_.o14170));
         var _loc3_:o7705 = _loc6_.o13163(1,1);
         setAchievement(541,o15053(_loc3_.o5411,_loc3_.o14170));
         var _loc7_:o7705 = _loc5_.o13163(1,-1);
         var _loc2_:o7705 = _loc6_.o13163(1,-1);
         setAchievement(542,o15053(_loc7_.o5411 + _loc2_.o5411,_loc7_.o14170 + _loc2_.o14170));
      }
      
      private function o15033(param1:o14200) : void
      {
         var _loc2_:* = param1.o202.o18339 == 2;
         if(_loc2_ == false)
         {
            return;
         }
         setAchievement(532,o15053(param1.o11453.o16920,1));
         setAchievement(533,o15053(param1.o7923.o12332,o14576.o8340));
         setAchievement(534,o15053(param1.o11453.o7124,1000));
         setAchievement(535,o15053(param1.o11453.o19219,1));
         setAchievement(536,o15053(param1.o11453.o19219,50));
         setAchievement(538,o15053(param1.o7923.o263,1));
         o17694();
      }
      
      public function o17694() : void
      {
         var _loc3_:int = 0;
         var _loc2_:o14200 = o14200.o19505;
         var _loc1_:Dictionary = _loc2_.data.o14403;
         _loc3_ = 1;
         while(_loc3_ <= 12)
         {
            var _loc6_:int = 0;
            var _loc5_:* = _loc1_;
            for each(var _loc4_ in _loc1_)
            {
               if(_loc4_.o963 >= 12 && _loc4_.o14451 >= 4)
               {
                  setAchievement(539,1);
                  return;
               }
            }
            _loc3_++;
         }
      }
      
      public function o14039() : void
      {
         var _loc1_:o14200 = o14200.o19505;
         setAchievement(538,o15053(_loc1_.o7923.o263,1));
         o17694();
      }
      
      public function o811() : void
      {
         setAchievement(537,1);
      }
      
      public function o20388(param1:o14200, param2:int) : void
      {
         var _loc3_:o9145 = param1.o7923;
         var _loc4_:o16819 = param1.o11453;
         o15666(param1);
         o20466(param1);
         setAchievement(356,o15053(_loc3_.level,2));
         setAchievement(357,o15053(_loc3_.level,11));
         setAchievement(358,o15053(_loc3_.level,50));
         setAchievement(359,o20929(param1));
         setAchievement(360,o19957(param1));
         setAchievement(364,o15053(_loc4_.o8305,1000));
         setAchievement(365,o15053(_loc4_.o14815,10000));
         setAchievement(366,o15053(_loc4_.o14783,5000));
         setAchievement(367,o15053(_loc4_.o14342,10000));
         setAchievement(368,o15053(_loc4_.o18751,1000));
         setAchievement(369,o15053(_loc4_.o16845,10000));
         setAchievement(370,o15053(_loc4_.o17844,1000000));
         setAchievement(371,o15053(_loc4_.o11350,5000));
         setAchievement(372,o15053(_loc4_.o3496,5000));
         o7451(param1,param2);
         o19124(param1);
         o13990(param1);
         o15614(param1,397,0,5000);
         o15614(param1,398,1,5000);
         o15614(param1,399,2,5000);
         o15614(param1,400,3,5000);
         o15614(param1,401,4,5000);
         o15614(param1,402,5,5000);
         o15614(param1,403,10,1000);
         o15614(param1,404,13,1000);
         o15614(param1,405,12,1000);
         o15614(param1,406,14,1000);
         o15614(param1,407,11,1000);
         o6841(param1);
         o17996(param1);
         o15033(param1);
         o17417(param1);
         o12170(param1,param2);
      }
      
      public function o12170(param1:o14200, param2:int = -1) : void
      {
         var _loc3_:* = null;
         var _loc5_:int = 0;
         var _loc7_:* = null;
         var _loc4_:o9145 = param1.o7923;
         var _loc6_:o16819 = param1.o11453;
         if(o4519.o17061)
         {
            try
            {
               if(_loc4_.o2274 == 1)
               {
                  o4519.kong.submitStat("MedicCharacterLevel",_loc4_.level);
               }
               else if(_loc4_.o2274 == 0)
               {
                  o4519.kong.submitStat("AssaultCharacterLevel",_loc4_.level);
               }
               else if(_loc4_.o2274 == 2)
               {
                  o4519.kong.submitStat("HeavyCharacterLevel",_loc4_.level);
               }
               o4519.kong.submitStat("HighestCharacterLevel",o14200.o19505.o1343());
               o4519.kong.submitStat("CloseQuarterCombatKills",_loc6_.o8305);
               o4519.kong.submitStat("AssaultTeamKills",_loc6_.o14815);
               o4519.kong.submitStat("BioCleanseSlowdowns",_loc6_.o14783);
               o4519.kong.submitStat("ZombieAntidoteKills",_loc6_.o14342);
               o4519.kong.submitStat("DayAnotherDayResists",_loc6_.o18751);
               o4519.kong.submitStat("AerialBombardmentKills",_loc6_.o16845);
               o4519.kong.submitStat("SasCashPickedUp",_loc6_.o17844);
               o4519.kong.submitStat("GrenadeKills",_loc6_.o11350);
               o4519.kong.submitStat("TurretKills",_loc6_.o3496);
               o4519.kong.submitStat("ShamblerKills",_loc6_.o15743(0));
               o4519.kong.submitStat("StalkerKills",_loc6_.o15743(1));
               o4519.kong.submitStat("SpitterKills",_loc6_.o15743(2));
               o4519.kong.submitStat("RunnerKills",_loc6_.o15743(3));
               o4519.kong.submitStat("BloaterKills",_loc6_.o15743(4));
               o4519.kong.submitStat("ShielderKills",_loc6_.o15743(5));
               o4519.kong.submitStat("RegurgitatorKills",_loc6_.o15743(10));
               o4519.kong.submitStat("WickerKills",_loc6_.o15743(13));
               o4519.kong.submitStat("ZombieMechKills",_loc6_.o15743(12));
               o4519.kong.submitStat("DevastatorKills",_loc6_.o15743(14));
               o4519.kong.submitStat("NecrosisKills",_loc6_.o15743(11));
               o4519.kong.submitStat("NightmarishZombieAndBossKills",_loc6_.o7124);
               o4519.kong.submitStat("NightmarishBossKills",_loc6_.o19219);
               o4519.kong.submitStat("NightmareWins",_loc6_.o16920);
               o4519.kong.submitStat("NightmareLosses",_loc6_.o16318);
               o4519.kong.submitStat("TotalSinglePlayerWins",_loc6_.o564);
               o4519.kong.submitStat("TotalMultiplayerWins",_loc6_.o12857);
               if(param2 != -1)
               {
                  _loc3_ = param1.o11453.o4635(param2);
                  _loc5_ = _loc3_.o8293 + _loc3_.o18433;
                  _loc7_ = param1.o5292.o9177.o17565(param2);
                  if(_loc7_ != null)
                  {
                     o4519.kong.submitStat(_loc7_.o1007 + "MapCompletions",_loc5_);
                  }
               }
               return;
            }
            catch(o19631:Error)
            {
               trace("Error: Kong submitStats failed");
               return;
            }
         }
      }
      
      public function o3323(param1:o14200) : void
      {
         var _loc4_:o9145 = param1.o7923;
         var _loc5_:int = _loc4_.o6122(1);
         var _loc8_:int = _loc4_.o6122(2);
         if(_loc5_ >= 5 && _loc8_ >= 5)
         {
            setAchievement(361,o15053(_loc5_ + _loc8_,25));
         }
         var _loc7_:int = _loc4_.o6122(3);
         var _loc3_:int = _loc4_.o6122(7);
         if(_loc7_ >= 5 && _loc3_ >= 5)
         {
            setAchievement(362,o15053(_loc7_ + _loc3_,25));
         }
         var _loc6_:int = _loc4_.o6122(5);
         var _loc2_:int = _loc4_.o6122(9);
         if(_loc6_ >= 5 && _loc2_ >= 5)
         {
            setAchievement(363,o15053(_loc6_ + _loc2_,25));
         }
      }
      
      private function o1629(param1:int) : int
      {
         return param1 + 5;
      }
      
      private function o5923(param1:String) : void
      {
      }
      
      public function checkAndUpdateConsecutiveDailyLogins(param1:o9145, param2:int, param3:o16124 = null, param4:int = 0, param5:Object = null) : o16124
      {
         o10608 = param1;
         o7189 = param2;
         o5547 = param3;
         o19625 = param4;
         o20710 = param5;
         o5923("checkAndUpdateConsecutiveDailyLogins " + o19625.toString());
         if(o19625 > 2)
         {
            o5547.data = false;
            return o5547;
         }
         o10608.o4900 = true;
         o10608.o12667 = true;
         var promise:o16124 = o5547 == null?new o16124():o5547;
         if(o15748 == null)
         {
            o10608.o4995 = false;
            o10608.o4900 = false;
            o10608.o17349 = "";
            o10608.o13308 = false;
            o10608.o12667 = false;
            promise.data = false;
         }
         else
         {
            var o3359:int = o1629(o7189);
            o15748.checkAndUpdateConsecutiveDailyLogins(o3359).then(function():*
            {
               var /*UnknownSlot*/:* = function(param1:Object):void
               {
                  o5923("checkAndUpdateConsecutiveDailyLogins ok");
                  var _loc2_:int = param1["days"];
                  o10608.o717 = _loc2_;
                  checkDailyReward(o10608,o7189,promise);
               };
               return function(param1:Object):void
               {
                  o5923("checkAndUpdateConsecutiveDailyLogins ok");
                  var _loc2_:int = param1["days"];
                  o10608.o717 = _loc2_;
                  checkDailyReward(o10608,o7189,promise);
               };
            }(),function():*
            {
               var /*UnknownSlot*/:* = function(param1:Object):void
               {
                  o5923("checkAndUpdateConsecutiveDailyLogins failed A");
                  o5923("checkAndUpdateConsecutiveDailyLogins failed B: " + JSON.stringify(param1));
                  checkAndUpdateConsecutiveDailyLogins(o10608,o7189,promise,o19625 + 1,param1);
               };
               return function(param1:Object):void
               {
                  o5923("checkAndUpdateConsecutiveDailyLogins failed A");
                  o5923("checkAndUpdateConsecutiveDailyLogins failed B: " + JSON.stringify(param1));
                  checkAndUpdateConsecutiveDailyLogins(o10608,o7189,promise,o19625 + 1,param1);
               };
            }()).then(null,function():*
            {
               var /*UnknownSlot*/:* = function(param1:Object):void
               {
                  o14043.o11809(param1);
               };
               return function(param1:Object):void
               {
                  o14043.o11809(param1);
               };
            }());
         }
         return promise;
      }
      
      public function checkDailyReward(param1:o9145, param2:int, param3:o16124 = null, param4:int = 0, param5:Object = null) : void
      {
         o10608 = param1;
         o7189 = param2;
         o5547 = param3;
         o19625 = param4;
         o20710 = param5;
         if(o19625 > 2)
         {
            o10608.o4995 = false;
            o10608.o4900 = false;
            o10608.o13308 = false;
            o10608.o12667 = false;
            o10608.o17349 = "";
            o10608.o6333 = 0;
            o10608.o17808 = false;
            promise.data = false;
            return;
         }
         o10608.o4900 = true;
         o10608.o12667 = true;
         var promise:o16124 = o5547 == null?new o16124():o5547;
         if(o15748 == null)
         {
            o10608.o4995 = false;
            o10608.o4900 = false;
            o10608.o13308 = false;
            o10608.o12667 = false;
            o10608.o17349 = "";
            o10608.o6333 = 0;
            o10608.o17808 = false;
         }
         else
         {
            var o3359:int = o1629(o7189);
            o15748.checkDailyReward(o3359).then(function():*
            {
               var /*UnknownSlot*/:* = function(param1:Object):void
               {
                  var _loc6_:* = null;
                  var _loc7_:* = null;
                  var _loc3_:* = null;
                  var _loc8_:* = null;
                  var _loc5_:Boolean = param1["available"];
                  var _loc4_:String = !!_loc5_?"":param1["hoursToWait"];
                  o10608.o4995 = _loc5_;
                  o10608.o4900 = false;
                  if(_loc5_ && o10608.o17808 == false && o4519.o8116 && o4519.o8116.o476 && o4519.o8116.o476.o9095)
                  {
                     _loc6_ = new Date();
                     if(o4519.o8116.o15020)
                     {
                        _loc6_ = o4519.o8116.o15020;
                     }
                     if(_loc6_ != null)
                     {
                        _loc7_ = new Date(_loc6_.getUTCFullYear(),_loc6_.getUTCMonth(),_loc6_.getUTCDate(),_loc6_.getUTCHours(),_loc6_.getUTCMinutes(),_loc6_.getUTCSeconds());
                        _loc3_ = new Date(_loc7_.getFullYear(),_loc7_.getMonth(),_loc7_.getDate());
                        _loc3_.date = _loc3_.date + 1;
                        _loc8_ = new Date(_loc6_.getUTCFullYear(),_loc6_.getUTCMonth(),_loc6_.getUTCDate(),_loc6_.getUTCHours(),_loc6_.getUTCMinutes(),_loc6_.getUTCSeconds());
                        if(_loc8_.time > o14200.o19505.data.o12368.time || o14200.o19505.data.o12368.time <= 0)
                        {
                           o10608.o6333 = o4519.o8116.o476.o9095.o3662;
                           o10608.o17808 = true;
                           var _loc10_:int = 0;
                           var _loc9_:* = o14200.o19505.data.o11400;
                           for each(var _loc2_ in o14200.o19505.data.o11400)
                           {
                              if(_loc2_)
                              {
                                 _loc2_.o6333 = o4519.o8116.o476.o9095.o3662;
                                 _loc2_.o17808 = true;
                              }
                           }
                           o14200.o19505.data.o12368.time = _loc3_.time;
                        }
                     }
                  }
                  if(o10608.o6333 > o4519.o8116.o476.o9095.o3662)
                  {
                     o10608.o6333 = o4519.o8116.o476.o9095.o3662;
                  }
                  else if(o10608.o6333 <= 0)
                  {
                     o10608.o6333 = 0;
                  }
                  o10608.o13308 = o10608.o6333 > 0?true:false;
                  o10608.o12667 = false;
                  o10608.o17349 = _loc4_;
                  promise.data = true;
               };
               return function(param1:Object):void
               {
                  var _loc6_:* = null;
                  var _loc7_:* = null;
                  var _loc3_:* = null;
                  var _loc8_:* = null;
                  var _loc5_:Boolean = param1["available"];
                  var _loc4_:String = !!_loc5_?"":param1["hoursToWait"];
                  o10608.o4995 = _loc5_;
                  o10608.o4900 = false;
                  if(_loc5_ && o10608.o17808 == false && o4519.o8116 && o4519.o8116.o476 && o4519.o8116.o476.o9095)
                  {
                     _loc6_ = new Date();
                     if(o4519.o8116.o15020)
                     {
                        _loc6_ = o4519.o8116.o15020;
                     }
                     if(_loc6_ != null)
                     {
                        _loc7_ = new Date(_loc6_.getUTCFullYear(),_loc6_.getUTCMonth(),_loc6_.getUTCDate(),_loc6_.getUTCHours(),_loc6_.getUTCMinutes(),_loc6_.getUTCSeconds());
                        _loc3_ = new Date(_loc7_.getFullYear(),_loc7_.getMonth(),_loc7_.getDate());
                        _loc3_.date = _loc3_.date + 1;
                        _loc8_ = new Date(_loc6_.getUTCFullYear(),_loc6_.getUTCMonth(),_loc6_.getUTCDate(),_loc6_.getUTCHours(),_loc6_.getUTCMinutes(),_loc6_.getUTCSeconds());
                        if(_loc8_.time > o14200.o19505.data.o12368.time || o14200.o19505.data.o12368.time <= 0)
                        {
                           o10608.o6333 = o4519.o8116.o476.o9095.o3662;
                           o10608.o17808 = true;
                           var _loc10_:int = 0;
                           var _loc9_:* = o14200.o19505.data.o11400;
                           for each(var _loc2_ in o14200.o19505.data.o11400)
                           {
                              if(_loc2_)
                              {
                                 _loc2_.o6333 = o4519.o8116.o476.o9095.o3662;
                                 _loc2_.o17808 = true;
                              }
                           }
                           o14200.o19505.data.o12368.time = _loc3_.time;
                        }
                     }
                  }
                  if(o10608.o6333 > o4519.o8116.o476.o9095.o3662)
                  {
                     o10608.o6333 = o4519.o8116.o476.o9095.o3662;
                  }
                  else if(o10608.o6333 <= 0)
                  {
                     o10608.o6333 = 0;
                  }
                  o10608.o13308 = o10608.o6333 > 0?true:false;
                  o10608.o12667 = false;
                  o10608.o17349 = _loc4_;
                  promise.data = true;
               };
            }(),function():*
            {
               var /*UnknownSlot*/:* = function(param1:Object):void
               {
                  checkDailyReward(o10608,o7189,promise,o19625 + 1,param1);
               };
               return function(param1:Object):void
               {
                  checkDailyReward(o10608,o7189,promise,o19625 + 1,param1);
               };
            }()).then(null,function():*
            {
               var /*UnknownSlot*/:* = function(param1:Object):void
               {
                  o14043.o11809(param1);
               };
               return function(param1:Object):void
               {
                  o14043.o11809(param1);
               };
            }());
         }
      }
      
      public function claimDailyReward(param1:o9145, param2:int, param3:o16124 = null, param4:int = 0, param5:Object = null) : o16124
      {
         o10608 = param1;
         o7189 = param2;
         o5547 = param3;
         o19625 = param4;
         o20710 = param5;
         o5923("claimDailyReward " + o19625.toString());
         if(o19625 > 2)
         {
            o10608.o12405 = false;
            promise.data = false;
            return promise;
         }
         o10608.o12405 = true;
         var promise:o16124 = o5547 == null?new o16124():o5547;
         if(o15748 == null)
         {
            o10608.o4995 = false;
            o10608.o4900 = false;
            o10608.o13308 = false;
            o10608.o12667 = false;
            o10608.o17349 = "";
            o10608.o12405 = false;
            promise.data = false;
         }
         else
         {
            var o3359:int = o1629(o7189);
            o15748.claimDailyReward(o3359).then(function():*
            {
               var /*UnknownSlot*/:* = function(param1:Object):void
               {
                  o5923("claimDailyReward ok");
                  o10608.o12405 = false;
                  var _loc2_:Boolean = param1["success"];
                  promise.data = _loc2_;
               };
               return function(param1:Object):void
               {
                  o5923("claimDailyReward ok");
                  o10608.o12405 = false;
                  var _loc2_:Boolean = param1["success"];
                  promise.data = _loc2_;
               };
            }(),function():*
            {
               var /*UnknownSlot*/:* = function(param1:Object):void
               {
                  o5923("claimDailyReward failed");
                  claimDailyReward(o10608,o7189,promise,o19625 + 1,param1);
               };
               return function(param1:Object):void
               {
                  o5923("claimDailyReward failed");
                  claimDailyReward(o10608,o7189,promise,o19625 + 1,param1);
               };
            }()).then(null,function():*
            {
               var /*UnknownSlot*/:* = function(param1:Object):void
               {
                  o14043.o11809(param1);
               };
               return function(param1:Object):void
               {
                  o14043.o11809(param1);
               };
            }());
         }
         return promise;
      }
      
      public function o9770() : void
      {
         var _loc1_:o14200 = o4519.o8116.profileData;
         checkDailyReward(_loc1_.o7923,o548(_loc1_.o7923));
      }
      
      public function o18504() : o16124
      {
         var _loc1_:o9145 = o4519.o8116.profileData.o7923;
         return claimDailyReward(_loc1_,o548(_loc1_));
      }
      
      public function o9841() : o16124
      {
         var _loc1_:o9145 = o4519.o8116.profileData.o7923;
         return checkAndUpdateConsecutiveDailyLogins(_loc1_,o548(_loc1_));
      }
      
      private function o548(param1:o9145) : int
      {
         var _loc4_:int = 0;
         var _loc2_:o14200 = o4519.o8116.profileData;
         var _loc6_:int = 0;
         var _loc5_:* = _loc2_.data.o11400;
         for each(var _loc3_ in _loc2_.data.o11400)
         {
            if(_loc3_ == param1)
            {
               return _loc4_;
            }
            _loc4_++;
         }
         return -1;
      }
      
      public function o7478() : void
      {
         var _loc1_:o14200 = o4519.o8116.profileData;
         var _loc3_:int = 0;
         var _loc5_:int = 0;
         var _loc4_:* = _loc1_.data.o11400;
         for each(var _loc2_ in _loc1_.data.o11400)
         {
            if(_loc2_ != null)
            {
               checkDailyReward(_loc2_,_loc3_);
            }
            _loc3_++;
         }
      }
   }
}

class o8374
{
    
   
   private var o4848:o6701;
   
   private var promise:o16124;
   
   function o8374(param1:o6701, param2:o16124)
   {
      super();
      this.o4848 = param1;
      this.promise = param2;
   }
   
   public function o13815() : void
   {
      promise.data = true;
      o4848.o13925();
      o4848 = null;
      promise = null;
   }
   
   public function o2077(param1:Object) : void
   {
      promise.data = false;
      o4848.o2599(param1);
      o4848 = null;
      promise = null;
   }
}
