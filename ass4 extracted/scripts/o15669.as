package
{
   use namespace b2internal;
   
   public class o15669
   {
       
      
      private var o15664:Vector.<Vector.<o5681>>;
      
      private var o4735;
      
      public function o15669(param1:*)
      {
         super();
         o4735 = param1;
         o20937();
      }
      
      b2internal function o16837(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         o15664[param3][param4].o10715 = param1;
         o15664[param3][param4].o20737 = param2;
         o15664[param3][param4].o8288 = true;
         if(param3 != param4)
         {
            o15664[param4][param3].o10715 = param1;
            o15664[param4][param3].o20737 = param2;
            o15664[param4][param3].o8288 = false;
         }
      }
      
      b2internal function o20937() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         o15664 = new Vector.<Vector.<o5681>>(3);
         _loc2_ = 0;
         while(_loc2_ < 3)
         {
            o15664[_loc2_] = new Vector.<o5681>(3);
            _loc1_ = 0;
            while(_loc1_ < 3)
            {
               o15664[_loc2_][_loc1_] = new o5681();
               _loc1_++;
            }
            _loc2_++;
         }
         o16837(o14366.o6611,o14366.o18143,0,0);
         o16837(o1113.o6611,o1113.o18143,1,0);
         o16837(o16157.o6611,o16157.o18143,1,1);
         o16837(o11597.o6611,o11597.o18143,2,0);
         o16837(o14502.o6611,o14502.o18143,1,2);
      }
      
      public function o6611(param1:o11359, param2:o11359) : o16520
      {
         var _loc3_:* = null;
         var _loc7_:int = param1.o20697();
         var _loc6_:int = param2.o20697();
         var _loc4_:o5681 = o15664[_loc7_][_loc6_];
         if(_loc4_.o10696)
         {
            _loc3_ = _loc4_.o10696;
            _loc4_.o10696 = _loc3_.o1570;
            _loc4_.o4811 = Number(_loc4_.o4811) - 1;
            _loc3_.o6246(param1,param2);
            return _loc3_;
         }
         var _loc5_:Function = _loc4_.o10715;
         if(_loc5_ != null)
         {
            if(_loc4_.o8288)
            {
               _loc3_ = _loc5_(o4735);
               _loc3_.o6246(param1,param2);
               return _loc3_;
            }
            _loc3_ = _loc5_(o4735);
            _loc3_.o6246(param2,param1);
            return _loc3_;
         }
         return null;
      }
      
      public function o18143(param1:o16520) : void
      {
         if(param1.o19876.o13593 > 0)
         {
            param1.o5573.o14645.o17676(true);
            param1.o18752.o14645.o17676(true);
         }
         var _loc5_:int = param1.o5573.o20697();
         var _loc4_:int = param1.o18752.o20697();
         var _loc3_:o5681 = o15664[_loc5_][_loc4_];
         _loc3_.o4811 = Number(_loc3_.o4811) + 1;
         param1.o1570 = _loc3_.o10696;
         _loc3_.o10696 = param1;
         var _loc2_:Function = _loc3_.o20737;
      }
   }
}
