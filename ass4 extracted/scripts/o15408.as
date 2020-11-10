package
{
   import assets.ui.screen.help.HelpBossContainerAsset;
   import assets.ui.screen.help.HelpEliteContainerAsset;
   import assets.ui.screen.help.HelpZombieContainerAsset;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class o15408 extends o6539
   {
       
      
      private var o16989:o13064;
      
      private var container:MovieClip;
      
      private var o12971:Number = 73;
      
      private var o18594:Number = 10;
      
      private var o1533:o12885;
      
      private var o17111:HelpEliteContainerAsset;
      
      protected var o1477:Boolean;
      
      public function o15408()
      {
         super();
      }
      
      public function o16384(param1:MovieClip, param2:o13064, param3:int, param4:Boolean) : void
      {
         super.init(param1);
         this.o1477 = param4;
         this.o16989 = param2;
         container = param1.getChildByName("enemyContent") as MovieClip;
         o11048();
         param1.addEventListener("addedToStage",o343,false,0,true);
      }
      
      protected function o11048() : void
      {
      }
      
      private function o343(param1:Event) : void
      {
         var _loc3_:MovieClip = asset.getChildByName("contentMask") as MovieClip;
         var _loc4_:MovieClip = asset.getChildByName("slider") as MovieClip;
         var _loc2_:MovieClip = asset.getChildByName("track") as MovieClip;
         o1533 = new o12885();
         o1533.init(container,_loc3_,_loc2_,_loc4_);
         asset.removeEventListener("addedToStage",o343);
      }
      
      protected function o16826(param1:String, param2:String, param3:String, param4:Vector.<int>) : void
      {
         var _loc7_:HelpZombieContainerAsset = new HelpZombieContainerAsset();
         var _loc8_:int = 0;
         var _loc10_:int = 0;
         var _loc9_:* = param4;
         for each(var _loc5_ in param4)
         {
            _loc8_ = _loc8_ + _loc5_;
         }
         if(_loc8_ == 0)
         {
            param1 = "Classified";
            param2 = "";
         }
         var _loc6_:int = 0;
         o4048(_loc7_,"lblZombieName").text = param1;
         o4048(_loc7_,"lblDetails").text = param2;
         _loc6_ = 0;
         while(_loc6_ < 4)
         {
            o8682(_loc7_,"zombieIcon" + _loc6_.toString()).gotoAndStop(param3);
            o8682(_loc7_,"classified" + _loc6_.toString()).visible = param4[_loc6_] == 0;
            o4048(_loc7_,"lblKillCount" + _loc6_.toString()).text = o16724.o10417(param4[_loc6_]) + " kills";
            o4048(_loc7_,"lblKillCount" + _loc6_.toString()).visible = param4[_loc6_] > 0;
            o8682(_loc7_,"zombieIcon" + _loc6_.toString()).visible = param4[_loc6_] != 0;
            _loc6_++;
         }
         _loc7_.x = o12971;
         _loc7_.y = o18594;
         o18594 = o18594 + 151;
         container.addChild(_loc7_);
      }
      
      private function o8682(param1:MovieClip, param2:String) : MovieClip
      {
         return param1.getChildByName(param2) as MovieClip;
      }
      
      private function o4048(param1:MovieClip, param2:String) : TextField
      {
         return param1.getChildByName(param2) as TextField;
      }
      
      protected function o5160(param1:String, param2:String, param3:String, param4:int, param5:int) : void
      {
         var _loc6_:HelpBossContainerAsset = new HelpBossContainerAsset();
         if(param4 + param5 == 0)
         {
            param1 = "Classified";
            param2 = "";
         }
         o4048(_loc6_,"lblHeading").text = param1;
         o4048(_loc6_,"lblDetails").text = param2;
         o8682(_loc6_,"icon").gotoAndStop(param3);
         o8682(_loc6_,"classified").visible = param4 == 0;
         o4048(_loc6_,"lblKillCount").text = o16724.o10417(param4) + " kills";
         o4048(_loc6_,"lblKillCount").visible = param4 > 0;
         o8682(_loc6_,"iconV2").gotoAndStop(param3);
         o8682(_loc6_,"classifiedV2").visible = param5 == 0;
         o4048(_loc6_,"lblKillCountV2").text = o16724.o10417(param5) + " kills";
         o4048(_loc6_,"lblKillCountV2").visible = param5 > 0;
         o8682(_loc6_,"icon").visible = param4 != 0;
         o8682(_loc6_,"iconV2").visible = param5 != 0;
         _loc6_.x = o12971;
         _loc6_.y = o18594;
         o18594 = o18594 + 96;
         this.container.addChild(_loc6_);
      }
      
      protected function o13013() : void
      {
         var _loc1_:HelpEliteContainerAsset = new HelpEliteContainerAsset();
         _loc1_.x = o12971;
         _loc1_.y = o18594;
         o18594 = o18594 + 290;
         this.container.addChild(_loc1_);
         o17111 = _loc1_;
      }
      
      protected function o2167(param1:int, param2:String, param3:String, param4:String, param5:Boolean) : void
      {
         var _loc10_:MovieClip = o17111.getChildByName("elite" + param1.toString()) as MovieClip;
         var _loc8_:TextField = _loc10_.getChildByName("lblHeading") as TextField;
         var _loc9_:TextField = _loc10_.getChildByName("lblDetails") as TextField;
         var _loc6_:MovieClip = _loc10_.getChildByName("zombieIcon") as MovieClip;
         var _loc7_:MovieClip = _loc10_.getChildByName("classified") as MovieClip;
         if(param5)
         {
            param2 = "Classified";
            param3 = "";
         }
         _loc8_.text = param2;
         _loc9_.text = param3;
         _loc6_.gotoAndStop(param4);
         _loc7_.visible = param5;
         _loc6_.visible = param5 == false;
      }
      
      override public function o13640() : void
      {
         o1533.o19115();
         this.container.removeChildren(0,this.container.numChildren - 1);
         o16989 = null;
         container = null;
         o12971 = 0;
         o18594 = 0;
         o1533 = null;
         o17111 = null;
         super.o13640();
      }
   }
}
