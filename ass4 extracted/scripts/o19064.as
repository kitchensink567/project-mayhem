package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class o19064 extends o5714
   {
       
      
      private var o19419:o14200;
      
      public function o19064()
      {
         super();
      }
      
      override public function o16384(param1:MovieClip, param2:o978, param3:int) : void
      {
         var _loc5_:* = null;
         var _loc12_:* = null;
         var _loc7_:* = null;
         var _loc4_:* = null;
         var _loc11_:int = 0;
         var _loc13_:* = null;
         var _loc6_:int = 0;
         super.o16384(param1,param2,param3);
         param2.o9799.o5809 = o5809;
         o19419 = o4519.o8116.profileData;
         o19419.o202.o18339 = 1;
         o19419.o202.o10220 = null;
         o19419.o202.o15492 = null;
         o19419.o1317.o5313();
         var _loc9_:Boolean = o19419.o15894.o4848.isGuest;
         this.o9269(o19419.o5292.o18300,_loc9_);
         if(o19419.o5292.o15863)
         {
            o9953(o19419.data.o911);
            o19419.data.addEventListener(o7751.o20041,o19000,false,0,true);
         }
         if(o19419.o5292.o20622)
         {
            o8614(o19419.data.o15459);
            o19419.data.addEventListener(o7751.o13945,o11742,false,0,true);
         }
         var _loc14_:Boolean = false;
         var _loc16_:int = 0;
         var _loc15_:* = o19419.o5292.o16679.o12738;
         for each(_loc5_ in o19419.o5292.o16679.o12738)
         {
            if(_loc5_.o11392.type == 3)
            {
               _loc12_ = _loc5_;
               _loc14_ = true;
               break;
            }
         }
         var _loc8_:Vector.<String> = new Vector.<String>();
         var _loc10_:Vector.<uint> = new Vector.<uint>();
         var _loc18_:int = 0;
         var _loc17_:* = o19419.o5292.o16679.o12738;
         for each(_loc5_ in o19419.o5292.o16679.o12738)
         {
            if(_loc5_.o11392.type != 3)
            {
               if(_loc5_.o11392 is o14128)
               {
                  _loc7_ = _loc5_.o11392 as o14128;
                  _loc8_.push(_loc7_.o14925);
                  _loc10_.push(_loc7_.o17297);
               }
            }
         }
         if(_loc14_)
         {
            _loc8_ = new Vector.<String>();
            _loc4_ = _loc12_.o11392 as o14128;
            _loc8_.push(_loc4_.o14925);
            _loc11_ = _loc12_.o11392.o9938[0].o5546;
            _loc13_ = o19419.o5292.o13988.o9694(_loc11_);
            _loc6_ = _loc13_.o15217 == null?0:_loc13_.o15217.o10748;
            o6511(_loc6_,"Championships!",_loc8_,_loc4_.o17297);
         }
         else
         {
            o18507("EVENTS!",_loc8_,_loc10_);
         }
      }
      
      override protected function o5463(param1:MouseEvent) : void
      {
         var _loc2_:o4162 = o19419.o5292.o3911.o14690(665);
         var _loc4_:String = "Confirm Token Purchase?";
         var _loc3_:String = _loc2_.o17160.toString() + " Tokens for ";
         (o4519.o10093.o16989 as o14043).o13414(_loc4_,_loc3_,665,o9682);
      }
      
      private function o9682() : void
      {
      }
      
      private function o19000(param1:Event) : void
      {
         o9953(o19419.data.o911);
      }
      
      private function o11742(param1:Event) : void
      {
         o8614(o19419.data.o911);
      }
      
      override protected function o20252(param1:MouseEvent) : void
      {
         if(o19419.o5292.o19127)
         {
            this.o19689.screen = 23;
         }
         else
         {
            o19419.o202.o10211 = true;
            if(o19419.data.o12697())
            {
               o19419.data.o14047();
               o19689.screen = 20;
            }
            else
            {
               o19689.screen = 26;
            }
         }
      }
      
      override protected function o5191(param1:MouseEvent) : void
      {
         o19419.o202.o10211 = false;
         var _loc3_:Vector.<o2736> = o19419.o5292.o9177.o4014();
         var _loc6_:o2736 = _loc3_[0];
         var _loc4_:int = _loc6_.o19855[_loc6_.o19855.length - 1].o18800;
         var _loc2_:o4733 = o19419.o11453.o4635(_loc4_);
         var _loc5_:int = _loc3_[1].o10387;
         this.o19689.screen = 30;
      }
      
      private function o5809() : void
      {
         o5191(null);
      }
      
      override public function o13640() : void
      {
         o19689.o9799.o5809 = null;
         if(o19419.o5292.o15863)
         {
            o19419.data.removeEventListener(o7751.o20041,o19000);
         }
         if(o19419.o5292.o20622)
         {
            o19419.data.removeEventListener(o7751.o13945,o11742);
         }
         o19419 = null;
         super.o13640();
      }
      
      override protected function o11639(param1:o15625) : void
      {
      }
      
      override protected function o2806(param1:o15625) : void
      {
      }
      
      override protected function o12638(param1:Event) : void
      {
         super.o12638(param1);
         var _loc2_:o14200 = o14200.o19505;
         var _loc3_:o9145 = _loc2_.o7923;
         if(_loc3_.level >= o14576.o2846 && _loc3_.o12569 == false)
         {
            _loc3_.o12569 = true;
            this.o19689.o16989.o6612(true);
            if(_loc3_.level >= o14576.o8957)
            {
               _loc3_.o17178 = true;
            }
            _loc2_.saveData();
         }
         else if(_loc3_.level >= o14576.o8957 && _loc3_.o17178 == false)
         {
            _loc3_.o17178 = true;
            this.o19689.o16989.o6612(false);
            _loc2_.saveData();
         }
         if(_loc3_.level >= o14576.o19436 && _loc3_.o19910 == false)
         {
            _loc3_.o19910 = true;
            this.o19689.o16989.o9963(true);
            _loc2_.saveData();
         }
      }
      
      override protected function o6662(param1:Event) : void
      {
         super.o6662(param1);
         if(asset == null || o19419 == null)
         {
            return;
         }
         o3243(o4519.o8116.o9589.o16105());
         var _loc2_:Number = o4519.o8116.o15020.time;
         var _loc3_:Number = o19419.data.o13004.time;
         o13735 = _loc3_ - _loc2_;
      }
   }
}
