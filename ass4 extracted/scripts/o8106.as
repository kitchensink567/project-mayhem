package
{
   import flash.utils.Timer;
   
   public class o8106 extends o8023
   {
       
      
      private var o18759:o3425;
      
      private var o19055:Boolean = false;
      
      private var o16388:Timer;
      
      private var o11325:Number = 0.1;
      
      private var o513:Number = 10;
      
      private var o15125:Vector.<o3355>;
      
      public function o8106(param1:o3425)
      {
         super();
         o15125 = new Vector.<o3355>();
         var _loc4_:int = 0;
         var _loc3_:* = param1.o8906;
         for(var _loc2_ in param1.o8906)
         {
            o15125.push(param1.o8906[_loc2_] as o3355);
         }
      }
      
      public function start() : void
      {
         if(o19055)
         {
            return;
         }
         o19055 = true;
         o1051.o9310(this,o20852.o3471(o11325,o513),o20573);
      }
      
      private function o20573() : void
      {
         if(o19055 == false || o4519.o8116.profileData.o1317.o9671 == false)
         {
            return;
         }
         var _loc1_:Number = Math.random() * 0.3 + 0.2;
         o15125[o20852.o17418(o15125.length - 1)].play(_loc1_);
         o1051.o9310(this,o20852.o3471(o11325,o513),o20573);
      }
      
      public function stop() : void
      {
         o19055 = false;
      }
   }
}
