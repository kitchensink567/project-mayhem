package
{
   public class o18435
   {
       
      
      public var o2013:o772 = null;
      
      private var o17622:o15808 = null;
      
      public function o18435(param1:o772, param2:o15808)
      {
         super();
         this.o2013 = param1;
         this.o17622 = param2;
      }
      
      public function o2566(param1:uint, param2:Number, param3:Number, param4:uint, param5:uint, param6:Vector.<int> = null) : o14506
      {
         return o2013.o2566(param1,param2,param3,param4,param5,param6);
      }
      
      public function o6048(param1:o2041, param2:uint, param3:uint, param4:Number, param5:Number, param6:uint, param7:Number, param8:Number, param9:uint, param10:uint, param11:Vector.<int> = null, param12:Vector.<int> = null) : o14506
      {
         if(param1 == null)
         {
            throw new Error("Why is this null");
         }
         var _loc15_:o14506 = Mem.create(this,o14506);
         var _loc13_:o972 = Mem.create(this,o972);
         var _loc16_:o12480 = Mem.create(this,o12480);
         _loc16_.o6049 = param1;
         _loc16_.o6365 = param2;
         _loc16_.o12371 = param3;
         _loc16_.o20055 = param4;
         _loc16_.o13386 = param5;
         _loc16_.o17801 = param6;
         _loc16_.o14534 = param7;
         _loc16_.o6029 = param8;
         _loc16_.o6861 = param9;
         _loc16_.o16057 = param10;
         _loc16_.o10033 = param11;
         _loc16_.o9710 = param12;
         _loc16_.promise = _loc15_;
         _loc16_.o1337 = _loc13_;
         var _loc14_:o14506 = o4259(param4,param5,param6,param7,param8,param2,param10,param12);
         _loc14_.o11333 = _loc16_;
         _loc14_.defer(o17376);
         return _loc15_;
      }
      
      public function o13028(param1:uint, param2:uint, param3:Number, param4:Number, param5:uint, param6:Number, param7:Number, param8:uint, param9:uint, param10:Vector.<int> = null, param11:Vector.<int> = null) : o14506
      {
         o6365 = param1;
         o12371 = param2;
         o20055 = param3;
         o13386 = param4;
         o17801 = param5;
         o14534 = param6;
         o6029 = param7;
         o6861 = param8;
         o16057 = param9;
         o10033 = param10;
         o9710 = param11;
         var o9336:o14506 = new o14506();
         var promise:o14506 = o2566(0,o14534,o6029,o6365,o6861,o10033);
         promise.defer(function(param1:o2041):void
         {
            o6691 = param1;
            o20187 = o6691;
            o6048(o20187,o6365,o12371,o20055,o13386,o17801,o14534,o6029,o6861,o16057,o10033,o9710).defer(function(param1:o972):void
            {
               o9336.data = param1;
            });
         });
         return o9336;
      }
      
      private function o17376(param1:Boolean, param2:o12480) : void
      {
         if(param1 === true)
         {
            param2.o1337.o16255.push(Mem.create(this,o18509,[param2.o14534,param2.o6029]));
            param2.promise.data = param2.o1337;
            return;
         }
         var _loc3_:o14506 = o2013.o2566(param2.o12371,param2.o20055,param2.o13386,param2.o6365,param2.o6861,param2.o10033);
         _loc3_.o11333 = param2;
         _loc3_.defer(o12908);
      }
      
      private function o12908(param1:o2041, param2:o12480) : void
      {
         if(param1 == null)
         {
            param2.promise.data = null;
            return;
         }
         var _loc3_:Vector.<o2041> = o17622.o4706(param1,param2.o6049);
         param2.o1337.o12968 = _loc3_;
         if(_loc3_ == null || _loc3_.length == 0)
         {
            param2.promise.data = null;
            return;
         }
         param2.o1337.o1661 = Mem.create(this,Vector.<o18509>);
         var _loc6_:int = 0;
         var _loc5_:* = _loc3_;
         for each(var _loc4_ in _loc3_)
         {
            param2.o1337.o1661.push(Mem.create(this,o18509,[_loc4_.x,_loc4_.y]));
         }
         param2.o1337.o1661.push(Mem.create(this,o18509,[param2.o14534,param2.o6029]));
         param2.o6691 = _loc3_[_loc3_.length - 1];
         param2.o6041 = _loc3_;
         param2.sort = Mem.create(this,Vector.<o2041>);
         param2.o4666 = this;
         o15714.o690([o17058,o5183],param2);
      }
      
      private function o17058(param1:*, param2:o12480) : o14506
      {
         var _loc3_:o14506 = Mem.create(this,o14506);
         _loc3_.o11333 = param2;
         param2.o5462 = _loc3_;
         o15714.o16380(o10679,param2);
         return _loc3_;
      }
      
      private function o10679(param1:int, param2:Boolean, param3:o12480) : o14506
      {
         if(param2 === true || param1 >= param3.o6041.length)
         {
            param3.o5462.data = param3.sort.reverse();
            return null;
         }
         param3.o6691 = param3.o6041[param3.o6041.length - param1 - 1];
         param3.sort.push(param3.o6691);
         var _loc4_:o14506 = o4259(param3.o6691.x,param3.o6691.y,param3.o12371,param3.o20055,param3.o13386,param3.o6365,param3.o6861,param3.o10033);
         _loc4_.o11333 = param3;
         return _loc4_;
      }
      
      private function o5183(param1:Vector.<o2041>, param2:o12480) : o14506
      {
         var _loc5_:int = 0;
         var _loc4_:* = param1;
         for each(var _loc3_ in param1)
         {
            param2.o1337.o16255.push(Mem.create(this,o18509,[_loc3_.x,_loc3_.y]));
         }
         param2.o1337.o16255.push(Mem.create(this,o18509,[param2.o14534,param2.o6029]));
         param2.promise.data = param2.o1337;
         return null;
      }
      
      public function o4259(param1:Number, param2:Number, param3:uint, param4:Number, param5:Number, param6:uint, param7:uint, param8:Vector.<int> = null) : o14506
      {
         var _loc10_:o14506 = Mem.create(this,o14506);
         var _loc9_:o13885 = new o13885(_loc10_);
         o2013.o2535.o4816(param1,param2,param4,param5,param6,param7,param8).defer(_loc9_.defer);
         return _loc10_;
      }
   }
}

class o12480
{
    
   
   public var o6049:o2041;
   
   public var o6365:uint;
   
   public var o12371:uint;
   
   public var o20055:Number;
   
   public var o13386:Number;
   
   public var o17801:uint;
   
   public var o14534:Number;
   
   public var o6029:Number;
   
   public var o6861:uint;
   
   public var o16057:uint;
   
   public var o10033:Vector.<int>;
   
   public var o9710:Vector.<int>;
   
   public var promise:o14506;
   
   public var o1337:o972;
   
   public var o5462:o16124;
   
   public var o6691:o2041;
   
   public var o6041:Vector.<o2041>;
   
   public var sort:Vector.<o2041>;
   
   public var o4666:o18435;
   
   function o12480()
   {
      super();
   }
}

class o13885
{
    
   
   public var promise:o14506;
   
   function o13885(param1:o14506)
   {
      super();
      this.promise = param1;
   }
   
   public function defer(param1:*) : void
   {
      if(param1.body == -1)
      {
         promise.data = true;
      }
      else
      {
         promise.data = false;
      }
      promise = null;
   }
}
