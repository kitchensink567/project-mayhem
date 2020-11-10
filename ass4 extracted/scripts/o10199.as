package
{
   public class o10199 implements o13430
   {
       
      
      private var o14358:o7665;
      
      private var o17385:int;
      
      private var o20091:Vector.<o19006>;
      
      public var o6501:Vector.<o4327>;
      
      public var o6900:int = 0;
      
      public function o10199()
      {
         o14358 = new o7665();
         o20091 = new Vector.<o19006>();
         o6501 = new Vector.<o4327>();
         super();
      }
      
      public function o3221(param1:o1693, param2:*) : *
      {
         var _loc3_:o19006 = o14358.o3221(param1,param2);
         o17385 = o17385 + 1;
         o11367(_loc3_);
         return _loc3_;
      }
      
      public function o13799(param1:*) : void
      {
         o5790(param1);
         o17385 = o17385 - 1;
         o14358.o13799(param1);
      }
      
      public function o3619(param1:*, param2:o1693, param3:o20021) : void
      {
         var _loc4_:Boolean = o14358.o3619(param1,param2,param3);
         if(_loc4_)
         {
            o11367(param1);
         }
      }
      
      public function o15642(param1:*, param2:*) : Boolean
      {
         var _loc4_:o1693 = o14358.o12025(param1);
         var _loc3_:o1693 = o14358.o12025(param2);
         return _loc4_.o15642(_loc3_);
      }
      
      public function o3272(param1:*) : *
      {
         return o14358.o3272(param1);
      }
      
      public function o12025(param1:*) : o1693
      {
         return o14358.o12025(param1);
      }
      
      public function o14511() : int
      {
         return o17385;
      }
      
      public function o13983(param1:Function) : void
      {
         var _loc3_:* = null;
         var _loc7_:* = null;
         var _loc4_:int = 0;
         var _loc6_:* = null;
         var _loc8_:* = undefined;
         var _loc5_:* = undefined;
         var _loc2_:* = null;
         o6900 = 0;
         var _loc11_:int = 0;
         var _loc10_:* = o20091;
         for each(var _loc9_ in o20091)
         {
            _loc3_ = o14358.o12025(_loc9_);
            _loc7_ = new o20793();
            _loc7_.initialise(this,_loc9_);
            o14358.o9501(_loc7_.o5734,_loc3_);
         }
         o20091.length = 0;
         _loc4_ = 0;
         while(_loc4_ < o6900)
         {
            _loc6_ = o6501[_loc4_];
            _loc8_ = o14358.o3272(_loc6_.o9917);
            _loc5_ = o14358.o3272(_loc6_.o5256);
            param1(_loc8_,_loc5_);
            _loc4_++;
            while(_loc4_ < o6900)
            {
               _loc2_ = o6501[_loc4_];
               if(!(_loc2_.o9917 != _loc6_.o9917 || _loc2_.o5256 != _loc6_.o5256))
               {
                  _loc4_++;
                  continue;
               }
               break;
            }
         }
      }
      
      public function o9501(param1:Function, param2:o1693) : void
      {
         o14358.o9501(param1,param2);
      }
      
      public function o4566(param1:Function, param2:Function, param3:o13148) : void
      {
         o14358.o4566(param1,param2,param3);
      }
      
      public function o17106() : void
      {
      }
      
      public function o4141(param1:int) : void
      {
         o14358.o4141(param1);
      }
      
      private function o11367(param1:o19006) : void
      {
         o20091[o20091.length] = param1;
      }
      
      private function o5790(param1:o19006) : void
      {
         var _loc2_:int = o20091.indexOf(param1);
         if(_loc2_ == -1)
         {
            return;
         }
         o20091.splice(_loc2_,1);
      }
      
      private function o12626(param1:o4327, param2:o4327) : int
      {
         return 0;
      }
   }
}

class o20793
{
    
   
   private var parent:o10199;
   
   private var o6261:o19006;
   
   function o20793()
   {
      super();
   }
   
   public function initialise(param1:o10199, param2:o19006) : void
   {
      this.parent = param1;
      this.o6261 = param2;
   }
   
   public function o5734(param1:o19006) : Boolean
   {
      if(param1 == o6261)
      {
         return true;
      }
      if((o6261.o18152.o18997().o251 & param1.o18152.o18997().o11755) == 0 || (param1.o18152.o18997().o251 & o6261.o18152.o18997().o11755) == 0)
      {
         return true;
      }
      if(parent.o6900 == parent.o6501.length)
      {
         parent.o6501[parent.o6900] = new o4327();
      }
      var _loc2_:o4327 = parent.o6501[parent.o6900];
      _loc2_.o9917 = param1;
      _loc2_.o5256 = o6261;
      parent.o6900++;
      return true;
   }
}
