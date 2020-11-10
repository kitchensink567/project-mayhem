package
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class o18819 extends o7394
   {
       
      
      private var o19419:o14200;
      
      private var o8673:Vector.<o19082>;
      
      private var o11620:Vector.<o14096>;
      
      private var o4256:Vector.<o1253>;
      
      public var o16989:o14043;
      
      private var o6674:Boolean = false;
      
      private const o15450:int = 23000;
      
      private const o19421:int = 2000;
      
      public function o18819(param1:o14200, param2:o14043)
      {
         super();
         this.o19419 = param1;
         this.o16989 = param2;
         param1.addEventListener(o14200.SAS_MONEY_CHANGED,o13154,false,0,true);
      }
      
      override public function o16489() : void
      {
         var _loc7_:* = null;
         var _loc11_:* = null;
         var _loc8_:* = null;
         var _loc6_:* = null;
         var _loc1_:* = null;
         var _loc4_:* = null;
         super.o16489();
         if(o19419.o5292.o15863)
         {
            o9953(o19419.data.o911);
         }
         o19419.o15894.o4848.o2719.o2375();
         o8673 = o19419.o5292.o3911.o5743(o19419.o7923.level);
         if(o582())
         {
            _loc7_ = new o19082();
            _loc7_.name = "PREMIUM WEAPONS!";
            o8673.splice(0,0,_loc7_);
         }
         var _loc5_:o17849 = o4519.o8116.o16619;
         var _loc2_:Vector.<o8925> = o19419.o5292.o3911.o5409(o19419.o7923.level);
         o11620 = new Vector.<o14096>();
         var _loc13_:int = 0;
         var _loc12_:* = _loc2_;
         for each(var _loc3_ in _loc2_)
         {
            _loc11_ = new o14096();
            _loc8_ = new o10481(_loc3_,0);
            _loc11_.init(_loc8_,o4519.o8116.o1184.o17638[_loc3_.o17638] as o15109,_loc5_,0,-1);
            o11620.push(_loc11_);
         }
         var _loc10_:Vector.<o12420> = o19419.o5292.o3911.o10951(o19419.o7923.level);
         o4256 = new Vector.<o1253>();
         var _loc15_:int = 0;
         var _loc14_:* = _loc10_;
         for each(var _loc9_ in _loc10_)
         {
            _loc6_ = new o1253();
            _loc6_.init(_loc9_,0,_loc5_,0,-1);
            o4256.push(_loc6_);
         }
         o11903.o1746(o19419.o5292.o3911.o6449.length);
         o7264.o1746(o19419.o5292.o3911.o6449.length);
         o12678.o1746(o8673.length);
         o19325.o1746(o8673.length);
         o5672.o1746(o19419.o5292.o3911.o1368.length);
         o2163(o19419.o7923.o20170);
         o19419.o15894.o4848.o18278.o16280(null,o19869.o6389,o6118);
         o19419.o15894.o4848.o18278.o16280(null,o19869.o17670,o9264);
         o19419.o15894.o4848.o18278.o16280(null,o19869.o391,o98);
         if(o12984 == false)
         {
            _loc1_ = o14763;
            _loc4_ = o19419.o5292.o3911.o642[0];
            _loc1_.o13586 = _loc4_.name;
            _loc1_.o7658(o9150().value,o9150().value,_loc4_.o16582);
         }
         o19419.o15894.o4848.o18278.o15587();
      }
      
      override protected function o1284() : o15184
      {
         return new o4629(o19419);
      }
      
      override public function close() : void
      {
         super.close();
         o16989.o1258();
      }
      
      override public function o13640() : void
      {
         o19419.removeEventListener(o14200.SAS_MONEY_CHANGED,o13154);
         if(o19419.o5292.o15863)
         {
            o19419.data.removeEventListener(o7751.o20041,o19000);
         }
         o19419.o15894.o4848.o18278.o12657(o19869.o6389,o6118);
         o19419.o15894.o4848.o18278.o12657(o19869.o17670,o9264);
         o19419.o15894.o4848.o18278.o12657(o19869.o391,o98);
         o19419 = null;
         o8673 = null;
         o11620 = null;
         o4256 = null;
         o16989 = null;
         super.o13640();
      }
      
      protected function o13154(param1:Event) : void
      {
         if(o19419.o7923 != null)
         {
            o2163(o19419.o7923.o20170);
         }
      }
      
      override protected function o11048() : void
      {
         if(o19419.o5292.o15863)
         {
            o19419.data.addEventListener(o7751.o20041,o19000,false,0,true);
         }
      }
      
      private function o19000(param1:Event) : void
      {
         o9953(o19419.data.o911);
      }
      
      override protected function o9524(param1:int, param2:o15625) : void
      {
         var _loc4_:o2982 = param2 as o2982;
         if(o19419.o5292.o3911.o6449.length < param1 + 1)
         {
            return;
         }
         var _loc3_:o4162 = o19419.o5292.o3911.o6449[param1];
         var _loc6_:String = param2.asset.name;
         var _loc7_:Boolean = _loc3_.o18685;
         var _loc5_:* = _loc6_.indexOf("Limited") >= 0;
         if(_loc4_.enabled)
         {
            if(_loc5_)
            {
               _loc4_.visible = _loc7_;
            }
            else
            {
               _loc4_.visible = !_loc7_;
            }
         }
         _loc4_.o13586 = _loc3_.name;
         _loc4_.o7658(_loc3_.o15127,_loc3_.o302,_loc3_.o2000);
         if(_loc5_)
         {
            this.o7264.o2120 = -1;
         }
         else
         {
            this.o5672.o2120 = -1;
         }
      }
      
      override protected function o558(param1:int, param2:o15625) : void
      {
         var _loc4_:o2982 = param2 as o2982;
         var _loc3_:o4162 = o19419.o5292.o3911.o1368[param1];
         _loc4_.o13586 = _loc3_.name;
         _loc4_.o7658(_loc3_.o15127,_loc3_.o302,_loc3_.o2000);
      }
      
      override protected function o12172(param1:int, param2:o15625) : void
      {
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:int = 0;
         var _loc4_:* = null;
         var _loc3_:* = null;
         var _loc5_:o7270 = param2 as o7270;
         if(param1 < o11620.length)
         {
            _loc6_ = o11620[param1];
            _loc5_.o13586 = _loc6_.o7501;
            _loc5_.o7658(_loc6_.o2752.o9421);
            _loc7_ = _loc6_.o8815(null);
            _loc5_.o3700 = _loc7_;
            _loc7_.o6088 = _loc5_;
         }
         else
         {
            _loc8_ = param1 - o11620.length;
            _loc4_ = o4256[_loc8_];
            _loc5_.o13586 = _loc4_.o9912;
            _loc5_.o7658(_loc4_.o10239.o9421);
            _loc3_ = _loc4_.o8815(null);
            _loc5_.o3700 = _loc3_;
            _loc3_.o6088 = _loc5_;
         }
      }
      
      private function o18996(param1:int, param2:Boolean) : void
      {
         var _loc14_:* = null;
         var _loc4_:* = null;
         var _loc20_:* = false;
         var _loc16_:* = null;
         var _loc9_:* = null;
         var _loc17_:* = null;
         var _loc21_:* = null;
         var _loc7_:* = null;
         var _loc18_:* = null;
         var _loc12_:* = undefined;
         var _loc15_:int = 0;
         var _loc11_:* = null;
         var _loc6_:* = undefined;
         var _loc19_:int = 0;
         var _loc10_:* = null;
         o6674 = param2;
         if(param2 && param1 < o19419.o5292.o3911.o1368.length)
         {
            _loc14_ = o19419.o5292.o3911.o1368[param1];
         }
         else if(param2 == false && param1 < o19419.o5292.o3911.o6449.length)
         {
            _loc14_ = o19419.o5292.o3911.o6449[param1];
         }
         else
         {
            return;
         }
         if(_loc14_.type == 0 && _loc14_.o17160 == 0)
         {
            _loc4_ = o13194(param1,_loc14_.name,_loc14_.o7962,_loc14_.o302,_loc14_.o14335);
            _loc20_ = _loc14_.o15435 != null;
            if(_loc20_)
            {
               _loc4_.o13622(_loc14_.o15435);
            }
            if(_loc20_ == false)
            {
               var _loc23_:int = 0;
               var _loc22_:* = _loc14_.o11620;
               for each(var _loc3_ in _loc14_.o11620)
               {
                  _loc16_ = o19419.o15894.o19318(_loc3_.o10748);
                  _loc9_ = _loc16_.o8815(null);
                  _loc17_ = _loc4_.o11466(_loc16_.o7501,_loc9_,1);
                  _loc9_.o6088 = _loc17_;
               }
               var _loc25_:int = 0;
               var _loc24_:* = _loc14_.o4256;
               for each(var _loc5_ in _loc14_.o4256)
               {
                  _loc21_ = o19419.o15894.o4938(_loc5_.o15568,_loc5_.grade,_loc5_.o11314);
                  _loc7_ = _loc21_.o8815(null);
                  _loc18_ = _loc4_.o11466(_loc21_.o9912,_loc7_,1);
                  _loc7_.o6088 = _loc18_;
               }
               _loc12_ = _loc14_.o10787();
               var _loc27_:int = 0;
               var _loc26_:* = _loc12_;
               for each(var _loc13_ in _loc12_)
               {
                  _loc15_ = _loc14_.o17236(_loc13_);
                  _loc11_ = o19419.o5292.o9063(_loc13_);
                  _loc4_.o14688(_loc11_.o7501,_loc11_.o2752.o12734 + 1,_loc15_);
               }
               _loc6_ = _loc14_.o9974();
               var _loc29_:int = 0;
               var _loc28_:* = _loc6_;
               for each(var _loc8_ in _loc6_)
               {
                  _loc19_ = _loc14_.o1417(_loc8_);
                  _loc10_ = o19419.o5292.o18364(_loc8_);
                  _loc4_.o15032(_loc10_.name,_loc8_,_loc19_);
               }
               if(_loc14_.o18409 > 0)
               {
                  _loc4_.o12601("",_loc14_.o18409);
               }
            }
         }
         else
         {
            o14703(param1,_loc14_.name,_loc14_.o7962,_loc14_.o302,_loc14_.o2000);
         }
      }
      
      override protected function o1040(param1:int) : void
      {
         o18996(param1,false);
      }
      
      private function o13520(param1:String, param2:String, param3:String) : String
      {
         var _loc4_:String = param1.replace(param2,param3);
         while(_loc4_ != param1)
         {
            param1 = _loc4_;
            _loc4_ = param1.replace(param2,param3);
         }
         return _loc4_;
      }
      
      override protected function o8054(param1:int) : void
      {
         var _loc2_:o19082 = o8673[param1];
         var _loc4_:String = o19419.o5099.o9009("dialogMessage.confirmStrongboxPurchase.title");
         var _loc5_:String = o19419.o5099.o9009("dialogMessage.confirmStrongboxPurchase.message");
         _loc5_ = _loc5_.replace("[STRONGBOX_COUNT]",_loc2_.name);
         _loc5_ = o13520(_loc5_,"\\n","\n");
         var _loc3_:Array = _loc5_.split("\n");
         _loc4_ = _loc3_[0];
         _loc3_ = _loc3_.splice(1,_loc3_.length - 1);
         _loc5_ = _loc3_.join("\n");
         var _loc6_:int = o19419.o5292.o3911.o4291(_loc2_.o2296);
         o13968(param1,_loc4_,_loc5_,_loc6_,_loc2_.o16582,_loc2_.o1830);
      }
      
      override protected function o5572(param1:int) : void
      {
         var _loc9_:int = 0;
         var _loc3_:* = null;
         var _loc6_:* = null;
         var _loc4_:int = 0;
         var _loc2_:int = 0;
         var _loc7_:* = null;
         var _loc5_:* = null;
         var _loc8_:int = 0;
         if(param1 < o11620.length)
         {
            _loc9_ = o19419.o7923.o1819().length + 1;
            if(_loc9_ > o14413.o20705)
            {
               _loc3_ = o19419.o5099.o9009("dialogMessage.purchaseTooManyWeapons.title");
               _loc6_ = o19419.o5099.o9009("dialogMessage.purchaseTooManyWeapons.message");
               _loc4_ = _loc9_ - o14413.o20705;
               if(_loc4_ == 1)
               {
                  _loc6_ = _loc6_.replace("[SELL_COUNT]","1 weapon");
               }
               else
               {
                  _loc6_ = _loc6_.replace("[SELL_COUNT]",_loc4_ + " weapons");
               }
               o16989.o12407(_loc3_,_loc6_);
               return;
            }
            (this.o4136(param1) as o4629).o19731(o11620[param1]);
         }
         else
         {
            _loc2_ = o19419.o7923.o4256.length + 1;
            if(_loc2_ > o14413.o8383)
            {
               _loc7_ = o19419.o5099.o9009("dialogMessage.purchaseTooMuchEquipment.title");
               _loc5_ = o19419.o5099.o9009("dialogMessage.purchaseTooMuchEquipment.message");
               _loc8_ = _loc2_ - o14413.o8383;
               if(_loc8_ == 1)
               {
                  _loc5_ = _loc5_.replace("[SELL_COUNT]","1 item");
               }
               else
               {
                  _loc5_ = _loc5_.replace("[SELL_COUNT]",_loc8_ + " items");
               }
               o16989.o12407(_loc7_,_loc5_);
               return;
            }
            (this.o4136(param1) as o4629).o10213(o4256[param1 - o11620.length]);
         }
      }
      
      private function o6118(param1:o19869) : void
      {
      }
      
      private function o9264(param1:o19869) : void
      {
         o5668();
      }
      
      private function o5668() : void
      {
         if(o14761 != null)
         {
            o14761.o1602();
            o14761 = null;
         }
         if(o17138 != null)
         {
            o17138.o1602();
            o17138 = null;
         }
      }
      
      private function o98(param1:o19869) : void
      {
         o5668();
         var _loc2_:o4162 = o19419.o5292.o3911.o14690(param1.o19898.o5693);
         if(_loc2_ != null && (_loc2_.o7136 > 0 || _loc2_.o18104 > 0))
         {
            if(_loc2_.o19860().length == 0)
            {
               this.o16989.o7283(null);
            }
            else
            {
               o19419.o202.o324 = true;
            }
         }
      }
      
      override protected function o4580() : void
      {
         var _loc1_:o19082 = o8673[o18911];
         o19419.o15894.o4848.o18278.o6950(_loc1_.o2296);
      }
      
      override protected function o1049() : void
      {
         var _loc2_:* = null;
         var _loc1_:o4162 = !!o6674?o19419.o5292.o3911.o1368[o14487]:o19419.o5292.o3911.o6449[o14487];
         var _loc3_:String = _loc1_.o9504(o19419.o7923);
         if(_loc3_ != null)
         {
            _loc2_ = o19419.o5099.o9009("dialogMessage.comboPackPurchaseError.title");
            o16989.o12407(_loc2_,_loc3_);
            o14761.o1602();
            o14761 = null;
            return;
         }
         o19419.o15894.o4848.o18278.o6950(_loc1_.o2296);
      }
      
      override protected function o11639(param1:o15625) : void
      {
         o4519.o8116.o4812.ui.o14759.play();
      }
      
      override protected function o2806(param1:o15625) : void
      {
         o4519.o8116.o4812.ui.o876.play();
      }
      
      override protected function o20814(param1:int) : void
      {
         o18996(param1,true);
      }
      
      private function o9150() : o16123
      {
         return new o16123(23000 + 2000 * o19419.o7923.level);
      }
      
      override protected function o18189(param1:MouseEvent) : void
      {
         var _loc2_:o19082 = o19419.o5292.o3911.o642[0];
         var _loc3_:String = o19419.o5099.o9009("dialogMessage.confirmStrongboxPurchase.title");
         var _loc4_:String = o19419.o5099.o9009("dialogMessage.confirmStrongboxPurchase.message");
         _loc4_ = _loc4_.replace("[STRONGBOX_COUNT]",_loc2_.name);
         _loc4_ = o13520(_loc4_,"\\n","\n");
         o13625(0,_loc3_,_loc4_,o9150().value,_loc2_.o16582);
      }
      
      override protected function o19753(param1:int, param2:o15625) : void
      {
         var _loc3_:o2982 = param2 as o2982;
         if(param1 == 0)
         {
            _loc3_.visible = false;
            if(o582())
            {
               o14633.visible = true;
               o12678.o19568[0].visible = false;
            }
            o14763.visible = true;
            return;
         }
         if(param1 == 4)
         {
            _loc3_.visible = true;
            o14763.visible = false;
            o14633.visible = false;
            if(o582())
            {
               o12678.o19568[0].visible = true;
            }
         }
         var _loc4_:o19082 = o8673[param1];
         var _loc5_:String = param2.asset.name;
         var _loc7_:Boolean = _loc4_.o18685;
         if(_loc3_.enabled)
         {
            if(_loc5_.indexOf("Limited") >= 0)
            {
               _loc3_.visible = _loc7_;
            }
            else
            {
               _loc3_.visible = !_loc7_;
            }
         }
         _loc3_.o13586 = _loc4_.name;
         _loc3_.o7658(_loc4_.o15127,_loc4_.o302,_loc4_.o16582);
         var _loc6_:TextField = _loc3_.asset.getChildByName("lblMuliples") as TextField;
         _loc6_.text = "X" + _loc4_.o1830.toString();
      }
      
      private function o8190() : void
      {
         o17138.o1602();
      }
      
      override protected function o1866() : void
      {
         var _loc3_:* = null;
         var _loc5_:* = null;
         var _loc2_:* = null;
         var _loc1_:int = 0;
         var _loc4_:int = 0;
         if(o19419.o7923.o20170 < o9150().value)
         {
            _loc3_ = o19419.o5099.o9009("dialogMessage.storeUnableToPurchaseDueToSasCash.title");
            _loc5_ = o19419.o5099.o9009("dialogMessage.storeUnableToPurchaseDueToSasCash.message");
            this.o16989.o12407(_loc3_,_loc5_,o8190);
         }
         else
         {
            _loc2_ = o19419.o5292.o3911.o3100(1000);
            o19419.o202.o11362();
            _loc1_ = 0;
            _loc4_ = 0;
            while(_loc4_ < 10)
            {
               if(_loc1_ <= _loc2_.o1830)
               {
                  o19419.o202.o11612(_loc2_.o9810,true);
                  _loc1_++;
                  _loc4_++;
                  continue;
               }
               break;
            }
            o19419.o202.o19266(o19419.o7923);
            o17138.o1602();
            o19419.o7923.o20170 = o19419.o7923.o20170 - o9150().value;
            o19419.saveData();
            o16989.o13000();
         }
      }
      
      override protected function o17539(param1:Event) : void
      {
         var _loc3_:* = null;
         var _loc2_:Vector.<o6882> = o4519.o8116.o476.o14399;
         var _loc4_:Vector.<int> = new Vector.<int>();
         var _loc7_:int = 0;
         var _loc6_:* = _loc2_;
         for each(var _loc5_ in _loc2_)
         {
            if(_loc5_.o5897.o13779)
            {
               if(_loc5_.type == 6)
               {
                  _loc3_ = _loc5_ as o18422;
                  if(_loc3_.o16273 != -1)
                  {
                     _loc4_.push(_loc3_.o16273);
                  }
                  if(_loc3_.o17007 != -1)
                  {
                     _loc4_.push(_loc3_.o17007);
                  }
                  if(_loc3_.o7547 != -1)
                  {
                     _loc4_.push(_loc3_.o7547);
                  }
               }
            }
         }
         o16989.o2293(_loc4_,o15304());
      }
      
      override public function o582() : Boolean
      {
         return super.o582();
      }
      
      override public function o15304() : Date
      {
         return super.o15304();
      }
   }
}
