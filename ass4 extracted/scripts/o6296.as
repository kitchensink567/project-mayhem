package
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class o6296 extends EventDispatcher
   {
      
      public static var o20332:String = "contractsRefreshedEvent";
       
      
      public var o16303:Dictionary;
      
      public var o14841:Vector.<o15723>;
      
      private var o3923:o9607;
      
      public function o6296()
      {
         super();
         o3923 = new o9607();
         o16303 = new Dictionary();
         o14841 = new Vector.<o15723>();
      }
      
      public function init(param1:o2693) : void
      {
         var _loc4_:int = 0;
         var _loc6_:* = null;
         var _loc3_:* = null;
         var _loc5_:String = "liveOps.contracts";
         var _loc2_:int = param1.o3554(_loc5_);
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            _loc6_ = _loc5_ + "." + _loc4_.toString() + ".";
            _loc3_ = new o1982();
            _loc3_.o18339 = param1.o3554(_loc6_ + "id");
            _loc3_.o7219 = param1.o9009(_loc6_ + "frameLabel");
            _loc3_.o17977 = param1.o9009(_loc6_ + "heading");
            _loc3_.o12043 = param1.o9009(_loc6_ + "shortDescription");
            _loc3_.o8398 = param1.o9009(_loc6_ + "details");
            _loc3_.o9938 = param1.o9009(_loc6_ + "rewards");
            o16303[_loc3_.o18339] = _loc3_;
            _loc4_++;
         }
         if(o4519.o8116.o15020 != null)
         {
            o982(o4519.o8116.o15020.time);
         }
      }
      
      private function o13358(param1:Boolean, param2:int, param3:Number, param4:int, param5:int) : void
      {
         param3 = o4519.o8116.o15020.time;
         var _loc14_:o5307 = o4519.o8116.o476.o15128;
         var _loc15_:Vector.<int> = _loc14_.o4255;
         var _loc13_:Number = param4 * 1000;
         var _loc19_:Number = param5 * 1000;
         var _loc17_:Number = Math.floor(param3 / _loc13_);
         var _loc9_:Number = _loc17_ * _loc13_;
         var _loc18_:o15723 = new o15723();
         _loc17_ = _loc17_ + param2;
         var _loc7_:int = o9607.o8102[_loc17_ % o9607.o8102.length];
         var _loc16_:int = _loc15_[_loc7_ % _loc15_.length];
         _loc18_.o15231 = o16303[_loc16_];
         var _loc11_:o5096 = _loc14_.o13079(_loc16_);
         var _loc8_:Vector.<int> = _loc11_.o7294;
         var _loc12_:Vector.<int> = _loc11_.o16271;
         _loc18_.o18339 = _loc16_;
         _loc18_.o14678 = _loc8_[_loc7_ % _loc8_.length];
         _loc18_.o12387 = _loc12_[_loc7_ % _loc12_.length];
         _loc18_.o5897 = new o5072(null,null);
         _loc18_.o5897.start = new Date();
         _loc18_.o5897.end = new Date();
         _loc18_.o5897.start.time = _loc9_;
         _loc18_.o5897.end.time = _loc9_;
         _loc18_.o5897.end.time = _loc18_.o5897.end.time + _loc19_;
         if(_loc18_.o5897.end.time <= param3)
         {
            _loc18_.o5897.start.time = _loc18_.o5897.start.time + _loc13_;
            _loc18_.o5897.end.time = _loc18_.o5897.end.time + _loc13_;
            _loc18_.o13779 = false;
         }
         var _loc21_:int = 0;
         var _loc20_:* = this.o14841;
         for each(var _loc6_ in this.o14841)
         {
            if(_loc6_.o18339 == _loc18_.o18339)
            {
               o13358(param1,param2 + 10,param3,param4,param5);
               return;
            }
            if(_loc6_.o14678 == _loc18_.o14678)
            {
            }
         }
         _loc18_.addEventListener(o15723.o12331,o10558,false,0,true);
         _loc18_.addEventListener(o15723.o7104,o15420,false,0,true);
         _loc18_.start(param3);
         var _loc10_:Boolean = _loc18_.o13779;
         this.o14841.push(_loc18_);
      }
      
      private function o15420(param1:Event) : void
      {
      }
      
      private function o10558(param1:Event) : void
      {
         o982(o4519.o8116.o15020.time);
      }
      
      public function o982(param1:Number) : void
      {
         var _loc2_:* = o14841.length == 0;
         var _loc8_:int = 0;
         var _loc7_:* = o14841;
         for each(var _loc6_ in o14841)
         {
            _loc6_.removeEventListener(o15723.o12331,o10558);
            _loc6_.removeEventListener(o15723.o7104,o15420);
            _loc6_.o13640();
         }
         this.o14841.length = 0;
         var _loc4_:o5307 = o4519.o8116.o476.o15128;
         var _loc5_:int = 0;
         var _loc10_:int = 0;
         var _loc9_:* = _loc4_.o12151;
         for each(var _loc3_ in _loc4_.o12151)
         {
            if(_loc3_.enabled)
            {
               o13358(_loc2_,_loc5_,param1,_loc3_.o56,_loc3_.o4312);
               _loc5_ = _loc5_ + 100;
            }
         }
         this.dispatchEvent(new Event(o20332));
      }
   }
}
