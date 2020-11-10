package
{
   import flash.display.Sprite;
   
   public class o2379 extends Sprite
   {
       
      
      public function o2379()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o4765;
      }
   }
}

import flash.events.Event;
import flash.utils.getTimer;

class o4765 extends o18442
{
   
   public static var o6748:int = 0;
    
   
   private var o3581:String;
   
   private var o17198:Number;
   
   private var o15530:Number;
   
   private var o16024:Number;
   
   private var o475:int;
   
   private var o3847:Number;
   
   private var o18922:Vector.<o17517>;
   
   private var o4761:Number = 0;
   
   private var o9890:o4039;
   
   private var o12977:o3622;
   
   private var o20372:o3622;
   
   private var o13104:Boolean = false;
   
   private var o12479:Number = -1;
   
   private var o3936:int = -1;
   
   private var o1833:int = -1;
   
   private var o12710:int = -1;
   
   private var o13412:Array;
   
   private const o12031:int = 15;
   
   private var o15630:o17517 = null;
   
   private var o10279:int = 0;
   
   private var o3529:Number = 3;
   
   function o4765()
   {
      o17198 = o4519.o8116.o4550(5);
      o3847 = o4519.o8116.o4550(5);
      o18922 = new Vector.<o17517>();
      o13412 = [1,1,1.1,1.1,1.2,1.2,1.3,1.3,1.4,1.4];
      super();
   }
   
   public static function getGradeCacheAssets(param1:int, param2:int) : Vector.<String>
   {
      var _loc5_:* = 0;
      var _loc4_:* = null;
      var _loc3_:Vector.<String> = new Vector.<String>();
      var _loc6_:o1587 = o4519.o8116.o4235.o4248(7);
      _loc5_ = param1;
      while(_loc5_ <= param2)
      {
         _loc4_ = _loc6_.o4036[_loc5_];
         _loc3_.push(o4519.o8116.o5830.o9009(_loc4_.o15540));
         _loc3_.push(o4519.o8116.o5830.o9009(_loc4_.o15807));
         _loc3_.push(o4519.o8116.o5830.o9009(_loc4_.o362));
         _loc3_.push(o4519.o8116.o5830.o9009(_loc4_.o16077));
         _loc3_.push(o4519.o8116.o5830.o9009(_loc4_.o15458));
         _loc3_.push(o4519.o8116.o5830.o9009(_loc4_.o853));
         _loc3_.push(o4519.o8116.o5830.o9009(_loc4_.o12311));
         _loc3_.push(o4519.o8116.o5830.o9009(_loc4_.o18675));
         _loc3_.push(o4519.o8116.o5830.o9009(_loc4_.o14586));
         _loc3_.push(o4519.o8116.o5830.o9009(_loc6_.o12492));
         _loc3_.push(o4519.o8116.o5830.o9009(_loc6_.o10021));
         _loc3_.push(o4519.o8116.o5830.o9009(_loc6_.o6568));
         _loc5_++;
      }
      return _loc3_;
   }
   
   public function o16955(param1:int, param2:int, param3:o18509, param4:int) : void
   {
      grade = param2;
      type = 7;
      o18691 = true;
      o19265 = 2;
      var _loc9_:o1587 = o4519.o8116.o4235.o4248(7);
      var _loc7_:o14238 = _loc9_.o4036[param2];
      var _loc5_:o14238 = _loc9_.o4036[param2];
      this.o16125 = _loc9_.o17834;
      o18043(grade);
      o20133 = _loc7_.o1603;
      o17074 = _loc9_.o19672;
      o30 = o17074;
      o11243 = _loc7_.o11243 * o13412[grade];
      o1589 = o11243;
      o4699 = 140;
      o3478 = o4519.o8116.o4550(_loc7_.o18823);
      o3843 = o3478;
      o11171 = _loc9_.o11171 / 180 * 3.14159265358979;
      o16109 = _loc7_.o16109 * o13412[grade];
      o1877 = _loc7_.o13119;
      o1690 = o4519.o8116.o4550(_loc9_.o1690);
      o5617 = _loc9_.o5617;
      o16024 = _loc7_.o16024 * o13412[grade];
      o15530 = _loc7_.o3704;
      o4761 = o15530;
      o17198 = o4519.o8116.o4550(_loc7_.o17198);
      o475 = _loc9_.o475;
      o3847 = o4519.o8116.o4550(_loc7_.o3847);
      o3581 = o4519.o8116.o5830.o9009(_loc5_.o15540);
      o3529 = 1;
      o16390 = [null,_loc7_.o11598,_loc7_.o16351,_loc7_.o884,_loc7_.o1098,0,0];
      o64 = _loc9_.o10981 / 10;
      o6274 = o4519.o8116.o5830.o9009(_loc5_.o15807);
      o15091 = o4519.o8116.o5830.o9009(_loc5_.o362);
      o4831 = [o4519.o8116.o5830.o9009(_loc5_.o853),o4519.o8116.o5830.o9009(_loc5_.o12311),o4519.o8116.o5830.o9009(_loc5_.o18675)];
      o502 = o4519.o8116.o5830.o9009(_loc5_.o15458);
      o11196 = o4519.o8116.o5830.o9009(_loc9_.o12492);
      o11166 = o4519.o8116.o5830.o9009(_loc9_.o10021);
      o9296 = o4519.o8116.o5830.o9009(_loc9_.o6568);
      o8193 = _loc9_.o8193;
      o9747 = _loc9_.o5949;
      o1918 = _loc7_.o1918;
      o4052 = _loc9_.o4052;
      if(o4519.o13206.o2685.o4326 == 2)
      {
         o1918 = 0.01;
      }
      var _loc6_:o10262 = o4519.o8116.o9869.o1968(1,0);
      var _loc8_:o4332 = o4519.o8116.o11954.o10869();
      o13104 = false;
      if(grade >= 1)
      {
         o17127 = true;
      }
      super.o19011(param1,_loc6_,_loc8_,param3,param4);
      _loc6_.o7191 = _loc9_.o7191;
      o4519.o8116.o1184.o1557(121).defer(o4956);
      o10821();
      o16166.o13786(o14972);
      o12710 = o1051.o4767(this,0.0333333333333333,o12881);
   }
   
