package
{
   import flash.events.Event;
   
   public class o10784 extends o16486
   {
       
      
      private var data:o14200;
      
      public function o10784(param1:o14200)
      {
         super();
         this.data = param1;
         o7610 = false;
      }
      
      override public function o413() : void
      {
         var _loc4_:* = null;
         var _loc3_:* = null;
         var _loc2_:int = 0;
         var _loc6_:int = 0;
         var _loc5_:* = data.o5292.o6055.o19740;
         for each(_loc4_ in data.o5292.o6055.o19740)
         {
            _loc3_ = data.o7923.o11241(_loc4_.o10374);
            this.o7187(_loc2_,_loc4_.name,_loc3_ == null?0:_loc3_.level,_loc4_.o10374,o9761(_loc4_),_loc4_.o1267 == false);
            _loc2_++;
         }
         var _loc1_:Vector.<o1492> = data.o7923.o18649();
         _loc2_ = 0;
         var _loc8_:int = 0;
         var _loc7_:* = _loc1_;
         for each(_loc4_ in _loc1_)
         {
            _loc3_ = data.o7923.o11241(_loc4_.o10374);
            this.o14083(_loc2_,_loc4_.name,_loc3_ == null?0:_loc3_.level,_loc4_.o10374,o9761(_loc4_),_loc4_.o1267 == false);
            _loc2_++;
         }
         o12562();
      }
      
      override public function o11048() : void
      {
         var _loc1_:String = data.o5292.o923.o16413(data.o7923.o2274).name;
         o1256(o14898,_loc1_ + " Skills");
         this.o6867 = false;
         this.o19591(data.o7923);
      }
      
      override public function o13640() : void
      {
         data = null;
         super.o13640();
      }
      
      private function o20050() : void
      {
         if(data.o7923.o7768 > 0)
         {
            data.o7923.o7768 = data.o7923.o7768 - 1;
            data.o7923.o8271();
            o10150();
            o413();
         }
         o413();
      }
      
      private function o20121(param1:o1492) : String
      {
         var _loc3_:* = null;
         var _loc4_:o6197 = data.o7923.o11241(param1.o10374);
         var _loc2_:int = _loc4_ == null?0:_loc4_.level;
         var _loc5_:int = param1.o4499(_loc2_);
         if(_loc5_ > 0)
         {
            _loc3_ = "Energy Cost: " + _loc5_.toString();
            return _loc3_;
         }
         return "";
      }
      
      private function o7103(param1:o1492) : String
      {
         if(param1.o10387 < data.o7923.level)
         {
            return "Unlock at level " + param1.o10387;
         }
         return "";
      }
      
      override protected function o12705(param1:int) : void
      {
         var _loc5_:o1492 = data.o5292.o6055.o19740[param1];
         var _loc4_:o6197 = data.o7923.o11241(_loc5_.o10374);
         var _loc3_:int = _loc4_ == null?0:_loc4_.level;
         var _loc2_:String = _loc5_.o1220(_loc3_ + 1);
         if(_loc3_ >= data.o5292.o16799)
         {
            _loc2_ = o2669();
         }
         o9443(param1,_loc5_.name,_loc5_.o7792,_loc5_.o1220(_loc3_),_loc2_,o20121(_loc5_),o9761(_loc5_),_loc5_.o10387,_loc3_,_loc5_.o18500);
      }
      
      override protected function o17550(param1:int) : void
      {
         var _loc4_:* = null;
         var _loc5_:o1492 = data.o7923.o18649()[param1];
         _loc4_ = data.o7923.o11241(_loc5_.o10374);
         _loc4_ = data.o7923.o11241(_loc5_.o10374);
         var _loc3_:int = _loc4_ == null?0:_loc4_.level;
         var _loc2_:String = _loc5_.o1220(_loc3_ + 1);
         if(_loc3_ >= data.o5292.o16799)
         {
            _loc2_ = o2669();
         }
         o19025(param1,_loc5_.name,_loc5_.o7792,_loc5_.o1220(_loc3_),_loc2_,o20121(_loc5_),o9761(_loc5_),_loc5_.o10387,_loc3_,_loc5_.o18500);
      }
      
      private function o15999() : void
      {
         var _loc1_:String = data.o5099.o9009("dialogMessage.unableToAddSkillPoint.title");
         var _loc2_:String = data.o5099.o9009("dialogMessage.unableToAddSkillPoint.message");
         o19747(_loc1_,_loc2_);
      }
      
      private function o9220() : void
      {
         var _loc1_:String = data.o5099.o9009("dialogMessage.maxSkillLevelMessage.title");
         var _loc2_:String = data.o5099.o9009("dialogMessage.maxSkillLevelMessage.message");
         o19747(_loc1_,_loc2_);
      }
      
      private function o10771(param1:int) : void
      {
         var _loc2_:String = data.o5099.o9009("dialogMessage.lockedSkillMessage.title");
         var _loc3_:String = data.o5099.o9009("dialogMessage.lockedSkillMessage.message");
         _loc3_ = _loc3_.replace("[UNLOCK_LEVEL]",param1);
         o19747(_loc2_,_loc3_);
      }
      
      private function o2669() : String
      {
         return "Max level reached";
      }
      
      private function o9761(param1:o1492) : Boolean
      {
         return this.data.o7923.level < param1.o10387;
      }
      
      override protected function o9635(param1:int, param2:Boolean) : void
      {
         var _loc5_:* = null;
         var _loc6_:o1492 = data.o5292.o6055.o19740[param1];
         _loc5_ = data.o7923.o11241(_loc6_.o10374);
         _loc5_ = data.o7923.o11241(_loc6_.o10374);
         var _loc4_:int = _loc5_ == null?0:_loc5_.level;
         var _loc3_:String = _loc6_.o1220(_loc4_ + 1);
         o18910(true);
         if(param2)
         {
            if(o9761(_loc6_))
            {
               o10771(_loc6_.o10387);
            }
            else if(_loc4_ >= data.o5292.o16799)
            {
               o9220();
            }
            else if(data.o7923.o6061() <= 0)
            {
               o15999();
            }
            else
            {
               o13483(_loc6_.name,_loc6_.o7792,_loc6_.o1220(_loc4_),_loc3_,o20121(_loc6_),o9761(_loc6_),_loc6_.o10387,_loc4_,_loc6_.o18500);
            }
         }
         else if(o9761(_loc6_))
         {
            o4872();
         }
         else if(_loc4_ >= data.o5292.o16799)
         {
            o18910(false);
            o13483(_loc6_.name,_loc6_.o7792,_loc6_.o1220(_loc4_),"Max level",o20121(_loc6_),o9761(_loc6_),_loc6_.o10387,_loc4_,_loc6_.o18500);
         }
         else if(data.o7923.o6061() <= 0)
         {
            o4872();
         }
         else
         {
            o13483(_loc6_.name,_loc6_.o7792,_loc6_.o1220(_loc4_),_loc3_,o20121(_loc6_),o9761(_loc6_),_loc6_.o10387,_loc4_,_loc6_.o18500);
         }
      }
      
      override protected function o16974(param1:int, param2:Boolean) : void
      {
         var _loc5_:* = null;
         var _loc6_:o1492 = data.o7923.o18649()[param1];
         _loc5_ = data.o7923.o11241(_loc6_.o10374);
         _loc5_ = data.o7923.o11241(_loc6_.o10374);
         var _loc4_:int = _loc5_ == null?0:_loc5_.level;
         var _loc3_:String = _loc6_.o1220(_loc4_ + 1);
         o18910(true);
         if(param2)
         {
            if(o9761(_loc6_))
            {
               o10771(_loc6_.o10387);
            }
            else if(_loc4_ >= data.o5292.o16799)
            {
               o9220();
            }
            else if(data.o7923.o6061() <= 0)
            {
               o15999();
            }
            else
            {
               o13483(_loc6_.name,_loc6_.o7792,_loc6_.o1220(_loc4_),_loc3_,o20121(_loc6_),o9761(_loc6_),_loc6_.o10387,_loc4_,_loc6_.o18500);
            }
         }
         else if(o9761(_loc6_))
         {
            o4872();
         }
         else if(_loc4_ >= data.o5292.o16799)
         {
            o18910(false);
            o13483(_loc6_.name,_loc6_.o7792,_loc6_.o1220(_loc4_),"Max level",o20121(_loc6_),o9761(_loc6_),_loc6_.o10387,_loc4_,_loc6_.o18500);
         }
         else if(data.o7923.o6061() <= 0)
         {
            o4872();
         }
         else
         {
            o13483(_loc6_.name,_loc6_.o7792,_loc6_.o1220(_loc4_),_loc3_,o20121(_loc6_),o9761(_loc6_),_loc6_.o10387,_loc4_,_loc6_.o18500);
         }
      }
      
      private function o12562() : void
      {
         o17091(this.data.o7923.o6061());
      }
      
      override protected function o12664(param1:int, param2:int) : void
      {
         var _loc3_:int = 0;
         var _loc5_:o1492 = data.o5292.o6055.o19740[param1];
         if(o9761(_loc5_))
         {
            return;
         }
         _loc3_ = 0;
         while(_loc3_ < param2)
         {
            data.o7923.o4500(_loc5_.o10374);
            _loc3_++;
         }
         o12562();
         var _loc4_:o6197 = data.o7923.o11241(_loc5_.o10374);
         this.o7187(param1,_loc5_.name,_loc4_ == null?0:_loc4_.level,_loc5_.o10374,o9761(_loc5_),_loc5_.o1267 == false);
         data.o12094.o3323(data);
         o4519.o8116.o4812.ui.o15528.play();
         data.saveData();
         o10150();
         data.o15894.o4848.o2719.o4500(_loc4_.o20868.name,_loc4_.level);
      }
      
      override protected function o16917(param1:int, param2:int) : void
      {
         var _loc3_:int = 0;
         var _loc5_:o1492 = data.o7923.o18649()[param1];
         if(o9761(_loc5_))
         {
            return;
         }
         _loc3_ = 0;
         while(_loc3_ < param2)
         {
            data.o7923.o4500(_loc5_.o10374);
            _loc3_++;
         }
         o12562();
         var _loc4_:o6197 = data.o7923.o11241(_loc5_.o10374);
         this.o14083(param1,_loc5_.name,_loc4_ == null?0:_loc4_.level,_loc5_.o10374,o9761(_loc5_),_loc5_.o1267 == false);
         data.o12094.o3323(data);
         o4519.o8116.o4812.ui.o15528.play();
         data.saveData();
         o10150();
         data.o15894.o4848.o2719.o4500(_loc4_.o20868.name,_loc4_.level);
      }
      
      override protected function o1499() : void
      {
         data.o15894.o4848.o18278.o6950(602);
         o10150();
      }
      
      override protected function o9245() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:int = 0;
         if(data.o7923.o6061() == data.o7923.level + data.o7923.o10192)
         {
            _loc1_ = data.o5099.o9009("dialogMessage.unableToRespec.title");
            _loc2_ = data.o5099.o9009("dialogMessage.unableToRespec.message");
            (this.o16989 as o14043).o12407(_loc1_,_loc2_);
            return;
         }
         if(data.o7923.o7768 > 0)
         {
            data.o7923.o7768 = data.o7923.o7768 - 1;
            data.o7923.o8271();
            o10150();
            o413();
         }
         else
         {
            _loc3_ = data.o5292.o3911.o4291(602);
            this.o17942(_loc3_);
         }
      }
      
      override protected function o11639(param1:o15625) : void
      {
         o4519.o8116.o4812.ui.o14759.play();
      }
      
      override protected function o2806(param1:o15625) : void
      {
         o4519.o8116.o4812.ui.o876.play();
      }
      
      public function o17942(param1:int) : void
      {
         var _loc2_:String = data.o5099.o9009("dialogMessage.confirmRespecPurchase.title");
         var _loc3_:String = data.o5099.o9009("dialogMessage.confirmRespecPurchase.message");
         (o16989 as o14043).o13414(_loc2_,_loc3_,602,o20050);
      }
      
      override protected function o6662(param1:Event) : void
      {
         super.o6662(param1);
         if(o12514 == false)
         {
            o10150();
         }
      }
      
      private function o10150() : void
      {
         var _loc1_:* = null;
         if(this.o1878 != null)
         {
            _loc1_ = this.o1878 as o978;
            _loc1_.o19509(data.o7923.o6061());
            this.o19591(data.o7923);
         }
      }
      
      override protected function o12638(param1:Event) : void
      {
         super.o12638(param1);
         data.o15894.o4848.o2719.o16945 = 2;
      }
      
      override public function o13315(param1:int, param2:Function) : void
      {
         super.o13315(param1,param2);
         data.o15894.o4848.o2719.o16945 = 0;
      }
   }
}
