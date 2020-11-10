package
{
   import flash.system.Worker;
   
   public class o10262 extends o8023
   {
       
      
      public var o2535:o20139 = null;
      
      public var id:uint = 0;
      
      public var o2697:o2415;
      
      public var o58:Vector.<uint> = null;
      
      public var o8940:Boolean = true;
      
      private var o20656:Number = 1;
      
      public function o10262()
      {
         o2697 = Mem.create(this,o2415);
         super();
      }
      
      public function initialise(param1:uint, param2:o20139, param3:Number = 0, param4:Boolean = false, param5:Boolean = true) : void
      {
         o58 = Mem.create(this,Vector.<uint>) as Vector.<uint>;
         if(param2 == null)
         {
            return;
         }
         this.o2535 = param2;
         id = param2.o11481(param1,param3,param4,param5);
         if(Worker.current.isPrimordial)
         {
            param2.o20232(id,position);
         }
         this.o8940 = param5;
      }
      
      public function get position() : o2415
      {
         return o2697;
      }
      
      override public function o19115() : void
      {
         position.o19115();
         o2535.o20232(id,null);
         o2535.o8142(id);
         super.o19115();
      }
      
      public function set o7191(param1:Number) : void
      {
         o20656 = param1;
         o2535.o16894(id,param1);
      }
      
      public function get o7191() : Number
      {
         return o20656;
      }
      
      public function o14230(param1:o4039) : void
      {
         o2535.o15873(id,param1.id);
         o58.push(param1.id);
         param1.body = this;
      }
      
      public function o15838(param1:uint) : void
      {
         var _loc2_:* = null;
         var _loc5_:int = 0;
         var _loc4_:* = o58;
         for each(var _loc3_ in o58)
         {
            o2535.o8508(_loc3_,param1);
            _loc2_ = o4519.o8116.o20600.o3546(_loc3_);
            _loc2_.mask = param1;
         }
      }
      
      public function o15676(param1:uint) : void
      {
         var _loc2_:* = null;
         var _loc5_:int = 0;
         var _loc4_:* = o58;
         for each(var _loc3_ in o58)
         {
            o2535.o7364(_loc3_,param1);
            _loc2_ = o4519.o8116.o20600.o3546(_loc3_);
            _loc2_.o6365 = param1;
         }
      }
      
      public function o11496(param1:uint, param2:uint) : void
      {
         o2535.o8508(param1,param2);
         var _loc3_:o4039 = o4519.o8116.o20600.o3546(param1);
         _loc3_.mask = param2;
      }
      
      public function o20458(param1:uint, param2:uint) : void
      {
         o2535.o7364(param1,param2);
         var _loc3_:o4039 = o4519.o8116.o20600.o3546(param1);
         _loc3_.o6365 = param2;
      }
      
      public function o19977(param1:uint) : void
      {
         o2535.o9206(id,param1);
         o58.splice(o58.indexOf(param1),1);
      }
      
      public function o5819(param1:uint) : Boolean
      {
         var _loc2_:* = null;
         var _loc5_:int = 0;
         var _loc4_:* = o58;
         for each(var _loc3_ in o58)
         {
            _loc2_ = o4519.o8116.o20600.o3546(_loc3_);
            if(!_loc2_.o4982 && (_loc2_.mask & param1) > 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function o6141(param1:Number, param2:Number) : void
      {
         o2535.o6141(id,param1,param2);
      }
      
      public function o2503() : o16124
      {
         return o2535.o2503(id);
      }
      
      public function o8564(param1:Number, param2:Number) : void
      {
         position.x = param1;
         position.y = param2;
         o2535.o8564(id,param1,param2);
      }
      
      public function o13392(param1:o18509) : void
      {
         position.x = param1.x;
         position.y = param1.y;
         o2535.o8564(id,param1.x,param1.y);
      }
      
      public function o16687(param1:Number) : void
      {
         o2535.o16687(id,param1);
      }
      
      public function o9946(param1:uint) : void
      {
         o2535.o9946(id,param1);
      }
   }
}
