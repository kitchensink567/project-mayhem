package
{
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.system.MessageChannel;
   import flash.utils.Dictionary;
   
   public class o1974 extends o17557 implements o20139
   {
       
      
      private var o13507:uint = 0;
      
      private var o5704:uint = 0;
      
      private var o2849:uint = 0;
      
      private var o10601:Dictionary;
      
      private var o15063:Boolean = false;
      
      private var o19519:Function;
      
      public function o1974(param1:MessageChannel, param2:MessageChannel)
      {
         o10601 = new Dictionary();
         super(param1,param2);
         param2.addEventListener("channelMessage",o1204);
      }
      
      public function set o16923(param1:Boolean) : void
      {
      }
      
      public function get o16923() : Boolean
      {
         return true;
      }
      
      public function o19115() : void
      {
         o5964.send(27);
         o15063 = true;
      }
      
      public function o8289() : Boolean
      {
         return o15063;
      }
      
      public function o4840(param1:Array, param2:Array) : void
      {
         o5964.send(21);
         o5964.send(param1.length);
         var _loc6_:int = 0;
         var _loc5_:* = param1;
         for each(var _loc4_ in param1)
         {
            o5964.send(_loc4_[0]);
            o5964.send(_loc4_[1]);
            o5964.send(_loc4_[2]);
         }
         o5964.send(param2.length);
         var _loc8_:int = 0;
         var _loc7_:* = param2;
         for each(var _loc3_ in param2)
         {
            o5964.send(_loc3_[0]);
            o5964.send(_loc3_[1]);
         }
      }
      
      public function o13028(param1:uint, param2:Number, param3:Number, param4:uint, param5:Number, param6:Number, param7:uint, param8:uint, param9:Vector.<int>, param10:Vector.<int>) : o16124
      {
         var _loc12_:o16124 = new o16124();
         var _loc13_:int = 0;
         while(o10601[_loc13_] != null)
         {
            _loc13_++;
         }
         o10601[_loc13_] = _loc12_;
         o5964.send(20);
         o5964.send(param1);
         o5964.send(param2);
         o5964.send(param3);
         o5964.send(param4);
         o5964.send(param5);
         o5964.send(param6);
         o5964.send(param7);
         o5964.send(param8);
         o5964.send(param9.length);
         var _loc15_:int = 0;
         var _loc14_:* = param9;
         for each(var _loc11_ in param9)
         {
            o5964.send(_loc11_);
         }
         o5964.send(param10.length);
         var _loc17_:int = 0;
         var _loc16_:* = param10;
         for each(_loc11_ in param10)
         {
            o5964.send(_loc11_);
         }
         o5964.send(_loc13_);
         return _loc12_;
      }
      
      public function o4816(param1:Number, param2:Number, param3:Number, param4:Number, param5:uint, param6:uint, param7:Vector.<int> = null) : o16124
      {
         var _loc9_:o16124 = new o16124();
         var _loc10_:int = 0;
         while(o10601[_loc10_] != null)
         {
            _loc10_++;
         }
         o10601[_loc10_] = _loc9_;
         o5964.send(17);
         o5964.send(param1);
         o5964.send(param2);
         o5964.send(param3);
         o5964.send(param4);
         o5964.send(param5);
         o5964.send(param6);
         o5964.send(_loc10_);
         if(param7 != null)
         {
            o5964.send(param7.length);
            var _loc12_:int = 0;
            var _loc11_:* = param7;
            for each(var _loc8_ in param7)
            {
               o5964.send(_loc8_);
            }
         }
         else
         {
            o5964.send(-1);
         }
         return _loc9_;
      }
      
      public function o20896(param1:uint, param2:*) : void
      {
      }
      
      public function clear() : void
      {
         o5964.send(28);
      }
      
      public function o11481(param1:int, param2:Number = 0, param3:Boolean = false, param4:Boolean = true) : uint
      {
         o13507 = Number(o13507) + 1;
         o5964.send(0);
         o5964.send(o13507);
         o5964.send(param1);
         o5964.send(param2);
         o5964.send(param3);
         o5964.send(param4);
         return o13507;
      }
      
      public function o3293() : o16124
      {
         return new o16124();
      }
      
      public function o2503(param1:uint) : o16124
      {
         o5964.send(26);
         o5964.send(param1);
         return new o16124();
      }
      
      public function o8142(param1:uint) : void
      {
         o5964.send(12);
         o5964.send(param1);
      }
      
      public function o16894(param1:uint, param2:Number) : void
      {
         o5964.send(23);
         o5964.send(param1);
         o5964.send(param2);
      }
      
      public function o15873(param1:uint, param2:uint) : void
      {
         o5964.send(5);
         o5964.send(param1);
         o5964.send(param2);
      }
      
      public function o8508(param1:uint, param2:uint) : void
      {
         o5964.send(22);
         o5964.send(param1);
         o5964.send(param2);
      }
      
      public function o7364(param1:uint, param2:uint) : void
      {
         o5964.send(30);
         o5964.send(param1);
         o5964.send(param2);
      }
      
      public function o9206(param1:uint, param2:uint) : void
      {
         o5964.send(15);
         o5964.send(param1);
         o5964.send(param2);
      }
      
      public function o10716() : uint
      {
         o5704 = Number(o5704) + 1;
         o5964.send(1);
         o5964.send(o5704);
         return o5704;
      }
      
      public function o16847(param1:uint, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         o5964.send(3);
         o5964.send(param1);
         o5964.send(param2);
         o5964.send(param3);
         o5964.send(param4);
         o5964.send(param5);
      }
      
      public function o8511(param1:uint, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         o5964.send(18);
         o5964.send(param1);
         o5964.send(param2);
         o5964.send(param3);
         o5964.send(param4);
         o5964.send(param5);
      }
      
      public function o7044(param1:uint, param2:Number) : void
      {
         o5964.send(10);
         o5964.send(param1);
         o5964.send(param2);
      }
      
      public function o9730(param1:uint, param2:Vector.<o18509>) : void
      {
         o5964.send(19);
         o5964.send(param1);
         o5964.send(param2.length);
         var _loc5_:int = 0;
         var _loc4_:* = param2;
         for each(var _loc3_ in param2)
         {
            o5964.send(_loc3_.x);
            o5964.send(_loc3_.y);
         }
      }
      
      public function o9297(param1:uint = 1, param2:uint = 4294967295, param3:uint = 4294967295, param4:Boolean = false, param5:Number = 0, param6:Number = 0) : uint
      {
         o2849 = Number(o2849) + 1;
         o5964.send(2);
         o5964.send(o2849);
         o5964.send(param1);
         o5964.send(param2);
         o5964.send(param3);
         o5964.send(param4);
         o5964.send(param5);
         o5964.send(param6);
         return o2849;
      }
      
      public function o18214(param1:uint, param2:uint) : void
      {
         o5964.send(4);
         o5964.send(param1);
         o5964.send(param2);
      }
      
      public function o6141(param1:uint, param2:Number, param3:Number) : void
      {
         o5964.send(7);
         o5964.send(param1);
         o5964.send(param2);
         o5964.send(param3);
      }
      
      public function o16687(param1:uint, param2:Number) : void
      {
         o5964.send(9);
         o5964.send(param1);
         o5964.send(param2);
      }
      
      public function o8564(param1:uint, param2:Number, param3:Number) : void
      {
         o5964.send(8);
         o5964.send(param1);
         o5964.send(param2);
         o5964.send(param3);
      }
      
      public function o9946(param1:uint, param2:uint) : void
      {
         o5964.send(29);
         o5964.send(param1);
         o5964.send(param2);
      }
      
      public function o20232(param1:uint, param2:*) : void
      {
      }
      
      private function o1204(param1:Event) : void
      {
         var _loc8_:int = 0;
         var _loc9_:* = 0;
         var _loc6_:* = 0;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc2_:int = 0;
         var _loc13_:* = undefined;
         var _loc11_:int = 0;
         var _loc3_:* = null;
         var _loc14_:int = 0;
         var _loc10_:* = null;
         var _loc7_:* = null;
         if(!o14061())
         {
            return;
         }
         var _loc12_:int = receive();
         switch(int(_loc12_) - 1)
         {
            case 0:
               _loc9_ = uint(receive(true));
               _loc6_ = uint(receive(true));
               _loc15_ = receive(true);
               _loc16_ = receive(true);
               dispatchEvent(Mem.create(this,o11910,[_loc9_,_loc6_,_loc15_,_loc16_]));
               break;
            case 1:
               _loc9_ = uint(receive(true));
               _loc6_ = uint(receive(true));
               dispatchEvent(Mem.create(this,o16198,[_loc9_,_loc6_]));
               break;
            case 2:
               _loc11_ = receive(true);
               o10601[_loc11_].data = {
                  "body":receive(true),
                  "fixture":receive(true),
                  "x":receive(true),
                  "y":receive(true),
                  "promise":o10601[_loc11_]
               };
               delete o10601[_loc11_];
               break;
            case 3:
               _loc11_ = receive(true);
               _loc3_ = new o972();
               _loc14_ = receive(true);
               _loc8_ = 0;
               while(_loc8_ < _loc14_)
               {
                  _loc3_.o16255.push(new o18509(receive(true),receive(true)));
                  _loc8_++;
               }
               o10601[_loc11_].data = _loc3_;
               delete o10601[_loc11_];
               break;
            case 4:
               _loc4_ = uint(receive(true));
               _loc5_ = uint(receive(true));
               _loc2_ = receive(true);
               _loc13_ = new Vector.<o18509>();
               _loc8_ = 0;
               while(_loc8_ < _loc2_)
               {
                  _loc13_.push(new o18509(receive(true),receive(true)));
                  _loc8_++;
               }
               dispatchEvent(Mem.create(this,o18787,[_loc4_,_loc5_,_loc13_]));
               break;
            case 5:
               _loc4_ = uint(receive(true));
               _loc5_ = uint(receive(true));
               dispatchEvent(Mem.create(this,o11273,[_loc4_,_loc5_]));
               break;
            case 6:
               _loc10_ = receive(true);
               _loc7_ = new UncaughtErrorEvent("uncaughtError",true,true,"World Worker:\n" + _loc10_);
               if(o19519 != null)
               {
                  o19519(_loc7_);
                  break;
               }
               break;
            case 7:
               _loc9_ = uint(receive(true));
               dispatchEvent(Mem.create(this,o16266,[_loc9_]));
         }
      }
      
      public function set o16316(param1:Function) : void
      {
         o19519 = param1;
      }
   }
}
