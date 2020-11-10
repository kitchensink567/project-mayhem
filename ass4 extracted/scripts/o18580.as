package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class o18580 extends o9743
   {
       
      
      private const o17552:int = 8;
      
      private var o20681:int = 0;
      
      private var o15050:TextField;
      
      private var o10952:MovieClip;
      
      private var o7983:MovieClip;
      
      private var o14001:TextField;
      
      private var o19617:Vector.<o5024>;
      
      public function o18580()
      {
         o19617 = new Vector.<o5024>();
         super();
      }
      
      override public function init(param1:MovieClip) : void
      {
         var _loc4_:int = 0;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc3_:* = null;
         var _loc6_:* = null;
         var _loc5_:* = null;
         super.init(param1);
         this.o17920 = false;
         o15050 = container.getChildByName("lblNkCoinCost") as TextField;
         o10952 = container.getChildByName("processing") as MovieClip;
         o7983 = container.getChildByName("nkCoinIcon") as MovieClip;
         o10952.visible = false;
         o14001 = container.getChildByName("Info") as TextField;
         o7983.visible = true;
         o20173.enabled = true;
         o7770.enabled = true;
         o4527.visible = true;
         var _loc2_:MovieClip = container.getChildByName("customImage") as MovieClip;
         _loc2_.visible = false;
         _loc4_ = 0;
         while(_loc4_ < 8)
         {
            _loc7_ = container.getChildByName("item" + _loc4_.toString()) as MovieClip;
            _loc8_ = _loc7_.getChildByName("grenadeIcon") as MovieClip;
            _loc8_.stop();
            _loc8_.visible = false;
            _loc3_ = _loc7_.getChildByName("turretIcon") as MovieClip;
            _loc3_.stop();
            _loc3_.visible = false;
            _loc7_.visible = false;
            _loc6_ = _loc7_.getChildByName("iconContainer") as MovieClip;
            _loc5_ = new o5024();
            _loc5_.init(_loc6_);
            _loc5_.visible = false;
            this.o5452(_loc5_);
            o19617.push(_loc5_);
            _loc4_++;
         }
      }
      
      override protected function o12638(param1:Event) : void
      {
         super.o12638(param1);
         o1209(o7983);
      }
      
      override public function o13640() : void
      {
         o20681 = 0;
         o15050 = null;
         o10952 = null;
         o7983 = null;
         o14001 = null;
         o19617 = null;
         super.o13640();
      }
      
      public function o6959(param1:int) : void
      {
         o15050.text = param1.toString();
         if(param1 == 0)
         {
            o20173.enabled = false;
         }
      }
      
      override protected function o5382(param1:Event) : void
      {
         o10952.visible = true;
         o7983.visible = false;
         o15050.visible = false;
         o20173.enabled = false;
         o7770.enabled = false;
         o14001.visible = false;
         if(o8714 != null)
         {
            o8714();
         }
      }
      
      public function o1602() : void
      {
         if(o10952 == null)
         {
            return;
         }
         o10952.visible = false;
         o15050.visible = true;
         o7983.visible = true;
         o20173.enabled = true;
         o7770.enabled = true;
         o14001.visible = true;
         this.close();
      }
      
      public function o14095(param1:Boolean, param2:int) : void
      {
         var _loc3_:MovieClip = container.getChildByName("btnLocked") as MovieClip;
         _loc3_.visible = param1;
         var _loc4_:TextField = _loc3_.getChildByName("lblText") as TextField;
         _loc4_.text = "Unlock at level " + param2.toString();
      }
      
      public function o13622(param1:String) : void
      {
         var _loc2_:MovieClip = container.getChildByName("customImage") as MovieClip;
         _loc2_.gotoAndStop(param1);
         _loc2_.visible = true;
         o1209(_loc2_);
      }
      
      private function o7669(param1:int, param2:String) : MovieClip
      {
         var _loc8_:MovieClip = container.getChildByName("item" + o20681.toString()) as MovieClip;
         _loc8_.visible = true;
         var _loc5_:MovieClip = _loc8_.getChildByName("cashIcon") as MovieClip;
         _loc5_.visible = false;
         var _loc3_:TextField = _loc8_.getChildByName("amountCash") as TextField;
         _loc3_.visible = false;
         var _loc4_:TextField = _loc8_.getChildByName("amountCallout") as TextField;
         _loc4_.text = param1.toString();
         var _loc6_:TextField = _loc8_.getChildByName("lblHeading") as TextField;
         _loc6_.text = param2;
         _loc6_.visible = false;
         var _loc7_:MovieClip = _loc8_.getChildByName("imgCalloutBubble") as MovieClip;
         _loc7_.visible = param1 > 1;
         _loc4_.visible = param1 > 1;
         o20681 = Number(o20681) + 1;
         return _loc8_;
      }
      
      public function o14688(param1:String, param2:int, param3:int) : void
      {
         var _loc5_:MovieClip = o7669(param3,param1);
         var _loc4_:MovieClip = _loc5_.getChildByName("turretIcon") as MovieClip;
         _loc4_.gotoAndStop(param2);
         _loc4_.visible = true;
      }
      
      public function o15032(param1:String, param2:int, param3:int) : void
      {
         var _loc4_:MovieClip = o7669(param3,param1);
         var _loc5_:MovieClip = _loc4_.getChildByName("grenadeIcon") as MovieClip;
         _loc5_.gotoAndStop(param2);
         _loc5_.visible = true;
      }
      
      public function o12601(param1:String, param2:int) : void
      {
         var _loc5_:MovieClip = o7669(0,param1);
         var _loc4_:MovieClip = _loc5_.getChildByName("cashIcon") as MovieClip;
         _loc4_.visible = true;
         var _loc3_:TextField = _loc5_.getChildByName("amountCash") as TextField;
         _loc3_.visible = true;
         _loc3_.text = "$" + o16724.o10417(param2);
      }
      
      public function o11466(param1:String, param2:MovieClip, param3:int) : o5024
      {
         var _loc4_:o5024 = this.o19617[o20681];
         _loc4_.o3700 = param2;
         var _loc5_:MovieClip = o7669(param3,param1);
         _loc4_.visible = true;
         return _loc4_;
      }
      
      override public function o14009(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
      }
   }
}
