package
{
   import flash.events.IEventDispatcher;
   import flash.utils.Dictionary;
   
   public class o9540 extends o14709
   {
       
      
      public var o2154:IEventDispatcher = null;
      
      public var filter:Dictionary = null;
      
      public var o13554:Vector.<o15847> = null;
      
      public var o17866:Vector.<o10108> = null;
      
      public function o9540()
      {
         super();
      }
      
      public function initialise(param1:IEventDispatcher, param2:Dictionary) : void
      {
         this.o2154 = param1;
         this.filter = param2;
         o13554 = Mem.create(this,Vector.<o15847>);
         o17866 = Mem.create(this,Vector.<o10108>);
      }
      
      override public function o15039(param1:o16520) : void
      {
         var _loc2_:* = null;
         var _loc10_:* = undefined;
         var _loc6_:Boolean = false;
         var _loc7_:o5173 = param1.o18972().o15686();
         var _loc5_:o5173 = param1.o13950().o15686();
         var _loc8_:uint = _loc7_.o3272();
         var _loc4_:uint = _loc5_.o3272();
         if(filter[param1.o18972().o3272()] != null && (filter[param1.o18972().o3272()] & param1.o13950().o18997().o11755) == 0 || filter[param1.o13950().o3272()] != null && (filter[param1.o13950().o3272()] & param1.o18972().o18997().o11755) == 0)
         {
            param1.o4004(false);
         }
         else
         {
            _loc2_ = Mem.create(this,o16958);
            param1.o10385(_loc2_);
            _loc10_ = Mem.create(this,Vector.<o18509>);
            var _loc12_:int = 0;
            var _loc11_:* = _loc2_.o6942;
            for each(var _loc9_ in _loc2_.o6942)
            {
               _loc10_.push(Mem.create(this,o18509,[o5165.o2786(_loc9_.x),o5165.o2786(_loc9_.y)]));
            }
            o13554.push(Mem.create(this,o15847,[param1.o18972(),param1.o13950()]));
            o2154.dispatchEvent(Mem.create(this,o18787,[param1.o18972().o3272(),param1.o13950().o3272(),_loc10_]));
            _loc6_ = false;
            var _loc14_:int = 0;
            var _loc13_:* = o17866;
            for each(var _loc3_ in o17866)
            {
               if(_loc3_.o19691(_loc7_,_loc5_))
               {
                  _loc6_ = true;
                  break;
               }
            }
            if(!_loc6_)
            {
               o17866.push(Mem.create(this,o10108,[_loc7_,_loc5_]));
               o2154.dispatchEvent(Mem.create(this,o11910,[_loc8_,_loc4_]));
            }
         }
         super.o15039(param1);
      }
      
      override public function o19222(param1:o16520) : void
      {
         var _loc8_:Boolean = false;
         var _loc5_:o5173 = param1.o18972().o15686();
         var _loc4_:o5173 = param1.o13950().o15686();
         var _loc6_:uint = _loc5_.o3272();
         var _loc3_:uint = _loc4_.o3272();
         if(!(filter[param1.o18972().o3272()] != null && (filter[param1.o18972().o3272()] & param1.o13950().o18997().o11755) == 0 || filter[param1.o13950().o3272()] != null && (filter[param1.o13950().o3272()] & param1.o18972().o18997().o11755) == 0))
         {
            o2154.dispatchEvent(Mem.create(this,o11273,[param1.o18972().o3272(),param1.o13950().o3272()]));
            var _loc10_:int = 0;
            var _loc9_:* = o13554;
            for each(var _loc2_ in o13554)
            {
               if(_loc2_.o12395 == param1.o18972() && _loc2_.o17768 == param1.o13950() || _loc2_.o12395 == param1.o13950() && _loc2_.o17768 == param1.o18972())
               {
                  o13554.splice(o13554.indexOf(_loc2_),1);
                  break;
               }
            }
            _loc8_ = false;
            var _loc12_:int = 0;
            var _loc11_:* = o13554;
            for each(_loc2_ in o13554)
            {
               if(_loc2_.o12395.o15686() == param1.o18972().o15686() && _loc2_.o17768.o15686() == param1.o13950().o15686() || _loc2_.o12395.o15686() == param1.o13950().o15686() && _loc2_.o17768.o15686() == param1.o18972().o15686())
               {
                  _loc8_ = true;
                  break;
               }
            }
            if(!_loc8_)
            {
               var _loc14_:int = 0;
               var _loc13_:* = o17866;
               for each(var _loc7_ in o17866)
               {
                  if(_loc7_.o19691(_loc5_,_loc4_))
                  {
                     o17866.splice(o17866.indexOf(_loc7_),1);
                     break;
                  }
               }
               o2154.dispatchEvent(Mem.create(this,o16198,[_loc6_,_loc3_]));
            }
         }
         super.o19222(param1);
      }
   }
}