   private function o4956(param1:o8925) : void
   {
      if(!o5836)
      {
         o12977 = new o3622(param1,this,o6691,o6691.o16990 + 0.1);
         o12977.o3726.x = 40;
         o12977.o3726.y = -15;
         o12977.o2493 = o13412[grade];
         o12977.o11119 = o8723.o42;
         o12977.o13696 = [o17517];
         o12977.o10464 = [o17517,o10384];
         o12977.o3046 = o8723.o32 | o8723.o3969 | o8723.o18180 | o8723.o19523;
         o12977.o20682 = 2147483647;
         o20372 = new o3622(param1,this,o6691,o6691.o16990 + 0.1);
         o20372.o3726.x = 40;
         o20372.o3726.y = 15;
         o20372.o2493 = o13412[grade];
         o20372.o11119 = o8723.o42;
         o20372.o13696 = [o17517];
         o20372.o10464 = [o17517,o10384];
         o20372.o3046 = o8723.o32 | o8723.o3969 | o8723.o18180 | o8723.o19523;
         o20372.o20682 = 2147483647;
         o17198 = o4519.o8116.o4550(param1.o14120);
      }
   }
   
   override protected function o20017(param1:o4016) : void
   {
      o1051.o19115(o1833);
      o1051.o19115(o12710);
      o1051.o19115(o3936);
      o9890.o12657(o2841.o1516,o13776);
      o9890.o12657(o2841.o15204,o2411);
      o13104 = false;
      if(o12977)
      {
         o12977.o6976();
      }
      if(o20372)
      {
         o20372.o6976();
      }
      if(o17127)
      {
         o6748 = Number(o6748) + 1;
         if(o6748 >= 15)
         {
            o12347 = true;
         }
      }
      super.o20017(param1);
   }
   
   override public function o19115() : void
   {
      if(o5836)
      {
         return;
      }
      o1051.o19115(o1833);
      o1051.o19115(o12710);
      o1051.o19115(o3936);
      o18922 = null;
      if(o9890)
      {
         o9890.o19115();
      }
      o9890 = null;
      o13104 = false;
      if(o12977)
      {
         o12977.o6976();
      }
      if(o20372)
      {
         o20372.o6976();
      }
      if(o12977)
      {
         o12977.o19115();
      }
      if(o20372)
      {
         o20372.o19115();
      }
      super.o19115();
   }
   
   private function o10821() : void
   {
      var _loc1_:o17761 = new o17761(body.o2535);
      _loc1_.o16716(o17198);
      o9890 = o4519.o8116.o20600.o15803(o8723.o7778,o8723.o19175,o8723.o19175,true);
      o9890.o10289 = _loc1_.id;
      body.o14230(o9890);
      o9890.o16280(this,o2841.o1516,o13776);
      o9890.o16280(this,o2841.o15204,o2411);
   }
   
   private function o13776(param1:o4217) : void
   {
      if(o5836 || o6955)
      {
         return;
      }
      var _loc2_:o17517 = o4519.o8116.o2996.o14389(param1.o11541.body) as o17517;
      if(_loc2_ != null)
      {
         if(o18922.indexOf(_loc2_) == -1)
         {
            o18922.push(_loc2_);
         }
      }
   }
   
