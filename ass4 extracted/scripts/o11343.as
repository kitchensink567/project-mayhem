package
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class o11343 extends o12290
   {
       
      
      public var grade:int = 1;
      
      public var o16647:int = 5;
      
      public var o7256:int = 0;
      
      private var o9679:o20565;
      
      public function o11343()
      {
         super();
         o7256 = 12;
      }
      
      override public function init(param1:MovieClip) : void
      {
         super.init(param1);
         o9679 = new o20565(this);
         o9679.o5877("level",grade,o16647,"on","off",o7256);
      }
      
      override protected function draw() : void
      {
         super.draw();
         var _loc1_:TextField = this.asset.getChildByName("label") as TextField;
         if(_loc1_ != null)
         {
            if(o501 == "up")
            {
               o1256(_loc1_,o13586);
            }
            else if(grade == 0)
            {
               o1256(_loc1_,"Add Augmentation");
            }
            else if(grade == o16647)
            {
               o1256(_loc1_,"Max Upgrade Reached");
            }
            else
            {
               o1256(_loc1_,"Add Upgrade");
            }
         }
         if(o9679 != null)
         {
            o9679.o5877("level",grade,o16647,"on","off",o7256);
         }
      }
      
      override public function o13640() : void
      {
         o9679.o13640();
         grade = 0;
         o16647 = 0;
         o7256 = 0;
         o9679 = null;
         super.o13640();
      }
   }
}
