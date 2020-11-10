package
{
   import flash.events.Event;
   import flash.utils.Dictionary;
   
   public class o20834 extends o8023
   {
       
      
      private const o5957:int = 1;
      
      private const o9101:int = 2;
      
      private var o11511:String;
      
      private var o12470:String;
      
      private var o3982:String;
      
      private var o15219:String;
      
      private var o1838:String;
      
      private var o502:o7331;
      
      private var o16135:o7331;
      
      private var o7317:o7331;
      
      private var o11297:o7331;
      
      private var o17022:o7331;
      
      private var o10266:o4332;
      
      private var o3523:o4332;
      
      private var o553:o4332;
      
      private var o6369:Dictionary;
      
      private var o15882:o20567;
      
      private var o4270:o20567;
      
      private var o1432:o17517;
      
      private var o4307:Boolean = false;
      
      private var o5510:int = -1;
      
      private var o11620:Dictionary;
      
      private var o7632:o14096;
      
      private var o17526:Boolean = false;
      
      public function o20834(param1:o17517, param2:o2415, param3:o20567 = null)
      {
         var _loc7_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc4_:* = null;
         var _loc10_:* = null;
         var _loc9_:* = null;
         super();
         this.o6369 = new Dictionary();
         this.o11620 = new Dictionary();
         this.o4270 = param3;
         this.o15882 = param3;
         this.o1432 = param1;
         if(o4519.o13206.o2685.o10591[o1432.o5973])
         {
            _loc7_ = o4519.o8116.o16619;
            _loc5_ = o4519.o13206.o2685.o10591[o1432.o5973];
            if(_loc5_)
            {
               var _loc12_:int = 0;
               var _loc11_:* = _loc5_.o4256;
               for each(var _loc8_ in _loc5_.o4256)
               {
                  if(_loc8_.type == 0)
                  {
                     _loc6_ = new o14096();
                     _loc4_ = o4519.o8116.o1184.o11620[_loc8_.o11876];
                     _loc10_ = new o10481(_loc4_,_loc8_.grade);
                     _loc6_.init(_loc10_,o4519.o8116.o1184.o17638[_loc8_.o11876],_loc7_,_loc8_.o631,0);
                     _loc6_.o263 = _loc8_.o263;
                     _loc6_.o13296 = _loc8_.o15192;
                     _loc6_.o4752 = _loc8_.o4752;
                     _loc6_.o1419 = _loc8_.o1419;
                     o11620[_loc6_.o10748] = _loc6_;
                     _loc9_ = o4519.o8116.o476.o9392.o1131(_loc6_.o4752);
                     if(_loc9_ && _loc9_.o7391)
                     {
                        o6369[_loc6_.o10748] = o4519.o8116.o476.o9392.o1131(_loc6_.o4752);
                        o15882 = o6369[_loc6_.o10748];
                     }
                  }
               }
            }
         }
         if(o15882)
         {
            o11511 = o15882.o5805["deathAnimation"];
            o12470 = o15882.o5805["rifleAnimation"];
            o3982 = o15882.o5805["pistolAnimation"];
            o15219 = o15882.o5805["rifleAttackAnimation"];
            o1838 = o15882.o5805["pistolAttackAnimation"];
            o3523 = o4519.o8116.o11954.o10869();
            o3523.o9824 = false;
            o11297 = o4519.o8116.o11676.o6798(o15219);
            o11297.o11525(o3523);
            o10266 = o4519.o8116.o11954.o10869();
            o553 = o4519.o8116.o11954.o10869();
            o20110();
            o10266.position = new o2415();
            o10266.o16990 = o11381.o9071 + 1;
            o4519.o8116.o11954.o9226(o10266);
            o4519.o8116.o11954.align(o10266,o1432.o15465);
            o10266.o9824 = false;
            o553.position = new o2415();
            o553.o16990 = o11381.o9071 + 1;
            o4519.o8116.o11954.o9226(o553);
            o4519.o8116.o11954.align(o553,o1432.o15465);
            o553.o9824 = false;
            return;
         }
      }
      
      private function o20110() : void
      {
         o11297 = o4519.o8116.o11676.o6798(o15219);
         o11297.o11525(o3523);
         o11297.o12265 = false;
         o11297.stop();
         o17022 = o4519.o8116.o11676.o6798(o1838);
         o17022.o11525(o3523);
         o17022.o12265 = false;
         o17022.stop();
         o502 = o4519.o8116.o11676.o6798(o11511);
         o502.o11525(o3523);
         o502.o12265 = false;
         o502.stop();
         o7317 = o4519.o8116.o11676.o6798(o3982);
         o7317.o11525(o3523);
         o7317.o12265 = false;
         o7317.stop();
         o16135 = o4519.o8116.o11676.o6798(o12470);
         o16135.o11525(o3523);
         o16135.o12265 = false;
         o16135.stop();
         o10266.o16396 = o17541.o13617(o12470);
         o10266.o9824 = false;
         o553.o16396 = o17541.o13617(o502);
         o553.o9824 = false;
         o11297.o11525(o10266);
      }
      
      public function o9409(param1:int) : void
      {
         if(o553)
         {
            o553.o9824 = false;
         }
         if(o10266)
         {
            o10266.o9824 = false;
         }
         if(o6369[param1] != null)
         {
            o7632 = o11620[param1];
            o15882 = o6369[param1];
         }
         else if(o4270)
         {
            o15882 = o4270;
         }
         else
         {
            return;
         }
         if(o15882)
         {
            if(o15882)
            {
               o11511 = o15882.o5805["deathAnimation"];
               o12470 = o15882.o5805["rifleAnimation"];
               o3982 = o15882.o5805["pistolAnimation"];
               o15219 = o15882.o5805["rifleAttackAnimation"];
               o1838 = o15882.o5805["pistolAttackAnimation"];
               o20110();
               o17461();
            }
         }
      }
      
      public function o14321() : void
      {
         if(o15882 && o1432 && o1432.o2752)
         {
            o8867();
            switch(int(o1432.o2752.o4670.o12735) - 1)
            {
               case 0:
                  o17022.o11525(o10266);
                  o17022.gotoAndPlay(0);
                  o17022.o19926(this,o1490.o16612,o12233);
                  break;
               case 1:
                  o11297.o11525(o10266);
                  o11297.gotoAndPlay(0);
                  o11297.o19926(this,o1490.o16612,o12233);
            }
         }
      }
      
      public function o18103() : void
      {
         if(o15882 == null)
         {
            return;
         }
         o8867();
         o553.o9824 = true;
         o10266.o9824 = false;
         o502.o11525(o553);
         o502.gotoAndPlay(0);
         o502.o19926(this,o1490.o16612,o12233);
         o502.o12265 = false;
         o4307 = true;
      }
      
      private function o8867() : void
      {
         if(o15882 == null)
         {
            return;
         }
         o17022.o12657(o1490.o16612,o12233);
         o11297.o12657(o1490.o16612,o12233);
         o502.o12657(o1490.o16612,o12233);
         o17022.stop();
         o11297.stop();
         o7317.stop();
         o16135.stop();
         o502.stop();
         o17022.o11525(o3523);
         o11297.o11525(o3523);
         o7317.o11525(o3523);
         o16135.o11525(o3523);
         o502.o11525(o3523);
      }
      
      public function o14717() : void
      {
         if(o15882 == null)
         {
            return;
         }
         o17461();
         o553.o9824 = false;
         o10266.o9824 = true;
         o4307 = false;
      }
      
      private function o12233(param1:Event) : void
      {
         if(o15882 == null)
         {
            return;
         }
         o8867();
      }
      
      private function o17461() : void
      {
         if(o15882 == null)
         {
            return;
         }
         o8867();
         o553.o9824 = false;
         o10266.o9824 = true;
         switch(int(o1432.o2752.o4670.o12735) - 1)
         {
            case 0:
               o7317.o11525(o10266);
               o7317.gotoAndPlay(0);
               break;
            case 1:
               o16135.o11525(o10266);
               o16135.gotoAndPlay(0);
         }
      }
      
      override public function o19115() : void
      {
         if(o17022)
         {
            o17022.o12657(o1490.o16612,o12233);
            o17022.o19115();
         }
         if(o11297)
         {
            o11297.o12657(o1490.o16612,o12233);
            o11297.o19115();
         }
         if(o502)
         {
            o502.o12657(o1490.o16612,o12233);
            o502.o19115();
         }
         if(o16135)
         {
            o16135.o19115();
         }
         if(o7317)
         {
            o7317.o19115();
         }
         if(o10266)
         {
            o4519.o8116.o11954.o11867(o10266);
         }
         if(o3523)
         {
            o4519.o8116.o11954.o11867(o3523);
         }
         if(o553)
         {
            o4519.o8116.o11954.o11867(o553);
         }
         o11620 = null;
         o10266 = null;
         o3523 = null;
         o502 = null;
         o16135 = null;
         o7317 = null;
         o7632 = null;
         o11297 = null;
         o15882 = null;
         o17022 = null;
         o6369 = null;
         o4270 = null;
         o1051.o19115(o5510);
      }
   }
}
