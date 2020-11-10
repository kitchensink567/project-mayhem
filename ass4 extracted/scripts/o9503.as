package
{
   import flash.utils.Dictionary;
   
   public class o9503
   {
       
      
      public var o19419:o14200;
      
      public var o1784:o9145;
      
      private var o7287:Dictionary;
      
      public function o9503(param1:o9145, param2:o14200)
      {
         o7287 = new Dictionary();
         super();
         this.o1784 = param1;
         this.o19419 = param2;
      }
      
      public function o15479(param1:int) : int
      {
         var _loc4_:* = null;
         var _loc2_:int = 0;
         var _loc3_:o14096 = o19419.o5292.o9063(param1);
         if(_loc3_ != null)
         {
            if(o4519.o13206.o17723)
            {
               return 30;
            }
            return o19419.o5292.o9556;
         }
         _loc4_ = o19419.o5292.o18364(param1);
         _loc2_ = o19419.o7923.o13012.o220;
         if(o4519.o13206.o17723)
         {
            return 300;
         }
         if(_loc2_ > _loc4_.o20468)
         {
            return _loc2_;
         }
         return _loc4_.o20468;
      }
      
      public function o20694(param1:int) : int
      {
         if(o7287[param1] == null)
         {
            o7287[param1] = new o16123(0);
         }
         return (o7287[param1] as o16123).value;
      }
      
      public function o14271(param1:int, param2:int) : void
      {
         var _loc3_:o16123 = o7287[param1];
         if(_loc3_ == null)
         {
            _loc3_ = new o16123(0);
            o7287[param1] = _loc3_;
         }
         _loc3_.value = param2;
      }
      
      public function o780(param1:int, param2:int) : void
      {
         if(o7287[param1] == null)
         {
            o7287[param1] = new o16123(0);
         }
         (o7287[param1] as o16123).value = (o7287[param1] as o16123).value + param2;
      }
      
      public function o3291(param1:int) : int
      {
         switch(int(param1) - 4)
         {
            case 0:
               return 0;
            case 1:
               return 1;
            case 2:
               return 2;
            case 3:
               return 3;
            case 4:
               return 4;
            case 5:
               return 6;
            case 6:
               return 5;
         }
      }
      
      public function o1686(param1:Object) : void
      {
         o7287 = new Dictionary();
         if(param1[107] != null)
         {
            o12552.o20392(param1[107],o7287);
         }
      }
      
      public function o8169(param1:Object) : void
      {
         o1686(param1);
      }
      
      public function o19599() : Object
      {
         var _loc1_:Object = {};
         _loc1_[107] = o12552.o13173(o7287);
         return _loc1_;
      }
      
      public function o14264() : Object
      {
         return o19599();
      }
      
      public function o497(param1:int) : int
      {
         var _loc3_:o12377 = o19419.o5292.o18364(param1);
         var _loc2_:int = _loc3_.o9421 * o19419.o7923.o13012.o20244;
         return _loc2_;
      }
      
      public function o14518(param1:int) : int
      {
         var _loc2_:o12377 = o19419.o5292.o18364(param1);
         return _loc2_.o1830;
      }
      
      public function o8602(param1:int) : Boolean
      {
         var _loc2_:int = o14518(param1);
         var _loc3_:int = o497(param1);
         if(o1784.o7683(_loc3_))
         {
            this.o780(param1,_loc2_);
            this.o19419.saveData();
            return true;
         }
         return false;
      }
      
      public function o11308(param1:int) : int
      {
         var _loc2_:o12377 = o19419.o5292.o18364(param1);
         var _loc3_:int = _loc2_.o1830;
         var _loc5_:int = _loc2_.o9421;
         var _loc4_:Number = _loc5_ / _loc3_;
         return o1784.o2135(this.o20694(param1) * _loc4_);
      }
      
      public function o9606(param1:int) : void
      {
         o1784.o15336(o11308(param1));
         o14271(param1,0);
         this.o19419.saveData();
      }
      
      public function o2843(param1:int) : int
      {
         var _loc2_:o14096 = o19419.o5292.o9063(param1);
         return _loc2_.o2752.o9421;
      }
      
      public function o11238(param1:int) : Boolean
      {
         var _loc2_:int = o2843(param1);
         if(o1784.o7683(_loc2_))
         {
            o780(param1,1);
            this.o19419.saveData();
            return true;
         }
         return false;
      }
      
      public function o19338(param1:int, param2:int) : void
      {
         o780(param1,param2);
      }
      
      public function o4695(param1:int) : int
      {
         var _loc2_:o14096 = o19419.o5292.o9063(param1);
         var _loc3_:int = _loc2_.o2752.o9421;
         return o1784.o2135(o20694(param1) * _loc3_);
      }
      
      public function o16850(param1:int) : void
      {
         var _loc2_:int = o4695(param1);
         o1784.o15336(_loc2_);
         o14271(param1,0);
         this.o19419.saveData();
      }
      
      public function o17992() : Boolean
      {
         return o19419.o7923.level >= o19419.o5292.o15272;
      }
   }
}
