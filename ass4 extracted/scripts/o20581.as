package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class o20581 extends o9743
   {
       
      
      private var o16989:o13064;
      
      private var o16093:o79;
      
      private var o14001:TextField;
      
      private var o18072:MovieClip;
      
      private var o1721:MovieClip;
      
      private var o5902:MovieClip;
      
      private var o18409:MovieClip;
      
      private var o3797:o15625;
      
      private var o8713:TextField;
      
      private var o13027:TextField;
      
      private var o16030:TextField;
      
      private var o9886:TextField;
      
      private var o2006:MovieClip;
      
      private var o7552:MovieClip;
      
      private var o10658:MovieClip;
      
      private var o1902:MovieClip;
      
      private var o5915:Boolean;
      
      private var o3404:int;
      
      private var o7002:Function;
      
      private var o15543:TextField;
      
      private var o16355:Boolean;
      
      private var o14065:Function = null;
      
      private var o3492:o14096 = null;
      
      private var o5346:o1253 = null;
      
      private var o14876:Boolean = false;
      
      public function o20581()
      {
         super();
      }
      
      public function o16384(param1:MovieClip, param2:o13064, param3:Boolean, param4:Function = null) : void
      {
         var _loc6_:* = null;
         super.init(param1);
         this.o16989 = param2;
         this.o16355 = param3;
         o14001 = container.getChildByName("lblInfo") as TextField;
         o18072 = container.getChildByName("equipmentVersion") as MovieClip;
         var _loc5_:MovieClip = container.getChildByName("gearContainer") as MovieClip;
         o16093 = new o79();
         o16093.o3075 = false;
         o16093.init(_loc5_);
         this.o5452(o16093);
         o15543 = container.getChildByName("lblApproxDrop") as TextField;
         this.o7002 = param4;
         if(!(this is o18331))
         {
            o1902 = container.getChildByName("newIcon") as MovieClip;
            o3797 = o9679.o17578("btnCraft",container);
            o5902 = container.getChildByName("shardsCounter") as MovieClip;
            o18409 = container.getChildByName("sasCash") as MovieClip;
            o16030 = o5902.getChildByName("shards") as TextField;
            o9886 = o18409.getChildByName("lblSasMoney") as TextField;
            o8713 = o3797.asset.getChildByName("craftCost") as TextField;
            o13027 = o3797.asset.getChildByName("sasCreds") as TextField;
            o2006 = container.getChildByName("craftingAnimation") as MovieClip;
            o7552 = container.getChildByName("craftingLocked") as MovieClip;
            o10658 = container.getChildByName("craftInfo") as MovieClip;
            _loc6_ = o7552.getChildByName("txt") as TextField;
            _loc6_.text = "";
            o2006.addEventListener("enterFrame",o15441,false,100,true);
            if(o13800.o3765)
            {
               o16030.text = o16724.o10417(o14200.o19505.o7923.o10252) + " Alloy";
               o9886.text = "$" + o16724.o10417(o14200.o19505.o7923.o20170);
               o3797.addEventListener("click",o16082,false,0,true);
               if(o2006)
               {
                  o2006.visible = false;
                  o2006.stop();
               }
            }
            else
            {
               o18409.visible = false;
               o1902.visible = false;
               o3797.visible = false;
               o10658.visible = false;
               o13027.visible = false;
               o8713.visible = false;
               o5902.visible = false;
               o7552.visible = false;
               o16030.visible = false;
               o9886.visible = false;
               if(o2006)
               {
                  o2006.visible = false;
               }
            }
         }
         o1721 = container.getChildByName("topStats") as MovieClip;
         o1721.visible = false;
      }
      
      private function o16082(param1:MouseEvent) : void
      {
         var _loc3_:int = 0;
         var _loc2_:int = 0;
         if(o13800.o17371 == false || o13800.o3765 == false)
         {
            return;
         }
         if(o5915)
         {
            _loc3_ = o14200.o19505.o7923.o20557() + 1;
            if(_loc3_ > o14413.o20705)
            {
               this.o16989.o12407("No Inventory Space","You do not have enough inventory space to craft this weapon. Sell some weapons to make room to craft this item.");
            }
            else
            {
               this.o16989.o13483("Confirm Crafting","Are you sure you want to craft this weapon?",o2956);
            }
         }
         else
         {
            _loc2_ = o14200.o19505.o7923.o16938() + 1;
            if(_loc2_ > o14413.o8383)
            {
               this.o16989.o12407("No Inventory Space","You do not have enough inventory space to craft this armor. Sell some armor to make room to craft this armor item");
            }
            else
            {
               this.o16989.o13483("Confirm Crafting","Are you sure you want to craft this armor?",o2956);
            }
         }
      }
      
      private function o2956() : void
      {
         if(o5915)
         {
            o3492 = o14200.o19505.o15894.o10221(o3404,true);
            o3492.o1419 = true;
            if(o3492)
            {
               if(o14200.o19505.o7923.o10252 < o13800.o5504(o3492.o2752.o11570,o3492.o2752.o9421,o3492.o2752.id,true) || o14200.o19505.o7923.o20170 < o13800.o12625(o3492.o2752.o11570,o3492.o2752.o9421,o3492.o2752.id,true))
               {
                  this.o16989.o12407("Not enough funds to craft this item!","This item requires " + o16724.o10417(o13800.o5504(o3492.o2752.o11570,o3492.o2752.o9421,o3492.o2752.id,true)) + " Alloy and $" + o16724.o10417(o13800.o12625(o3492.o2752.o11570,o3492.o2752.o9421,o3492.o2752.id,true)) + " Cash.");
                  return;
               }
               o3492.o315();
               o14200.o19505.o15894.o4848.o2719.o20653(o3492.o10748,o3492.o2752.o11570,o13800.o5504(o3492.o2752.o11570,o3492.o2752.o9421),o13800.o12625(o3492.o2752.o11570,o3492.o2752.o9421),o14200.o19505.o7923.o10252,o14200.o19505.o7923.o20170);
               o14200.o19505.data.o3811++;
               o14200.o19505.data.o7686++;
               o11407.o3876();
               o11407.o18088();
               o3492.o2397 = true;
               o14200.o19505.o7923.o20444(o3492);
               o14200.o19505.o7923.o10252 = o14200.o19505.o7923.o10252 - o13800.o5504(o3492.o2752.o11570,o3492.o2752.o9421,o3492.o2752.id,true);
               o14200.o19505.o7923.o20170 = o14200.o19505.o7923.o20170 - o13800.o12625(o3492.o2752.o11570,o3492.o2752.o9421,o3492.o2752.id,true);
               o16030.text = o16724.o10417(o14200.o19505.o7923.o10252) + " Alloy";
               o9886.text = "$" + o16724.o10417(o14200.o19505.o7923.o20170);
               o14200.o19505.saveData();
               o14065 = o1908;
               o3797.visible = false;
               if(o1902)
               {
                  o1902.visible = false;
               }
               if(o7002)
               {
                  o2006.gotoAndPlay(0);
                  o2006.visible = true;
                  o14876 = true;
               }
            }
         }
         else
         {
            o5346 = o14200.o19505.o15894.o4938(o3404);
            o5346.o1419 = true;
            if(o5346)
            {
               if(o14200.o19505.o7923.o10252 < o13800.o5504(o5346.o10239.o18072,o5346.o10239.o9421) || o14200.o19505.o7923.o20170 < o13800.o12625(o5346.o10239.o18072,o5346.o10239.o9421))
               {
                  this.o16989.o12407("Not enough funds to craft this item!","This item requires " + o16724.o10417(o13800.o5504(o5346.o10239.o18072,o5346.o10239.o9421)) + " Alloy and $" + o16724.o10417(o13800.o12625(o5346.o10239.o18072,o5346.o10239.o9421)) + " Cash.");
                  return;
               }
               o14200.o19505.o15894.o4848.o2719.o11469(o5346.o5689,o5346.o10239.o18072,o13800.o5504(o5346.o10239.o18072,o5346.o10239.o9421),o13800.o12625(o5346.o10239.o18072,o5346.o10239.o9421),o14200.o19505.o7923.o10252,o14200.o19505.o7923.o20170);
               o14200.o19505.data.o13060++;
               o14200.o19505.data.o7686++;
               o11407.o3876();
               o11407.o14077();
               o5346.o2397 = true;
               o14200.o19505.o7923.o2205(o5346);
               o14200.o19505.o7923.o10252 = o14200.o19505.o7923.o10252 - o13800.o5504(o5346.o10239.o18072,o5346.o10239.o9421);
               o14200.o19505.o7923.o20170 = o14200.o19505.o7923.o20170 - o13800.o12625(o5346.o10239.o18072,o5346.o10239.o9421);
               o16030.text = o16724.o10417(o14200.o19505.o7923.o10252) + " Alloy";
               o9886.text = "$" + o16724.o10417(o14200.o19505.o7923.o20170);
               o14200.o19505.saveData();
               o14065 = o4593;
               o3797.visible = false;
               if(o1902)
               {
                  o1902.visible = false;
               }
               if(o7002)
               {
                  o2006.gotoAndPlay(0);
                  o2006.visible = true;
                  o14876 = true;
                  o7002(true);
               }
            }
         }
      }
      
      private function o1908() : void
      {
         var _loc1_:* = null;
         if(o3492)
         {
            _loc1_ = o4117.o18521(o14200.o19505,o14200.o19505.o7923);
            o991(o3492,_loc1_);
         }
      }
      
      private function o4593() : void
      {
         var _loc1_:* = null;
         if(o5346)
         {
            _loc1_ = o4117.o18521(o14200.o19505,o14200.o19505.o7923);
            o10577(o5346,_loc1_);
         }
      }
      
      private function o15441(param1:Event) : void
      {
         if(o14876)
         {
            if(o2006.currentFrameLabel == "itemChange")
            {
               if(o14065)
               {
                  o14065();
               }
               o7002(true);
            }
            if(o2006.currentFrame == o2006.totalFrames - 1)
            {
               o2006.visible = false;
               o14876 = false;
               o3797.visible = true;
               if(o1902)
               {
                  o1902.visible = true;
               }
            }
         }
      }
      
      public function o991(param1:o14096, param2:o4117) : void
      {
         var _loc4_:* = null;
         var _loc6_:* = null;
         var _loc5_:* = null;
         o14001.htmlText = param1.o5290;
         o3404 = param1.o10748;
         o5915 = true;
         if(param1.o2752.o19901)
         {
            o18072.gotoAndStop(4);
         }
         else
         {
            o18072.gotoAndStop(param1.o2752.o11570);
         }
         o16093.o19237(param1,param2);
         if(o13800.o3765)
         {
            if(param1.o2752.o19901 && o3797 && true)
            {
               if(o3797)
               {
                  o3797.visible = false;
                  o10658.visible = false;
                  o3797.removeEventListener("click",o16082);
               }
               if(o1902)
               {
                  o1902.visible = false;
               }
               if(o5902)
               {
                  o5902.visible = false;
               }
               if(o7552)
               {
                  o7552.visible = false;
               }
               if(o18409)
               {
                  o18409.visible = false;
               }
            }
            else
            {
               if(o1902)
               {
                  o1902.visible = true;
               }
               if(o10658)
               {
                  o10658.visible = true;
               }
               if(o14200.o19505.o7923.level < 90 && o14200.o19505.o7923.level < param1.o5588)
               {
                  if(o7552)
                  {
                     o7552.visible = true;
                     _loc4_ = o7552.getChildByName("txt") as TextField;
                     _loc4_.text = "Unlock at level " + (param1.o5588 > 90?90:param1.o5588);
                  }
                  if(o3797)
                  {
                     o3797.removeEventListener("click",o16082);
                  }
               }
               else
               {
                  if(o7552)
                  {
                     o7552.visible = false;
                  }
                  if(o3797)
                  {
                     o3797.addEventListener("click",o16082,false,0,true);
                  }
               }
               if(o3797)
               {
                  if(o3797)
                  {
                     o3797.visible = true;
                  }
                  if(o5902)
                  {
                     o5902.visible = true;
                  }
                  if(o18409)
                  {
                     o18409.visible = true;
                  }
                  o8713.text = o16724.o10417(o13800.o5504(param1.o2752.o11570,param1.o2752.o9421,param1.o2752.id,true)) + " Alloy";
                  o13027.text = "$" + o16724.o10417(o13800.o12625(param1.o2752.o11570,param1.o2752.o9421,param1.o2752.id,true));
               }
            }
         }
         if(param1.grade < 0)
         {
            o20355.o11365(o16093.o17109.o3700 as MovieClip,2953746,0.9);
         }
         else
         {
            _loc6_ = o14200.o19505.data.o1334(param1.o10748);
            if(_loc6_ == null || o16355 == false)
            {
               o1721.visible = false;
            }
            else
            {
               o1721.visible = true;
               _loc5_ = (_loc6_.o10935 < 0?2147483647.toString():_loc6_.o10935.toString()) + " hp\n";
               _loc5_ = _loc5_ + (_loc6_.o5451.toString() + "\n");
               _loc5_ = _loc5_ + (_loc6_.o1991.toString() + "\n");
               _loc5_ = _loc5_ + (_loc6_.o13019.toString() + "\n");
               _loc5_ = _loc5_ + (_loc6_.o12546.toString() + " game" + (_loc6_.o12546 == 1?"":"s") + "\n");
               _loc5_ = _loc5_ + (_loc6_.o10753.toString() + " hp");
               o1256(o1721.getChildByName("lblMoreInfoValue") as TextField,_loc5_);
            }
         }
         if(param1.o2752.o19901)
         {
            o15543.visible = false;
         }
         else
         {
            o15543.visible = true;
         }
         var _loc3_:int = param1.o5588 > 100?100:param1.o5588;
         o15543.text = "Approx Drop Lvl: " + _loc3_;
      }
      
      public function o10577(param1:o1253, param2:o4117) : void
      {
         var _loc3_:* = null;
         o14001.htmlText = param1.o1502;
         o18072.gotoAndStop(param1.o10239.o18072);
         o16093.o5204(param1,param2);
         o3404 = param1.o15372;
         if(o13800.o3765)
         {
            if(param1.o19901 && o3797)
            {
               if(o3797)
               {
                  o3797.visible = false;
                  o10658.visible = false;
                  o3797.removeEventListener("click",o16082);
               }
               if(o5902)
               {
                  o5902.visible = false;
               }
               if(o1902)
               {
                  o1902.visible = false;
               }
               if(o7552)
               {
                  o7552.visible = false;
               }
               if(o18409)
               {
                  o18409.visible = false;
               }
            }
            else
            {
               o10658.visible = true;
               if(o14200.o19505.o7923.level < 90 && o14200.o19505.o7923.level < param1.o5588)
               {
                  if(o7552)
                  {
                     o7552.visible = true;
                     _loc3_ = o7552.getChildByName("txt") as TextField;
                     _loc3_.text = "Unlock at level " + (param1.o5588 > 90?90:param1.o5588);
                  }
                  if(o3797)
                  {
                     o3797.removeEventListener("click",o16082);
                  }
               }
               else
               {
                  if(o7552)
                  {
                     o7552.visible = false;
                  }
                  if(o3797)
                  {
                     o3797.addEventListener("click",o16082,false,0,true);
                  }
               }
               if(o1902)
               {
                  o1902.visible = true;
               }
               if(o3797)
               {
                  o3797.visible = true;
                  if(o5902)
                  {
                     o5902.visible = true;
                  }
                  if(o18409)
                  {
                     o18409.visible = true;
                  }
                  o8713.text = o16724.o10417(o13800.o5504(param1.o10239.o18072,param1.o10239.o9421));
                  o13027.text = "$" + o16724.o10417(o13800.o12625(param1.o10239.o18072,param1.o10239.o9421));
               }
            }
         }
         if(param1.grade < 0)
         {
            o20355.o11365(o16093.o17109.o3700 as MovieClip,2953746,0.9);
         }
         if(param1.o10239.o19901)
         {
            o15543.visible = false;
         }
         else
         {
            o15543.visible = true;
         }
         o15543.text = "Approx Drop Lvl: " + (param1.o5588 > 100?100:param1.o5588);
      }
      
      override public function o13640() : void
      {
         if(o3797)
         {
            o3797.removeEventListener("click",o16082);
         }
         if(o2006)
         {
            o2006.removeEventListener("enterFrame",o15441);
         }
         o18409 = null;
         o14001 = null;
         o3797 = null;
         o5346 = null;
         o10658 = null;
         o3492 = null;
         o16989 = null;
         o8713 = null;
         o13027 = null;
         o14065 = null;
         o5902 = null;
         o16093 = null;
         o18072 = null;
         o15543 = null;
         o2006 = null;
         o16030 = null;
         o9886 = null;
         super.o13640();
      }
   }
}
