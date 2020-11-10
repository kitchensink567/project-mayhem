package
{
   import flash.events.Event;
   
   public class o7141 extends o3358
   {
      
      private static const o20883:int = 0;
      
      private static const o20707:int = 1;
      
      private static const o7571:int = 2;
      
      private static const o12787:int = 3;
      
      private static const o4341:int = 4;
      
      private static const o2357:int = 5;
      
      private static const o16415:int = 6;
      
      private static const o9746:int = 7;
      
      private static const o9600:int = 8;
      
      private static const o11024:int = 9;
      
      private static const o18425:Number = 300;
      
      private static const o1105:Number = 450;
      
      private static const o1438:Number = 275;
      
      private static const o6853:Number = 500;
      
      private static const o10665:Number = 0.25;
      
      private static var o4051:int = 1;
      
      public static var o14574:Boolean = false;
       
      
      public var o4175:Boolean = false;
      
      public var o6038:uint;
      
      private var o20488:int = 0;
      
      private var o12505:Class = null;
      
      private var o10555:o5640 = null;
      
      private var o6809:o7848 = null;
      
      private var o19847:o7848 = null;
      
      private var o16505:Number = 1;
      
      private var o11654:int = -1;
      
      private var delta:Number = 0.03333333333333333;
      
      private var o1337:o972;
      
      private var o20400:o18509;
      
      private var o5156:Number;
      
      private var o2561:o18509;
      
      private var o3755:o2041;
      
      private var o2096:o18509;
      
      private var o4738:Number;
      
      private var o20964:Boolean = false;
      
      private var o18706:Boolean = false;
      
      private var o10552:Number = 0;
      
      private const o3612:Number = 0.333;
      
      private var o10888:Number = 0;
      
      public var o16769:Number = 0.7853981633974483;
      
      private var o12815:int = -1;
      
      private var o10944:int = -1;
      
      private var o17430:int = -1;
      
      private var o10742:int = -1;
      
      private var o6200:int = -1;
      
      private var o14041:int = -1;
      
      private var o17346:int = -1;
      
      private var o6804:int = -1;
      
      private var o12639:int = -1;
      
      private var o15880:int = -1;
      
      private var o5839:int = -1;
      
      private var o8069:int = -1;
      
      private var o1864:o7848;
      
      private const o17276:Number = 4.39822971502571;
      
      private var o5150:Boolean = false;
      
      public function o7141()
      {
         super(null,null);
         o5150 = false;
      }
      
      public function o3151(param1:o5640) : void
      {
         this.o10555 = param1;
         o17346 = o1051.o4767(this,delta,o2639);
      }
      
      public function o404(param1:o18509, param2:Number) : void
      {
         o20400 = param1;
         o5156 = param2;
      }
      
      public function o13846(param1:o18509, param2:o2041) : void
      {
         o2561 = param1;
         o3755 = param2;
      }
      
      public function o7458(param1:o18509, param2:Number) : void
      {
         o2096 = param1;
         o4738 = param2;
      }
      
      public function o7760() : void
      {
         o20488 = 1;
         o1051.o19115(o12639);
         o10555.o16280(this,o5640.o9003,o15488);
         o14041 = o1051.o4767(this,2,o4924);
         o8069 = o1051.o9310(this,10,o8926);
      }
      
      private function o4924() : void
      {
         var _loc1_:o14506 = o4519.o9721.o20360.o13028(o8723.o3732,o10555.body.id,o10555.body.position.x,o10555.body.position.y,0,o20400.x,o20400.y,o8723.o3969 | o8723.o18180,o8723.o3969 | o8723.o18180);
         _loc1_.defer(o5363);
      }
      
      private function o8926() : void
      {
         o1051.o19115(o10742);
         if(o20488 == 1)
         {
            o2272();
         }
      }
      
      private function o2272() : void
      {
         o1051.o19115(o14041);
         o20488 = 2;
         o16505 = 300;
         o12505 = o18442;
         o11654 = o1051.o4767(this,1,o1590);
      }
      
      private function o18571() : void
      {
         o10742 = o1051.o4767(this,delta,o16425);
      }
      
      private function o16425() : void
      {
         if(o2179.rotation == o5156 || o6809 != null)
         {
            o1051.o19115(o10742);
            return;
         }
         var _loc1_:Number = o8839(o5156 - o2179.rotation);
         if(_loc1_ > 4.39822971502571 * delta)
         {
            _loc1_ = 4.39822971502571 * delta;
         }
         else if(_loc1_ < -4.39822971502571 * delta)
         {
            _loc1_ = -4.39822971502571 * delta;
         }
         o2179.rotation = o2179.rotation + _loc1_;
      }
      
      private function o1590() : void
      {
         var _loc1_:* = null;
         if(o6809)
         {
            if(o6809.o8289() || o12037(o6809) > o16505 * o16505)
            {
               o6809 = null;
               o20024();
            }
            else
            {
               _loc1_ = o4519.o8116.o2535.o4816(o10555.body.position.x,o10555.body.position.y,o6809.body.position.x,o6809.body.position.y,o10555.o2752.o11119,8193);
               _loc1_.defer(o15742);
            }
         }
         else
         {
            o20024();
         }
      }
      
      private function o12037(param1:o7848) : Number
      {
         var _loc3_:Number = o10555.body.position.x - param1.body.position.x;
         var _loc2_:Number = o10555.body.position.y - param1.body.position.y;
         return _loc3_ * _loc3_ + _loc2_ * _loc2_;
      }
      
      private function o20024() : void
      {
         o4519.o8116.o2996.o9685(o12505,o10555.body.position.x,o10555.body.position.y,o16505,o10555.o2752.o11119,8193,1).defer(o7308);
      }
      
      private function o7308(param1:Array) : void
      {
         var _loc4_:int = 0;
         var _loc3_:* = param1;
         for each(var _loc2_ in param1)
         {
            o6809 = _loc2_;
         }
      }
      
      private function o15742(param1:*) : void
      {
         if(param1.x != 0 || param1.y != 0)
         {
            o6809 = null;
         }
      }
      
      private function o7434() : void
      {
         if(o20488 == 1)
         {
            o18571();
            o2272();
         }
         else if(o20488 == 3)
         {
            o1051.o19115(o5839);
            o20488 = 4;
            o10555.o11243 = o10555.o1589;
         }
         else if(o20488 == 5)
         {
            o1051.o19115(o10944);
            o20488 = 6;
            o5269();
         }
      }
      
      private function o9586() : void
      {
         var _loc1_:* = null;
         if(!o1337)
         {
            o10720.x = 0;
            o10720.y = 0;
            return;
         }
         if(o20488 == 8)
         {
            if(o19847)
            {
               _loc1_ = o15460.o4078;
               _loc1_.x = o19847.body.position.x - o10555.body.position.x;
               _loc1_.y = o19847.body.position.y - o10555.body.position.y;
               if(o20964)
               {
                  if(_loc1_.o17573 > 500 * 500 || o6809 == null)
                  {
                     o20964 = false;
                  }
               }
               else if(_loc1_.o17573 < 275 * 275 && o6809 != null)
               {
                  o20964 = true;
                  _loc1_.rotate(-1.5707963267949 + 3.14159265358979 * Math.random());
                  o10720.x = _loc1_.x;
                  o10720.y = _loc1_.y;
                  o10720.o14528();
               }
            }
            if(o20964)
            {
               return;
            }
         }
         if(o1337.o16255.length > 0)
         {
            o10720.x = o1337.o16255[0].x - o10555.body.position.x;
            o10720.y = o1337.o16255[0].y - o10555.body.position.y;
            if(o10720.o17573 < 400)
            {
               o1337.o16255.shift();
               if(o1337.o16255.length == 0)
               {
                  o10720.x = 0;
                  o10720.y = 0;
                  o7434();
                  return;
               }
            }
            o10720.o14528();
         }
      }
      
      private function o2639() : void
      {
         if(o20488 == 0 || o20488 == 4 || o20488 == 9)
         {
            if(o18706)
            {
               o15777(o2511.o6315);
               o18706 = false;
            }
            o1051.o19115(o6804);
            o6804 = -1;
            o10720.x = 0;
            o10720.y = 0;
            return;
         }
         o9586();
         if(o20488 == 7)
         {
            return;
         }
         if(o6809 != null)
         {
            o2179.x = o6809.body.position.x - o10555.body.position.x;
            o2179.y = o6809.body.position.y - o10555.body.position.y;
            o2179.rotate(o10888);
            if(!o18706)
            {
               o15777(o2511.o7816);
               o18706 = true;
               if(o10555.o2752.o4670.o16859 == 2)
               {
                  o6804 = o1051.o4767(this,0.25,o20819);
               }
            }
            else
            {
               o10552 = o10552 + delta;
               if(o10552 >= 0.333)
               {
                  o10552 = 0;
                  o10888 = -o16769 / 2 + Math.random() * o16769;
               }
            }
         }
         else
         {
            if(!(o10720.x == 0 && o10720.y == 0))
            {
               o2179.x = o10720.x;
               o2179.y = o10720.y;
            }
            if(o18706)
            {
               o15777(o2511.o6315);
               o18706 = false;
            }
            o1051.o19115(o6804);
            o6804 = -1;
         }
      }
      
      private function o20819() : void
      {
         o15777(o2511.o6315);
         o15777(o2511.o7816);
      }
      
      public function o13831(param1:o7848) : void
      {
         o1864 = param1;
         o12639 = o1051.o4767(this,delta,o2419);
      }
      
      private function o2419() : void
      {
         if(o1864 && o1864.o8289() && o1864.body && o10555 && o10555.o8289() && o10555.body)
         {
            return;
         }
         var _loc1_:o18509 = o15460.o4078;
         _loc1_.x = o1864.body.position.x - o10555.body.position.x;
         _loc1_.y = o1864.body.position.y - o10555.body.position.y;
         var _loc2_:Number = o2179.o19203(_loc1_);
         if(_loc2_ > 4.39822971502571 * delta)
         {
            _loc2_ = 4.39822971502571 * delta;
         }
         else if(_loc2_ < -4.39822971502571 * delta)
         {
            _loc2_ = -4.39822971502571 * delta;
         }
         o2179.rotate(_loc2_);
         if(_loc2_ == 0)
         {
            o1051.o19115(o12639);
         }
      }
      
      private function o15488(param1:Event) : void
      {
         if(o10555.o11243 / o10555.o1589 <= 0.15)
         {
            o10555.o11243 = o10555.o1589 * 0.15;
            o9675();
         }
      }
      
      private function o9675() : void
      {
         var _loc1_:* = null;
         if(!o5150)
         {
            o20488 = 3;
            o4519.o8116.o4812.o10460.o1213.play(1);
            o10555.o12657(o5640.o9003,o15488);
            o10555.o19542();
            o10555.body.o15838(o8723.o5479);
            o10555.o19587 = false;
            o10555.o12487 = true;
            o10555.o14344 = true;
            o6809 = null;
            o1051.o19115(o11654);
            o14574 = true;
            if(o4175)
            {
               _loc1_ = o4519.o8116.profileData.o10206("dialogMessage.iceStationMessages.msgRetreatCapN");
               o4519.o8116.o20488.o2251(13,_loc1_);
            }
            else
            {
               _loc1_ = o4519.o8116.profileData.o10206("dialogMessage.iceStationMessages.msgRetreat" + o4051.toString());
               o4519.o8116.o20488.o2251(14,_loc1_);
               o4051 = Number(o4051) + 1;
               if(o4051 == 4)
               {
                  o4051 = 1;
               }
            }
            o5839 = o1051.o4767(this,2,o20322);
            o5150 = true;
         }
      }
      
      private function o20322() : void
      {
         var _loc1_:o16124 = o4519.o9721.o20360.o6048(o3755,o8723.o3732,o10555.body.id,o10555.body.position.x,o10555.body.position.y,0,o2561.x,o2561.y,o8723.o3969 | o8723.o18180,o8723.o3969 | o8723.o18180);
         _loc1_.defer(o5363);
      }
      
      private function o5363(param1:o972) : void
      {
         this.o1337 = param1;
      }
      
      public function o15510() : void
      {
         o10555.o2752.o20957();
         o10555.o12657(o5640.o9003,o15488);
         o10555.o14344 = true;
         o6809 = null;
         o1051.o19115(o11654);
         o20488 = 5;
         o10944 = o1051.o4767(this,2,o1972);
         o15880 = o1051.o9310(this,10,o5769);
      }
      
      private function o1972() : void
      {
         var _loc1_:o14506 = o4519.o9721.o20360.o13028(o8723.o3732,o10555.body.id,o10555.body.position.x,o10555.body.position.y,0,o2096.x,o2096.y,o8723.o3969 | o8723.o18180,o8723.o3969 | o8723.o18180);
         _loc1_.defer(o5363);
      }
      
      private function o5769() : void
      {
         if(o20488 != 7)
         {
            o2179.rotation = o4738;
            o10555.body.position.x = o2096.x;
            o10555.body.position.y = o2096.y;
            o20488 = 7;
            o1051.o19115(o12815);
            o1051.o19115(o10944);
         }
      }
      
      private function o5269() : void
      {
         o12815 = o1051.o4767(this,delta,o659);
      }
      
      private function o659() : void
      {
         if(o2179.rotation == o4738)
         {
            o20488 = 7;
            o1051.o19115(o12815);
            return;
         }
         var _loc1_:Number = o8839(o4738 - o2179.rotation);
         if(_loc1_ > 4.39822971502571 * delta)
         {
            _loc1_ = 4.39822971502571 * delta;
         }
         else if(_loc1_ < -4.39822971502571 * delta)
         {
            _loc1_ = -4.39822971502571 * delta;
         }
         o2179.rotation = o2179.rotation + _loc1_;
      }
      
      private function o8839(param1:Number) : Number
      {
         while(param1 > 3.14159265358979)
         {
            param1 = param1 - 2 * 3.14159265358979;
         }
         while(param1 <= -3.14159265358979)
         {
            param1 = param1 + 2 * 3.14159265358979;
         }
         return param1;
      }
      
      public function o6394() : Boolean
      {
         return o20488 == 7;
      }
      
      public function o13454() : void
      {
         o15777(o2511.o7816);
         o18706 = true;
         if(o10555.o2752.o4670.o16859 == 2)
         {
            o6804 = o1051.o4767(this,0.25,o20819);
         }
      }
      
      public function o7939() : void
      {
         if(o6804 != -1)
         {
            o1051.o19115(o6804);
         }
         o15777(o2511.o6315);
         o18706 = false;
      }
      
      public function o3239() : void
      {
         o20488 = 8;
         o1051.o19115(o12639);
         o1051.o19115(o12815);
         o10555.body.o15838(o6038 | o8723.o17798);
         o10555.o12487 = false;
         o10555.o2752.o11119 = o8723.o42;
         o10555.o2752.o3046 = o8723.o32 | o8723.o3732 | o8723.o3969 | o8723.o18180 | o8723.o19523;
         o10555.o2752.o10464 = [o17517,o5640,o10384];
         o10555.o2752.o13696 = [o17517,o5640,o10384];
         o10555.o14344 = false;
         o16505 = 450;
         o12505 = o17517;
         o11654 = o1051.o4767(this,1,o1590);
         o17430 = o1051.o4767(this,0.5,o16858);
         o10555.o16280(this,o5640.o12777,o2919);
      }
      
      private function o2919(param1:Event) : void
      {
         var _loc4_:* = null;
         var _loc2_:* = null;
         var _loc3_:* = null;
         o20488 = 9;
         if(o4175)
         {
            _loc4_ = o4519.o8116.profileData.o10206("dialogMessage.iceStationMessages.msgCapNDies");
            o4519.o8116.o20488.o2251(13,_loc4_);
            _loc2_ = o4519.o8116.o20291["com.ninjakiwi.sas4.scripts.loot.DroppedLoot"];
            _loc3_ = o4519.o8116.o2996.o2998(_loc2_,[new o18509(o10555.body.position.x,o10555.body.position.y),o1197.o5281,1]) as o6743;
         }
         o6200 = o1051.o9310(this,0.5,o3157);
      }
      
      private function o3157() : void
      {
         if(o10555 != null)
         {
            o4519.o9721.o2075.o471(o10555.o6691);
         }
         o10555.o19115();
         o1051.o19115(o12815);
         o1051.o19115(o10944);
         o1051.o19115(o17430);
         o1051.o19115(o10742);
         o1051.o19115(o6200);
         o1051.o19115(o14041);
         o1051.o19115(o17346);
         o1051.o19115(o6804);
         o1051.o19115(o12639);
         o1051.o19115(o15880);
         o1051.o19115(o5839);
         o1051.o19115(o8069);
      }
      
      override public function o19115() : void
      {
         o1864 = null;
         o12505 = null;
         o10555 = null;
         o6809 = null;
         o1337 = null;
         o2561 = null;
         o2096 = null;
         o19847 = null;
         o20400 = null;
         o3755 = null;
         super.o19115();
      }
      
      private function o16858() : void
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         if(o19847)
         {
            if(o1452(o19847).o15437(null) == false)
            {
               o19847 = null;
               o1337 = null;
            }
         }
         if(o19847 == null)
         {
            _loc1_ = o4519.o8116.o2996.o20698(o17517).slice();
            _loc2_ = 0;
            while(_loc2_ < _loc1_.length)
            {
               if(o1452(_loc1_[_loc2_]).o15437(null) == false)
               {
                  _loc1_.splice(_loc2_,1);
                  _loc2_--;
               }
               _loc2_++;
            }
            if(_loc1_.length > 0)
            {
               o19847 = _loc1_[0];
            }
         }
         if(o19847 != null)
         {
            o7925();
         }
      }
      
      private function o7925() : void
      {
         var _loc1_:o2041 = o4519.o9721.o20318.o1924(o19847);
         if(_loc1_ == null)
         {
            return;
         }
         var _loc2_:o14506 = o4519.o9721.o20360.o6048(_loc1_,o8723.o3732,o10555.body.id,o10555.body.position.x,o10555.body.position.y,o19847.body.id,o19847.body.position.x,o19847.body.position.y,o8723.o3969 | o8723.o18180,o8723.o3969 | o8723.o18180,Vector.<int>([]),Vector.<int>([]));
         _loc2_.defer(o5731);
      }
      
      private function o5731(param1:o972, param2:* = null) : void
      {
         this.o1337 = param1;
      }
   }
}
