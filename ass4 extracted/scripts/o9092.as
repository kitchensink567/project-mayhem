package
{
   import flash.display.MovieClip;
   
   public class o9092 extends o10676
   {
       
      
      private var o8027:o14200;
      
      private const o17986:int = 3;
      
      protected const o15862:int = 2;
      
      public function o9092(param1:o14200)
      {
         super();
         o8027 = param1;
      }
      
      override public function o16384(param1:MovieClip, param2:int, param3:o13064) : void
      {
         super.o16384(param1,param2,param3);
         o11347(o8027.o7923.o3525.o15479(4),o8027.o7923.o3525.o15479(1),o8027.o7923.o3525.o15479(2));
         o8027.o15894.o4848.o18278.o16280(null,o19869.o391,o98);
      }
      
      override public function o13640() : void
      {
         o8027.o15894.o4848.o18278.o12657(o19869.o391,o98);
         o8027 = null;
         super.o13640();
      }
      
      private function o98(param1:o19869) : void
      {
         this.o1258();
      }
      
      private function o8176(param1:int) : o12377
      {
         if(param1 == 3)
         {
            return o8027.o5292.o18364(1);
         }
         if(param1 == 4)
         {
            return o8027.o5292.o18364(2);
         }
         return null;
      }
      
      private function o9435(param1:int) : int
      {
         if(param1 < 3)
         {
            return param1;
         }
         if(param1 > 4)
         {
            return param1 - 2;
         }
         return -1;
      }
      
      override protected function o15811(param1:int, param2:o1528) : void
      {
         var _loc4_:o12377 = o8176(param1);
         var _loc5_:int = o9435(param1);
         var _loc3_:o14096 = o8027.o5292.o20689(_loc5_);
         param2.enabled = true;
         param2.o13439 = o62(param1);
         if(_loc4_ != null)
         {
            param2.o1830 = o8027.o7923.o3525.o20694(_loc4_.o5806);
            param2.o13586 = _loc4_.name;
            if(o8027.o7923.o3525.o17992())
            {
               param2.o13439 = _loc4_.o5806 + 7 + 2;
            }
            else
            {
               param2.o13439 = _loc4_.o5806 + 7;
            }
         }
         else if(_loc5_ != -1)
         {
            param2.o1830 = o8027.o7923.o3525.o20694(_loc3_.o2752.o5806);
            param2.o13586 = _loc3_.o7501;
            param2.o18407 = param1 > 3;
         }
         else
         {
            param2.enabled = false;
         }
      }
      
      override protected function o5870() : void
      {
         var _loc2_:Vector.<o14096> = o8027.o5292.o19908;
         var _loc1_:int = _loc2_.length + 2;
         o11010.o1746(_loc1_);
         o11010.o1258();
      }
      
      override protected function o1104(param1:int) : void
      {
         var _loc3_:int = 0;
         var _loc2_:o14096 = o8027.o5292.o20689(param1);
         if(o8027.o7923.o3525.o11238(_loc2_.o2752.o5806) == false)
         {
            _loc3_ = o8027.o7923.o3525.o2843(_loc2_.o2752.o5806);
            (o16989 as o14043).o14462(_loc3_,_loc2_.o7501);
         }
         else
         {
            o8027.o15894.o4848.o2719.o18251(_loc2_.o7501);
         }
         o4519.o8116.o4812.ui.o3656.play();
      }
      
      override protected function o2102(param1:int) : void
      {
         var _loc4_:int = 0;
         var _loc3_:o12377 = o8027.o5292.o3411(param1);
         var _loc2_:int = _loc3_.o5806;
         if(o8027.o7923.o3525.o8602(_loc2_) == false)
         {
            _loc4_ = o8027.o7923.o3525.o497(_loc2_);
            (o16989 as o14043).o14462(_loc4_,_loc3_.name);
         }
         else
         {
            o8027.o15894.o4848.o2719.o1761(_loc3_.name,false);
         }
         o4519.o8116.o4812.ui.o8512.play();
      }
      
      override protected function o7056(param1:int) : void
      {
         var _loc2_:o14096 = o8027.o5292.o20689(param1);
         o8027.o7923.o3525.o16850(_loc2_.o2752.o5806);
      }
      
      override protected function o19024(param1:int) : void
      {
         var _loc3_:o12377 = o8027.o5292.o3411(param1);
         var _loc2_:int = _loc3_.o5806;
         o8027.o7923.o3525.o9606(_loc2_);
      }
      
      private function o62(param1:int) : int
      {
         var _loc2_:int = 1;
         if(param1 < 3)
         {
            _loc2_ = param1 + 1;
         }
         else if(param1 < 5)
         {
            _loc2_ = param1 - 3 + 7 + 1;
         }
         else
         {
            _loc2_ = param1 - 2 + 1;
         }
         if(o8027.o7923.o3525.o17992())
         {
            return _loc2_ + 11;
         }
         return _loc2_;
      }
      
      override protected function o19061(param1:int) : void
      {
         var _loc6_:o14096 = o8027.o5292.o20689(param1);
         var _loc2_:* = param1;
         if(o8027.o7923.o3525.o17992())
         {
            _loc2_ = int(_loc2_ + 7);
         }
         this.o14226(_loc2_,_loc6_.o7501,_loc6_.o5290,o8027.o7923.o3525.o2843(_loc6_.o2752.o5806),o8027.o7923.o3525.o20694(_loc6_.o2752.o5806),param1 < 3,_loc6_.o2752.o11412);
         var _loc4_:Number = _loc6_.o2752.o2752.o14120;
         var _loc3_:String = _loc4_ < 0.1?"unlimited":o16724.o20301(_loc4_);
         var _loc5_:Number = 1 / _loc6_.o2752.o19455;
         var _loc7_:int = _loc6_.o2752.o3603;
         if(_loc6_.o2752.o3846 > 1)
         {
            _loc7_ = _loc7_ * _loc6_.o2752.o3846;
         }
         o20387(int(_loc6_.o457.o5725).toString(),o16724.o20301(_loc5_) + " rps",_loc3_,_loc7_,_loc6_.o2752.o3);
         o5053(false);
      }
      
      override protected function o3973(param1:int) : void
      {
         var _loc4_:o12377 = o8027.o5292.o3411(param1);
         var _loc2_:int = _loc4_.o5806;
         var _loc3_:* = _loc2_;
         if(o8027.o7923.o3525.o17992())
         {
            _loc3_ = int(_loc3_ + 2);
         }
         o15507(_loc3_,_loc4_.name,_loc4_.o7962,o8027.o7923.o3525.o497(_loc2_),o8027.o7923.o3525.o14518(_loc2_),o8027.o7923.o3525.o20694(_loc2_));
         o4967(_loc4_.o5725.toString(),_loc4_.o3);
         o5053(true);
      }
      
      override protected function o4502(param1:int) : int
      {
         var _loc2_:o14096 = o8027.o5292.o20689(param1);
         return o8027.o7923.o3525.o4695(_loc2_.o2752.o5806);
      }
      
      override protected function o2248(param1:int) : int
      {
         var _loc2_:o12377 = o8027.o5292.o3411(param1);
         return o8027.o7923.o3525.o11308(_loc2_.o5806);
      }
      
      override protected function o335() : String
      {
         var _loc1_:o14096 = o8027.o5292.o20689(o20888());
         var _loc2_:int = o8027.o7923.o3525.o20694(_loc1_.o2752.o5806);
         return _loc2_.toString() + "x for $" + o17536().toString();
      }
      
      override protected function o8993() : String
      {
         var _loc1_:o12377 = o8027.o5292.o3411(o1498());
         var _loc2_:int = o8027.o7923.o3525.o20694(_loc1_.o5806);
         return _loc2_.toString() + "x for $" + o16262().toString();
      }
      
      override protected function o3232() : void
      {
         var _loc1_:String = o8027.o10206("dialogMessage.sellAllGrenades.title");
         var _loc2_:String = o8993();
         o16989.o13483(_loc1_,_loc2_,o5942);
      }
      
      override protected function o1187() : void
      {
         var _loc1_:String = o8027.o10206("dialogMessage.sellAllTurrets.title");
         var _loc2_:String = o335();
         o16989.o13483(_loc1_,_loc2_,o5942);
      }
      
      override protected function o15165() : Boolean
      {
         return o11010.o2120 >= 3 && o11010.o2120 < 3 + 2;
      }
      
      override protected function o9323() : Boolean
      {
         return o11010.o2120 < 3 || o11010.o2120 >= 3 + 2;
      }
      
      override protected function o1498() : int
      {
         if(o15165())
         {
            return o11010.o2120 - 3;
         }
         return -1;
      }
      
      override protected function o20888() : int
      {
         if(o9323())
         {
            if(o11010.o2120 < 3)
            {
               return o11010.o2120;
            }
            return o11010.o2120 - 2;
         }
         return -1;
      }
      
      override protected function o11639(param1:o15625) : void
      {
         if(param1 == o9539 || param1 == o2213 || param1 == o15949 || param1 == o7545)
         {
            o4519.o8116.o4812.ui.o14759.play();
         }
         else
         {
            o4519.o8116.o4812.ui.o14648.play();
         }
      }
      
      override protected function o2806(param1:o15625) : void
      {
         o4519.o8116.o4812.ui.o14615.play();
      }
   }
}
