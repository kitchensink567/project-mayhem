package
{
   import flash.utils.Dictionary;
   
   public class o460
   {
       
      
      public var o5506:o7374;
      
      public var o17961:o1717;
      
      public var o4723:o19696;
      
      public var o11612:o3262;
      
      public function o460()
      {
         super();
      }
      
      public function init(param1:o2693) : void
      {
         o5506 = new o7374();
         o17961 = new o1717();
         o4723 = new o19696();
         o11612 = new o3262();
         o5506.init(param1);
         o17961.init(param1);
         o4723.init(param1,"loot.rollStrongboxRates.");
         o11612.init(param1);
      }
      
      private function o12740(param1:Number, param2:Number) : void
      {
         if(Math.abs(param1 - param2) > 0.0001 || isNaN(param1) || isNaN(param2))
         {
            throw new Error("assert failed: " + param1.toString() + " != " + param2.toString());
         }
      }
      
      public function o15779(param1:Dictionary) : void
      {
         o12740(param1[o1197.o9344][o19053.o17861],0.6);
         o12740(param1[o1197.o9344][o19053.o14325],0.35);
         o12740(param1[o1197.o9344][o19053.o14669],0.05);
         o12740(param1[o1197.o8919][o19053.o17861],0.35);
         o12740(param1[o1197.o8919][o19053.o14325],0.35);
         o12740(param1[o1197.o8919][o19053.o14669],0.3);
         o12740(param1[o1197.o5281][o19053.o17861],0);
         o12740(param1[o1197.o5281][o19053.o14325],0);
         o12740(param1[o1197.o5281][o19053.o14669],1);
         o12740(param1[o1197.o19789][o19053.o17861],0.35);
         o12740(param1[o1197.o19789][o19053.o14325],0.5);
         o12740(param1[o1197.o19789][o19053.o14669],0.15);
         o12740(param1[o1197.o3007][o19053.o17861],0);
         o12740(param1[o1197.o3007][o19053.o14325],1);
         o12740(param1[o1197.o3007][o19053.o14669],0);
         o12740(param1[o1197.o17861][o19053.o17861],1);
         o12740(param1[o1197.o17861][o19053.o14325],0);
         o12740(param1[o1197.o17861][o19053.o14669],0);
      }
      
      public function o9736(param1:Array) : void
      {
         o12740(o17961.o15724,0.35);
         o12740(o17961.o2438,0.52);
         o12740(o17961.o6904,0.64);
         o12740(o17961.o15526,0.74);
         o12740(o17961.o9989,0.83);
         o12740(o17961.o15198,0.9);
         o12740(o17961.o3315,0.95);
         o12740(o17961.o15612,0.98);
         o12740(o17961.o15075,1);
         o1949(param1,1,0.35);
         o1949(param1,2,0.52);
         o1949(param1,4,0.64);
         o1949(param1,5,0.74);
         o1949(param1,6,0.83);
         o1949(param1,7,0.9);
         o1949(param1,8,0.95);
         o1949(param1,9,0.98);
         o1949(param1,10,1);
      }
      
      public function o20590(param1:Array) : void
      {
         o1949(param1,o4189.o19843,4.5);
         o1949(param1,o4189.o17868,6.5);
         o1949(param1,o4189.o20918,8);
         o1949(param1,o4189.o6765,9);
         o1949(param1,o4189.o16296,9.55);
         o1949(param1,o4189.o11328,9.86);
         o1949(param1,o4189.o15243,9.96);
         o1949(param1,o4189.o1897,10);
      }
      
      private function o19846(param1:Array, param2:int) : Number
      {
         var _loc5_:int = 0;
         var _loc4_:* = param1;
         for each(var _loc3_ in param1)
         {
            if(_loc3_[0] == param2)
            {
               return _loc3_[1];
            }
         }
         throw new Error("Value now found");
      }
      
      private function o1949(param1:Array, param2:int, param3:Number) : void
      {
         var _loc4_:Number = o19846(param1,param2);
         o12740(_loc4_,param3);
      }
   }
}
