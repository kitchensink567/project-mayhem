package
{
   import flash.events.Event;
   
   public class o17145 extends o16533
   {
       
      
      private var o19419:o14200;
      
      private var inventory:Vector.<o444>;
      
      private var o19054:o444;
      
      private var o17697:Vector.<String>;
      
      public function o17145(param1:o14200)
      {
         o17697 = new Vector.<String>();
         super();
         this.o19419 = param1;
      }
      
      private function o6755() : int
      {
         var _loc2_:int = 0;
         var _loc1_:Vector.<o444> = o19419.o15894.o4848.o18278.o19252();
         inventory = new Vector.<o444>();
         var _loc5_:int = 0;
         var _loc4_:* = _loc1_;
         for each(var _loc3_ in _loc1_)
         {
            if(o17697.indexOf(_loc3_.o5689) < 0 && _loc3_.o1830 > 0)
            {
               _loc2_ = _loc2_ + _loc3_.o1830;
               inventory.push(_loc3_);
            }
         }
         this.o10899(_loc2_);
         return _loc2_;
      }
      
      override protected function o11048() : void
      {
         o19419.o15894.o4848.o18278.o16280(o4519.o8116,o19869.o391,o98);
      }
      
      override public function o13042(param1:String, param2:String) : void
      {
         var _loc5_:int = 0;
         var _loc4_:* = null;
         super.o13042(param1,param2);
         _loc5_ = 0;
         while(_loc5_ < 6)
         {
            if(_loc5_ < o19419.data.o11400.length)
            {
               _loc4_ = o19419.data.o11400[_loc5_];
               if(_loc4_ != null)
               {
                  o16887(_loc5_,_loc4_.o12110,_loc4_.o11990,_loc4_.level,_loc4_.o2274);
               }
            }
            _loc5_++;
         }
         var _loc3_:int = o6755();
         this.o10899(_loc3_);
         o931();
      }
      
      private function o12839() : void
      {
         this.o5507();
      }
      
      private function o11124() : void
      {
         o17697.push(o19054.o5689);
         o4250();
      }
      
      private function o98(param1:o19869) : void
      {
         o1218(false);
         o4250();
      }
      
      private function o4250() : void
      {
         var _loc1_:int = o6755();
         this.o10899(_loc1_);
         if(_loc1_ == 0)
         {
            this.close();
         }
         else
         {
            o931();
         }
      }
      
      override public function o13640() : void
      {
         o19419.o15894.o4848.o18278.o12657(o19869.o391,o98);
         o19419 = null;
         inventory = null;
         o19054 = null;
         o17697 = null;
         super.o13640();
      }
      
      private function o931() : void
      {
         var _loc3_:* = null;
         var _loc2_:int = o6755();
         this.o10899(_loc2_);
         if(_loc2_ == 0)
         {
            return;
         }
         o19054 = inventory[0];
         var _loc4_:String = "Claim Purchased Items";
         if(o19054.o5693 == 2000)
         {
            _loc4_ = "Claim maintenance Item";
         }
         var _loc1_:o4162 = o19419.o5292.o3911.o14690(o19054.o5693);
         if(_loc1_ != null)
         {
            this.o18578(_loc1_.name,_loc1_.o2000,_loc4_);
         }
         else
         {
            _loc3_ = o19419.o5292.o3911.o3100(o19054.o5693);
            if(_loc3_ != null)
            {
               this.o18741(_loc3_.name,_loc3_.o16582,_loc3_.o1830,_loc4_);
            }
            else
            {
               this.o18578("ERR: " + o19054.o5693,10,_loc4_);
            }
         }
      }
      
      override protected function o5507() : void
      {
         var _loc2_:* = null;
         var _loc1_:o4162 = o19419.o5292.o3911.o14690(o19054.o5693);
         if(_loc1_ != null)
         {
            _loc2_ = _loc1_.o9504(o19419.o7923);
            if(_loc2_ != null)
            {
               this.o16989.o13483("Unable to consume product",_loc2_ + "\n\nSelect another character (ok) or skip (cancel).\nSkipped items can be assigned again later",null,o11124);
               o1218(false);
               return;
            }
         }
         o1218(true);
         o19419.o15894.o4848.o18278.o7777(o19054);
      }
      
      override protected function o3994(param1:int) : void
      {
         var _loc2_:int = 0;
         o19419.o202.o11075 = param1;
         var _loc3_:o9145 = o19419.data.o11400[param1];
         if(_loc3_ == null)
         {
            _loc2_ = 0;
            var _loc6_:int = 0;
            var _loc5_:* = o19419.data.o11400;
            for each(var _loc4_ in o19419.data.o11400)
            {
               if(_loc4_ == null)
               {
                  _loc2_++;
                  continue;
               }
               break;
            }
            o6003.o2120 = _loc2_;
            return;
         }
         o6252(_loc3_.o12110,_loc3_.o11990,_loc3_.level,_loc3_.o2274);
      }
      
      override protected function o12638(param1:Event) : void
      {
         super.o12638(param1);
         var _loc2_:int = o6755();
         this.o10899(_loc2_);
      }
   }
}