   private function o2411(param1:o20312) : void
   {
      if(o5836 || o6955)
      {
         return;
      }
      var _loc2_:o17517 = o4519.o8116.o2996.o14389(param1.o11541.body) as o17517;
      if(_loc2_ != null)
      {
         o18922.splice(o18922.indexOf(_loc2_),1);
      }
   }
   
   private function o17484() : o17517
   {
      if(o13696.indexOf(o17517) == -1)
      {
         return null;
      }
      if(o18922.length == 0)
      {
         return null;
      }
      return o18922[0];
   }
   
   private function o14165(param1:o17517) : Boolean
   {
      o12932 = param1;
      var o12449:Vector.<o7848> = Vector.<o7848>(o18922.concat());
      o12449.splice(o12449.indexOf(o12932),1);
      var o17688:Boolean = false;
      o4519.o8116.o2996.o4816(body.position.x,body.position.y,o12932.body.position.x,o12932.body.position.y,o8723.o2823,1 | o8723.o32,o12449).defer(function(param1:*):void
      {
         if(param1 != null && param1.entity === o12932)
         {
            o17688 = true;
         }
      });
      return o17688;
   }
   
   protected function o12881() : void
   {
      var _loc5_:* = null;
      var _loc2_:* = null;
      var _loc3_:Number = NaN;
      var _loc1_:Number = NaN;
      var _loc4_:* = NaN;
      if(o4761 > 0 && o13104 == false)
      {
         o4761 = o4761 - 0.0333333333333333;
      }
      if(o4761 <= 0 && !o16243 && o13104 == false)
      {
         _loc5_ = o17484();
         if(_loc5_)
         {
            if(o14165(_loc5_))
            {
               o6528(_loc5_);
               o4761 = o15530;
               o15630 = _loc5_;
            }
            else
            {
               o4761 = o15530 * 0.5;
            }
         }
      }
      var _loc6_:o18509 = o15460.o4078;
      if(o13104)
      {
         if(o15630)
         {
            _loc2_ = o15460.o4078;
            _loc2_.x = o15630.body.o2697.x - body.o2697.x;
            _loc2_.y = o15630.body.o2697.y - body.o2697.y;
            _loc2_.o14528();
            _loc3_ = (getTimer() - o12479) / 1000;
            _loc6_ = o15460.o16789;
            _loc6_.x = 1;
            _loc6_.y = 0;
            _loc6_.rotate(o6691.rotation);
            _loc1_ = _loc6_.o19203(_loc2_);
            _loc4_ = Number(o11171 * 0.05 * _loc3_);
            if(_loc1_ >= 0)
            {
               if(_loc4_ > _loc1_)
               {
                  _loc4_ = _loc1_;
               }
            }
            else
            {
               _loc4_ = Number(_loc4_ * -1);
               if(_loc4_ < _loc1_)
               {
                  _loc4_ = _loc1_;
               }
            }
            o6691.rotation = o6691.rotation + _loc4_;
         }
      }
      o12479 = getTimer();
   }
   
   protected function o6528(param1:o17517) : void
   {
      o16166.o10589(o3581);
      o16166.o10589(o6274,false);
      o16166.gotoAndPlay(0);
      o5666();
      o16166.o19926(this,o1490.o16612,o20904);
   }
   
   private function o20904(param1:Event) : void
   {
      o1941();
   }
   
   private function o14972(param1:String) : void
   {
      o17162 = param1;
      if(o5836 || o6955)
      {
         return;
      }
      var _loc2_:* = o17162;
      switch(_loc2_)
      {
         case "idle":
            o13104 = true;
            o10279 = 0;
            o16166.stop();
            o1833 = o1051.o9310(this,o3529,function(param1:Event = null):void
            {
               o16166.play();
            });
            break;
         case "start":
            if(o10279 == 0)
            {
               o12977.trigger();
               o20372.trigger();
            }
            break;
         case "stop":
            o10279 = Number(o10279) + 1;
            if(o10279 >= 2)
            {
               o13104 = false;
               o15630 = null;
               o12977.o6976();
               o20372.o6976();
            }
            else
            {
               o16166.o11("start");
            }
      }
   }
   
   override protected function o16855() : void
   {
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o14142.o584.play(1,0,0,false,_loc1_.o10088());
   }
   
   override protected function o15119() : void
   {
      o3936 = o1051.o9310(this,0.1,o13574);
   }
   
   private function o13574() : void
   {
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o14142.o6552.play(1,0,0,false,_loc1_.o10088());
   }
}
