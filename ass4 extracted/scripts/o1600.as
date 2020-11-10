package
{
   import flash.utils.Dictionary;
   
   public class o1600 extends o17693
   {
      
      public static var o4103:int = 20;
       
      
      public var o17158:int = -1;
      
      public var o19417:o5448 = null;
      
      private var o9869:o255 = null;
      
      private var o11676:o16864 = null;
      
      public var o15727:Vector.<o7848> = null;
      
      private var o11808:Dictionary = null;
      
      public var o20753:Vector.<Class> = null;
      
      public var o14443:o7276 = null;
      
      public function o1600(param1:o5448, param2:o255, param3:o16864, param4:Vector.<Class>)
      {
         this.o19417 = param1;
         this.o9869 = param2;
         this.o11676 = param3;
         this.o20753 = param4;
         o15727 = Mem.create(this,Vector.<o7848>) as Vector.<o7848>;
         o11808 = Mem.create(this,Dictionary) as Dictionary;
         super(param4);
      }
      
      public function clear() : void
      {
         while(o15727.length > 0)
         {
            o15727[0].o19115();
         }
      }
      
      public function o2998(param1:Class, param2:Array = null, param3:int = -1, param4:Boolean = true) : o7848
      {
         if(param2 == null)
         {
            param2 = [];
         }
         if(param3 == -1)
         {
            o17158 = Number(o17158) - 1;
            §§push(Number(o17158));
         }
         else
         {
            §§push(param3);
         }
         var _loc5_:* = §§pop();
         var _loc6_:o7848 = create.apply(null,[param1,_loc5_].concat(param2));
         _loc6_.o5973 = _loc5_;
         o10625(_loc6_,param4);
         return _loc6_;
      }
      
      public function o16775(param1:int) : o7848
      {
         var _loc4_:int = 0;
         var _loc3_:* = o15727;
         for each(var _loc2_ in o15727)
         {
            if(_loc2_.o5973 == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function o20716(param1:String) : o7848
      {
         var _loc4_:int = 0;
         var _loc3_:* = o15727;
         for each(var _loc2_ in o15727)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function o16073(param1:Number, param2:Number, param3:Number, param4:Number, param5:uint, param6:uint, param7:Vector.<o7848> = null, param8:int = 1, param9:uint = 0) : o14506
      {
         startX = param1;
         startY = param2;
         endX = param3;
         endY = param4;
         o6365 = param5;
         mask = param6;
         filter = param7;
         o18640 = param8;
         o12500 = param9;
         if(o18640 == 1)
         {
            return o8859(startX,startY,endX,endY,o6365,mask,filter);
         }
         var promise:o14506 = Mem.create(this,o14506) as o14506;
         if(filter == null)
         {
            var filter:Vector.<o7848> = Mem.create(this,Vector.<o7848>) as Vector.<o7848>;
         }
         else
         {
            filter = filter.concat();
         }
         var o18885:Array = Mem.create(this,Array) as Array;
         o15714.o16380(function(param1:int, param2:*):o16124
         {
            var _loc3_:* = null;
            if(param1 != 0)
            {
               if(param2.x == 0)
               {
                  promise.data = o18885;
                  return null;
               }
               o18885.push(param2);
               if(o18885.length >= o18640)
               {
                  promise.data = o18885;
                  return null;
               }
               _loc3_ = o4519.o8116.o20600.o3546(param2.fixture);
               if(!(param2.entity is o7848) || _loc3_ != null && (_loc3_.o6365 & o12500) != 0)
               {
                  promise.data = o18885;
                  return null;
               }
               filter.push(param2.entity);
            }
            return o8859(startX,startY,endX,endY,o6365,mask,filter);
         });
         return promise;
      }
      
      public function o4816(param1:Number, param2:Number, param3:Number, param4:Number, param5:uint, param6:uint, param7:Vector.<o7848> = null, param8:Number = 1.0, param9:uint = 0) : o14506
      {
         return o16073(param1,param2,param3,param4,param5,param6,param7,Math.ceil(Math.round(param8 * 10) / 10),param9);
      }
      
      public function o8859(param1:Number, param2:Number, param3:Number, param4:Number, param5:uint, param6:uint, param7:Vector.<o7848> = null) : o14506
      {
         startX = param1;
         startY = param2;
         endX = param3;
         endY = param4;
         o6365 = param5;
         mask = param6;
         filter = param7;
         var promise:o14506 = Mem.create(this,o14506) as o14506;
         var o7302:Vector.<o10262> = Mem.create(this,Vector.<o10262>) as Vector.<o10262>;
         if(filter != null)
         {
            o7302 = Mem.create(this,Vector.<o10262>) as Vector.<o10262>;
            var _loc10_:int = 0;
            var _loc9_:* = filter;
            for each(o7367 in filter)
            {
               o7302.push(o7367.body);
            }
         }
         o15714.o16380(function(param1:int, param2:*):o16124
         {
            var _loc3_:* = null;
            if(param1 > 0)
            {
               _loc3_ = null;
               if(param2.body != 1)
               {
                  _loc3_ = o14389(param2.body);
               }
               if(param2.body == 1 || param2.body == null || _loc3_ == null)
               {
                  promise.data = {
                     "entity":1,
                     "fixture":param2.fixture,
                     "x":param2.x,
                     "y":param2.y,
                     "startX":startX,
                     "startY":startY,
                     "endX":endX,
                     "endY":endY
                  };
                  return null;
               }
               if(!_loc3_.o8289())
               {
                  promise.data = {
                     "entity":o14389(param2.body),
                     "fixture":param2.fixture,
                     "x":param2.x,
                     "y":param2.y,
                     "startX":startX,
                     "startY":startY,
                     "endX":endX,
                     "endY":endY
                  };
                  return null;
               }
               o7302.push(_loc3_.body.id);
            }
            return o9869.o4816(startX,startY,endX,endY,o6365,mask,o7302);
         });
         return promise;
      }
      
      private function o10625(param1:o7848, param2:Boolean = true) : void
      {
         param1.o5988(o13242);
         if(param2)
         {
            param1.body.o16280(this,o8273.o7087,o7087);
            param1.body.o16280(this,o8273.o20083,o20083);
         }
         o15727.push(param1);
         var _loc3_:Vector.<o7848> = o11808[Object(param1).constructor];
         if(_loc3_ != null)
         {
            _loc3_.push(param1);
         }
         if(param1.o6691 != null)
         {
            o19417.o9226(param1.o6691,param2);
         }
         if(o14443 != null && param1.o5973 >= 0)
         {
            o14443.o5373(param1);
         }
      }
      
      private function o13242(param1:o12600) : void
      {
         var _loc2_:o7848 = param1 as o7848;
         _loc2_.body.o19115();
         if(_loc2_.o6691 != null)
         {
            o19417.o11867(_loc2_.o6691);
         }
         _loc2_.body.o12657(o8273.o7087,o7087);
         _loc2_.body.o12657(o8273.o20083,o20083);
         if(o15727.indexOf(_loc2_) != -1)
         {
            o15727.splice(o15727.indexOf(_loc2_),1);
         }
         super.o19023(_loc2_);
      }
      
      private function o7087(param1:o663) : void
      {
         var _loc2_:* = null;
         var _loc3_:o7848 = o14389(param1.body);
         if(_loc3_)
         {
            _loc2_ = Mem.create(this,o15259) as o15259;
            _loc2_.initialise(_loc3_,o14389(param1.o11541));
            _loc3_.dispatchData(_loc2_);
         }
      }
      
      private function o20083(param1:o18091) : void
      {
         var _loc2_:* = null;
         var _loc3_:o7848 = o14389(param1.body);
         if(_loc3_)
         {
            _loc2_ = Mem.create(this,o19222) as o19222;
            _loc2_.initialise(_loc3_,o14389(param1.o11541));
            _loc3_.dispatchData(_loc2_);
         }
      }
      
      public function o14389(param1:o10262) : o7848
      {
         var _loc4_:int = 0;
         var _loc3_:* = o15727;
         for each(var _loc2_ in o15727)
         {
            if(_loc2_.body == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function o9685(param1:Class, param2:Number, param3:Number, param4:Number, param5:uint = 4294967295, param6:uint = 8193, param7:uint = 4294967295) : o16124
      {
         return o2368([param1],param2,param3,param4,param5,param6,param7);
      }
      
      public function o2368(param1:Array, param2:Number, param3:Number, param4:Number, param5:uint = 4294967295, param6:uint = 8193, param7:uint = 4294967295, param8:Function = null) : o16124
      {
         var _loc10_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc12_:o16124 = new o16124();
         var _loc14_:Array = [];
         var _loc18_:int = 0;
         var _loc17_:* = param1;
         for each(var _loc15_ in param1)
         {
            _loc14_ = _loc14_.concat(o20698(_loc15_));
         }
         var _loc16_:Array = [];
         var _loc20_:int = 0;
         var _loc19_:* = _loc14_;
         for each(var _loc11_ in _loc14_)
         {
            if(_loc11_.body.o5819(param5))
            {
               if(param8 == null || param8(_loc11_) == true)
               {
                  _loc10_ = param4 + _loc11_.o30;
                  _loc13_ = _loc11_.body.position.x - param2;
                  _loc9_ = _loc11_.body.position.y - param3;
                  if(_loc13_ * _loc13_ + _loc9_ * _loc9_ <= _loc10_ * _loc10_)
                  {
                     _loc16_.push(_loc11_);
                  }
               }
            }
         }
         if(param6 == 0)
         {
            _loc12_.data = _loc16_;
         }
         else if(_loc16_.length == 0)
         {
            _loc12_.data = _loc16_;
         }
         else
         {
            new o20063(_loc12_,_loc16_,param2,param3,param5,param6,param7);
         }
         return _loc12_;
      }
   }
}

class o20063
{
    
   
   private var promise:o16124;
   
   private var o14084:Array;
   
   private var x:Number;
   
   private var y:Number;
   
   private var o6365:uint;
   
   private var mask:uint;
   
   private var o15924:uint;
   
   private var o17587:Array;
   
   function o20063(param1:o16124, param2:Array, param3:Number, param4:Number, param5:uint, param6:uint, param7:uint)
   {
      super();
      this.promise = param1;
      this.o14084 = param2;
      this.x = param3;
      this.y = param4;
      this.o6365 = param5;
      this.mask = param6;
      this.o15924 = param7;
      o17587 = [];
      o15714.o16380(o942);
   }
   
   private function o942(param1:int, param2:*) : o16124
   {
      if(param2 != null && param2.x == 0 && param2.y == 0)
      {
         o17587.push(o14084[param1 - 1]);
         if(o17587.length >= o15924)
         {
            promise.data = o17587;
            return null;
         }
      }
      if(param1 >= o14084.length)
      {
         promise.data = o17587;
         return null;
      }
      var _loc3_:o16124 = o4519.o8116.o2535.o4816(x,y,o14084[param1].body.position.x,o14084[param1].body.position.y,o6365,mask);
      return _loc3_;
   }
}
