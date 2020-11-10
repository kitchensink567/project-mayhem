package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class o328 extends o9743
   {
       
      
      private var o3005:MovieClip;
      
      protected var o19689:o978;
      
      protected var o16989:o13064;
      
      protected var o11129:o13660;
      
      private var o18678:int;
      
      private var o11840:TextField;
      
      protected var o4876:o12290;
      
      public function o328()
      {
         super();
      }
      
      public function o3547(param1:MovieClip, param2:o13660, param3:o978, param4:int) : void
      {
         super.init(param1);
         this.o19689 = param3;
         this.o16989 = param3.o16989;
         this.o18678 = param4;
         this.o11129 = param2;
         var _loc5_:MovieClip = param1.getChildByName("dialogContainer") as MovieClip;
         o11840 = _loc5_.getChildByName("txtName") as TextField;
         o11840.addEventListener("addedToStage",o343,false,0,true);
         o4876 = o9679.o15961("btnRandom","Random",_loc5_);
         o4876.addEventListener("click",o2645,false,0,true);
         o11840.addEventListener("change",o19342,false,0,true);
         o11840.text = o494();
         o11840.restrict = "A-Za-z\r";
      }
      
      private function o343(param1:Event) : void
      {
         o11840.stage.focus = o11840;
         o11840.removeEventListener("addedToStage",o343);
      }
      
      private function o19342(param1:Event) : void
      {
         var _loc2_:String = o11840.text;
         if(_loc2_.indexOf("\r") >= 0 && _loc2_.length < 100)
         {
            o11840.text = _loc2_.replace("\r","");
            this.o5382(null);
         }
      }
      
      protected function o3831(param1:String) : void
      {
         o11840.text = param1;
      }
      
      protected function o2645(param1:MouseEvent) : void
      {
         o11840.text = o494();
         o11840.stage.focus = o11840;
      }
      
      protected function o494() : String
      {
         return "TODO";
      }
      
      override public function o13640() : void
      {
         o4876.removeEventListener("click",o2645);
         o11840.removeEventListener("change",o19342);
         o3005 = null;
         o19689 = null;
         o16989 = null;
         o11129 = null;
         o18678 = 0;
         o11840 = null;
         o4876 = null;
         super.o13640();
      }
      
      override protected function o5382(param1:Event) : void
      {
         if(o5312(o18678,o11840.text))
         {
            super.o5382(param1);
         }
      }
      
      protected function o5312(param1:int, param2:String) : Boolean
      {
         return false;
      }
   }
}
