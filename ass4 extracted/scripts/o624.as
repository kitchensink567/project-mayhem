package
{
   public class o624
   {
       
      
      public var o15186:o8112;
      
      public var o10220:o8112;
      
      public var o5788:o8112;
      
      public var multiplayer:o8112;
      
      public var o18101:o8112;
      
      public function o624(param1:Object)
      {
         o15186 = new o8112({});
         o10220 = new o8112({});
         o5788 = new o8112({});
         multiplayer = new o8112({});
         o18101 = new o8112({});
         super();
         this.o15186 = new o8112(param1["Arena"]);
         this.o10220 = new o8112(param1["Contract"]);
         this.o5788 = new o8112(param1["Nightmare"]);
         this.multiplayer = new o8112(param1["Multiplayer"]);
         this.o18101 = new o8112(param1["Singleplayer"]);
      }
      
      public function o3848(param1:Object) : void
      {
         this.o15186.o3848(param1["Arena"]);
         this.o10220.o3848(param1["Contract"]);
         this.o5788.o3848(param1["Nightmare"]);
         this.multiplayer.o3848(param1["Multiplayer"]);
         this.o18101.o3848(param1["Singleplayer"]);
      }
      
      public function o6837(param1:int) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:* = param1;
         switch(_loc3_)
         {
            case 0:
               if(o14200.o19505.o202)
               {
                  if(o14200.o19505.o202.o10211 == false)
                  {
                     _loc2_ = o18101.o13917;
                  }
                  else
                  {
                     _loc2_ = multiplayer.o13917;
                  }
               }
               break;
            case 1:
               _loc2_ = o5788.o13917;
               break;
            case 2:
            case 5:
            case 3:
            case 4:
               _loc2_ = o15186.o13917;
               break;
            case 7:
            case 103:
            case 102:
            case 101:
            case 104:
               if(o10220.o13917)
               {
                  if(!o18101.o13917 && !multiplayer.o13917)
                  {
                     _loc2_ = o10220.o13917;
                  }
                  else if(o14200.o19505.o202.o10211 == false)
                  {
                     _loc2_ = o18101.o13917;
                  }
                  else
                  {
                     _loc2_ = multiplayer.o13917;
                  }
               }
               break;
            case 100:
         }
         return _loc2_;
      }
      
      public function o10001() : String
      {
         var _loc1_:String = " ";
         if(o15186.o13917 == true)
         {
            _loc1_ = _loc1_ + ("\t[Arena] " + o15186.o10001());
         }
         if(o10220.o13917 == true)
         {
            _loc1_ = _loc1_ + ("\t[Contract] " + o10220.o10001());
         }
         if(o5788.o13917 == true)
         {
            _loc1_ = _loc1_ + ("\t[Nightmare] " + o5788.o10001());
         }
         if(multiplayer.o13917 == true)
         {
            _loc1_ = _loc1_ + ("\t[Multiplayer] " + multiplayer.o10001());
         }
         if(o18101.o13917 == true)
         {
            _loc1_ = _loc1_ + ("\t[Singleplayer] " + o18101.o10001());
         }
         return _loc1_;
      }
      
      public function o19115() : void
      {
         o15186.o19115();
         o10220.o19115();
         o5788.o19115();
         multiplayer.o19115();
         o18101.o19115();
         o15186 = null;
         o10220 = null;
         o5788 = null;
         multiplayer = null;
         o18101 = null;
      }
   }
}
