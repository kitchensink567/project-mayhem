package
{
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.system.MessageChannel;
   import flash.system.Worker;
   import flash.utils.Dictionary;
   
   public class o20324 extends o17557 implements o14727
   {
       
      
      private var o9182:Worker = null;
      
      private var o19519:Function;
      
      private var o10035:Boolean = true;
      
      private var o2154:o12600;
      
      public function o20324(param1:MessageChannel, param2:MessageChannel, param3:Worker)
      {
         o2154 = new o8023();
         this.o9182 = param3;
         super(param1,param2);
         param2.addEventListener("channelMessage",o1204);
      }
      
      public function get o12322() : int
      {
         return 0;
      }
      
      public function o19115() : void
      {
      }
      
      private function o1204(param1:Event) : void
      {
         var _loc14_:* = undefined;
         var _loc12_:int = 0;
         var _loc5_:int = 0;
         var _loc13_:int = 0;
         var _loc8_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc15_:int = 0;
         var _loc7_:int = 0;
         var _loc9_:* = null;
         var _loc11_:* = null;
         var _loc6_:* = null;
         var _loc4_:* = null;
         if(!o14061())
         {
            return;
         }
         var _loc16_:int = receive();
         switch(int(_loc16_))
         {
            case 0:
               _loc14_ = receive(true);
               _loc12_ = receive(true);
               _loc5_ = receive(true);
               _loc13_ = receive(true);
               _loc8_ = receive(true);
               _loc10_ = receive(true);
               _loc2_ = receive(true);
               _loc3_ = receive(true);
               _loc18_ = receive(true);
               _loc17_ = receive(true);
               _loc15_ = receive(true);
               _loc7_ = receive(true);
               _loc9_ = null;
               _loc11_ = Mem.create(this,o551) as o551;
               _loc11_.initialise(_loc14_,_loc12_,_loc5_,_loc13_,_loc8_,_loc10_,_loc2_,_loc3_,_loc18_,_loc17_,_loc15_,_loc7_,_loc9_);
               dispatchData(_loc11_);
               break;
            case 1:
               _loc6_ = receive(true);
               _loc4_ = new UncaughtErrorEvent("uncaughtError",true,true,"Texture Manager Worker:\n" + _loc6_);
               if(o19519 != null)
               {
                  o19519(_loc4_);
                  break;
               }
         }
      }
      
      public function o18219(param1:o3135, param2:Dictionary) : void
      {
         var _loc4_:o9093 = param1 as o9093;
         send(1,_loc4_.o7339(o9182),_loc4_.o3940(o9182));
         var _loc3_:int = 0;
         var _loc7_:int = 0;
         var _loc6_:* = param2;
         for(var _loc5_ in param2)
         {
            _loc3_++;
         }
         send(_loc3_);
         var _loc9_:int = 0;
         var _loc8_:* = param2;
         for(_loc5_ in param2)
         {
            send(_loc5_);
            send(param2[_loc5_]);
         }
      }
      
      public function o13252(param1:*, param2:int = 1, param3:Number = 1, param4:Number = 1, param5:Number = 0, param6:Number = 0, param7:int = 0, param8:int = 0) : void
      {
         send(0,param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public function o2336() : void
      {
         send(4);
      }
      
      public function o14068() : void
      {
         send(2);
      }
      
      public function o15777(param1:int) : void
      {
         o2154.o15777(param1);
      }
      
      public function dispatchData(param1:Event) : void
      {
         o2154.dispatchData(param1);
      }
      
      public function o16280(param1:o12600, param2:int, param3:Function) : void
      {
         o2154.o16280(param1,param2,param3);
      }
      
      public function o19926(param1:o12600, param2:int, param3:Function) : void
      {
         o2154.o19926(param1,param2,param3);
      }
      
      public function o12657(param1:int, param2:Function) : void
      {
         o2154.o12657(param1,param2);
      }
      
      public function o8289() : Boolean
      {
         return o2154.o8289();
      }
      
      public function o11980(param1:Number) : void
      {
         send(3,param1);
      }
      
      public function set o16316(param1:Function) : void
      {
         o19519 = param1;
      }
      
      public function get o2026() : int
      {
         return 0;
      }
   }
}
