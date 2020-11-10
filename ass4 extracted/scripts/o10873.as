package
{
   import flash.display.DisplayObject;
   import flash.events.EventDispatcher;
   
   public class o10873 extends o8023
   {
       
      
      private var o19770:Boolean = false;
      
      public var o19419:o12186;
      
      public var o10608:o14514;
      
      public var o16587:DisplayObject = null;
      
      public var o19411:String = null;
      
      public var o6711:int = 1;
      
      private var o118:int;
      
      public var o18680:Boolean = true;
      
      public var o10023:EventDispatcher;
      
      public function o10873()
      {
         o19419 = new o12186();
         o10608 = new o14514();
         o10023 = new EventDispatcher();
         super();
      }
      
      public function o2251(param1:int, param2:String, param3:Function = null, param4:Function = null, param5:Number = 0) : void
      {
         if(o19770)
         {
            return;
         }
         if(param2 == null)
         {
            param2 = "NULL MESSAGE";
         }
         if(param5 == 0)
         {
            param5 = Number(param2.length * 0.0666666666666667);
         }
         if(param5 < 2)
         {
            param5 = 2;
         }
         dispatchData(new o1447(param2,param1,param3,param4,param5));
      }
      
      private function o19735() : String
      {
         return o118.toString() + " seconds until level complete";
      }
      
      public function o2051(param1:int) : void
      {
         if(o19770)
         {
            return;
         }
         o118 = param1;
         dispatchData(new o16562(o7961.o19211,o19735(),0));
         o1051.o9310(this,1,o15383);
      }
      
      public function o19762() : void
      {
         o118 = 0;
      }
      
      private function o15383() : void
      {
         if(o118 <= 0)
         {
            dispatchData(new o16562(o7961.o9175,o118.toString(),0));
            return;
         }
         o118 = Number(o118) - 1;
         dispatchData(new o16562(o7961.o19211,o19735(),0));
         o1051.o9310(this,1,o15383);
      }
      
      public function o9874(param1:String, param2:Boolean) : void
      {
         if(o19770)
         {
            return;
         }
         if("" != "paul")
         {
         }
         dispatchData(new o14689(o7961.o9874,param1,param2));
      }
      
      public function o675(param1:String, param2:Number, param3:Number) : void
      {
         if(o19770)
         {
            return;
         }
         if("" != "paul")
         {
         }
         dispatchData(new o14689(o7961.o16808,param1,true,param2,param3));
      }
      
      public function o13122(param1:String) : void
      {
         if(o19770)
         {
            return;
         }
         if("" != "paul")
         {
         }
         dispatchData(new o14689(o7961.o5613,param1));
      }
      
      public function o12056(param1:String) : void
      {
         if(o19770)
         {
            return;
         }
         if("" != "paul")
         {
         }
         dispatchData(new o14689(o7961.o7625,param1));
      }
      
      public function o20575(param1:int) : void
      {
         if(o19770)
         {
            return;
         }
         dispatchData(new o16562(o7961.o2870,"",param1));
      }
      
      public function o18534() : void
      {
         if(o19770)
         {
            return;
         }
         dispatchData(new o2063(o2063.o18534));
      }
      
      public function o19079() : void
      {
         if(o19770)
         {
            return;
         }
         dispatchData(new o2063(o2063.o19079));
      }
      
      public function o17336() : void
      {
         if(o19770)
         {
            return;
         }
         dispatchData(new o2063(o2063.o17336));
      }
      
      public function o16740() : void
      {
         if(o19770)
         {
            return;
         }
         dispatchData(new o2063(o2063.o16740));
      }
      
      public function o2278() : void
      {
         if(o19770)
         {
            return;
         }
         dispatchData(new o2063(o2063.o2278));
      }
      
      public function o3839() : void
      {
         if(o19770)
         {
            return;
         }
         dispatchData(new o2063(o2063.o3839));
      }
      
      public function o11263(param1:int, param2:int, param3:int) : void
      {
         if(o19770)
         {
            return;
         }
         var _loc4_:o2063 = new o2063(o2063.o11263);
         _loc4_.o8685(param1,param2,param3);
         dispatchData(_loc4_);
      }
      
      public function o19764(param1:Number) : void
      {
         if(o19770)
         {
            return;
         }
         var _loc2_:o2063 = new o2063(o2063.o19764);
         _loc2_.o15866 = param1;
         dispatchData(_loc2_);
      }
      
      public function o16636(param1:int, param2:int, param3:int) : void
      {
         if(o19770)
         {
            return;
         }
         var _loc4_:o2063 = new o2063(o2063.o16636);
         _loc4_.o3906(param1,param2,param3);
         dispatchData(_loc4_);
      }
      
      public function o5604(param1:String, param2:int, param3:o7848) : void
      {
      }
      
      public function o9885(param1:int, param2:String) : void
      {
         if(o19770)
         {
            return;
         }
         dispatchData(new o7220(param1,param2));
      }
   }
}
