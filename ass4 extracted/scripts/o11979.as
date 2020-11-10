package
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class o11979 extends o9743
   {
       
      
      private var o15400:MovieClip;
      
      private var o14668:MovieClip;
      
      private var o4555:MovieClip;
      
      private var o11503:TextField;
      
      public var o16873:o15625;
      
      private var o15179:TextField;
      
      public var o19034:o6583;
      
      private var o7285:TextField;
      
      private var o9432:TextField;
      
      private var o12609:o12290;
      
      private var o8316:o12290;
      
      private var o16495:o12290;
      
      public function o11979()
      {
         super();
      }
      
      override public function init(param1:MovieClip) : void
      {
         super.init(param1);
         o15400 = this.container.getChildByName("imgAssault") as MovieClip;
         o14668 = this.container.getChildByName("imgMedic") as MovieClip;
         o4555 = this.container.getChildByName("imgHeavy") as MovieClip;
         o11503 = this.container.getChildByName("lblStatValues") as TextField;
         o15179 = this.container.getChildByName("lblStatNames") as TextField;
         o16873 = this.o9679.o17578("btnViewEnemyStats",container);
         o16873.addEventListener("click",o20493,false,0,true);
         o7285 = this.container.getChildByName("lblMovementStatNames") as TextField;
         o9432 = this.container.getChildByName("lblMovementStatValues") as TextField;
         o15179.text = "XP: \n\n";
         o15179.text = o15179.text + "Next Level:\n\n";
         o15179.text = o15179.text + "Hit Points: \n\n";
         o15179.text = o15179.text + "Recovery Time: \n\n";
         o15179.text = o15179.text + "Energy: \n\n";
         o15179.text = o15179.text + "Health Regen: \n\n";
         o15179.text = o15179.text + "Energy Regen: \n\n";
         o15179.text = o15179.text + "Kills: \n\n";
         o15179.text = o15179.text + "Deaths: \n\n";
         o15179.text = o15179.text + "Physical:\n\n";
         o15179.text = o15179.text + "Heat:\n\n";
         o15179.text = o15179.text + "Toxic:\n\n";
         o15179.text = o15179.text + "Movement mod";
         o15400.gotoAndStop(1);
         o14668.gotoAndStop(1);
         o4555.gotoAndStop(1);
         o19034 = new o6583();
         o19034.init(container);
         this.o5452(o19034);
         o12609 = o9679.o15961("btnRandBadgeMedal","Rand badge medal",container);
         o8316 = o9679.o15961("btnIncEventMedals","Event medals",container);
         o16495 = o9679.o15961("btnIncTotalMedals","Total medals",container);
         o12609.visible = false;
         o8316.visible = false;
         o16495.visible = false;
      }
      
      override public function o13640() : void
      {
         o16873.removeEventListener("click",o20493);
         o15400 = null;
         o14668 = null;
         o4555 = null;
         o11503 = null;
         o16873 = null;
         o15179 = null;
         o12609 = null;
         o8316 = null;
         o16495 = null;
         o19034 = null;
         o7285 = null;
         o9432 = null;
         super.o13640();
      }
      
      protected function o20493(param1:MouseEvent) : void
      {
      }
      
      protected function o11706(param1:String, param2:String, param3:String) : void
      {
         o9432.text = param1 + "\n" + param2 + "\n" + param3;
      }
      
      protected function o14414(param1:int, param2:int, param3:int, param4:String, param5:String, param6:String, param7:String, param8:String, param9:String, param10:int, param11:int, param12:String, param13:String, param14:String, param15:String) : void
      {
         o15400.visible = param1 == 0;
         o14668.visible = param1 == 1;
         o4555.visible = param1 == 2;
         var _loc16_:String = o16724.o10417(param2) + "\n\n" + o16724.o10417(param3) + "\n\n";
         _loc16_ = _loc16_ + (param4 + "\n\n");
         _loc16_ = _loc16_ + (param6 + "\n\n");
         _loc16_ = _loc16_ + (param7 + "\n\n");
         _loc16_ = _loc16_ + (param8 + "\n\n");
         _loc16_ = _loc16_ + (param9 + "\n\n");
         _loc16_ = _loc16_ + (o16724.o10417(param10) + "\n\n");
         _loc16_ = _loc16_ + (o16724.o10417(param11) + "\n\n");
         _loc16_ = _loc16_ + (param12 + "\n\n");
         _loc16_ = _loc16_ + (param13 + "\n\n");
         _loc16_ = _loc16_ + (param14 + "\n\n");
         _loc16_ = _loc16_ + (param15 + "\n\n");
         o1256(o11503,_loc16_);
      }
      
      override public function o14009(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
      }
   }
}
