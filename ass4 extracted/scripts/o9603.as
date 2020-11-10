package
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class o9603 extends o9743
   {
       
      
      private var o20558:o12290;
      
      private var o10997:o12290;
      
      public function o9603()
      {
         super();
      }
      
      private function o7020(param1:o20565, param2:String, param3:String, param4:int, param5:Function) : o12290
      {
         var _loc6_:o12290 = param1.o15961(param2,param3,container);
         var _loc7_:TextField = _loc6_.asset.getChildByName("lblCoinCost") as TextField;
         _loc7_.text = param4.toString();
         _loc6_.addEventListener("click",param5,false,0,true);
         return _loc6_;
      }
      
      public function o16384(param1:MovieClip, param2:o13064) : void
      {
         super.init(param1);
         var _loc5_:o20565 = new o20565(this);
         var _loc3_:o14200 = o4519.o8116.profileData;
         var _loc4_:int = _loc3_.o15894.o4848.o18278.o4291(667);
         var _loc6_:int = _loc3_.o15894.o4848.o18278.o4291(668);
         o20558 = o7020(_loc5_,"btnBuy1Key","1 key",_loc4_,o5316);
         o10997 = o7020(_loc5_,"btnBuy5Keys","5 keys",_loc6_,o15087);
         _loc5_.o13640();
         _loc5_ = null;
      }
      
      private function o13350() : void
      {
         this.o19172(null);
      }
      
      private function o5316(param1:MouseEvent) : void
      {
         (o4519.o10093.o16989 as o14043).o13414("Purchase","One black key for",667,o13350);
      }
      
      private function o15087(param1:MouseEvent) : void
      {
         (o4519.o10093.o16989 as o14043).o13414("Purchase","Five black keys for",668,o13350);
      }
      
      override public function o13640() : void
      {
         o20558.removeEventListener("click",o5316);
         o10997.removeEventListener("click",o15087);
         o20558 = null;
         o10997 = null;
         super.o13640();
      }
   }
}
