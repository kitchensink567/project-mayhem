package
{
   import flash.utils.Dictionary;
   
   public class o2693
   {
       
      
      public var o14212:Dictionary = null;
      
      public function o2693()
      {
         super();
      }
      
      public function initialise(param1:Dictionary) : void
      {
         this.o14212 = param1;
      }
      
      public function o9009(param1:String) : String
      {
         return o14212[param1] as String;
      }
      
      public function o20495(param1:String) : Boolean
      {
         return o14212[param1] != null;
      }
      
      public function o3554(param1:String) : int
      {
         return parseInt(o14212[param1] as String);
      }
      
      public function o17521(param1:String) : Number
      {
         return parseFloat(o14212[param1] as String);
      }
      
      public function o18357(param1:String, param2:Boolean = false) : Boolean
      {
         var _loc3_:String = o14212[param1];
         if(_loc3_ == null)
         {
            return param2;
         }
         if(_loc3_.toLowerCase() == "false")
         {
            return false;
         }
         if(_loc3_.toLowerCase() == "true")
         {
            return true;
         }
         return parseInt(_loc3_) != 0;
      }
      
      public function o3791(param1:String) : Vector.<int>
      {
         var _loc3_:String = o9009(param1);
         var _loc5_:Vector.<int> = Mem.create(this,Vector.<int>) as Vector.<int>;
         var _loc4_:Array = _loc3_.split(",");
         var _loc7_:int = 0;
         var _loc6_:* = _loc4_;
         for each(var _loc2_ in _loc4_)
         {
            _loc5_.push(parseInt(_loc2_));
         }
         return _loc5_;
      }
      
      public function o18150(param1:String) : Vector.<String>
      {
         var _loc4_:* = null;
         var _loc2_:Vector.<String> = Mem.create(this,Vector.<String>) as Vector.<String>;
         var _loc3_:int = param1.length + 1;
         var _loc7_:int = 0;
         var _loc6_:* = o14212;
         for(var _loc5_ in o14212)
         {
            if(_loc5_.indexOf(param1) == 0)
            {
               _loc4_ = _loc5_;
               _loc4_ = _loc4_.substr(_loc3_);
               _loc2_.push(_loc4_);
            }
         }
         return _loc2_;
      }
      
      public function o4950(param1:String) : Vector.<String>
      {
         var _loc2_:Vector.<String> = o18150(param1);
         var _loc3_:Vector.<String> = Mem.create(this,Vector.<String>) as Vector.<String>;
         var _loc6_:int = 0;
         var _loc5_:Boolean = false;
         var _loc11_:int = 0;
         var _loc10_:* = _loc2_;
         for each(var _loc7_ in _loc2_)
         {
            _loc6_ = _loc7_.indexOf(".");
            if(_loc6_ >= 0)
            {
               _loc7_ = _loc7_.substring(0,_loc6_);
            }
            _loc5_ = true;
            var _loc9_:int = 0;
            var _loc8_:* = _loc3_;
            for each(var _loc4_ in _loc3_)
            {
               if(_loc4_ == _loc7_)
               {
                  _loc5_ = false;
                  break;
               }
            }
            if(_loc5_)
            {
               _loc3_.push(_loc7_);
            }
         }
         return _loc3_;
      }
      
      public function o11136(param1:String) : Vector.<int>
      {
         var _loc4_:* = null;
         var _loc2_:Vector.<int> = Mem.create(this,Vector.<int>) as Vector.<int>;
         var _loc3_:int = param1.length + 1;
         var _loc7_:int = 0;
         var _loc6_:* = o14212;
         for(var _loc5_ in o14212)
         {
            if(_loc5_.indexOf(param1) == 0)
            {
               _loc4_ = _loc5_;
               _loc4_ = _loc4_.substr(_loc3_);
               _loc2_.push(parseInt(_loc4_));
            }
         }
         _loc2_.sort(o16120);
         return _loc2_;
      }
      
      private function o16120(param1:int, param2:int) : int
      {
         if(param1 < param2)
         {
            return -1;
         }
         if(param1 > param2)
         {
            return 1;
         }
         return 0;
      }
      
      public function o11513(param1:String) : Vector.<Number>
      {
         var _loc3_:int = 0;
         var _loc4_:Vector.<Number> = new Vector.<Number>();
         var _loc2_:int = o3554(param1);
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_.push(o17521(param1 + "." + _loc3_.toString()));
            _loc3_++;
         }
         return _loc4_;
      }
   }
}
