package
{
   use namespace b2internal;
   
   public class o19737
   {
      
      private static const o17882:o3796 = new o3796();
       
      
      b2internal var o20914:o12441;
      
      b2internal var o18566:o13430;
      
      b2internal var o2410:o16520;
      
      b2internal var o13994:int;
      
      b2internal var o3733:o8168;
      
      b2internal var o16998:o14709;
      
      b2internal var o20279:o15669;
      
      b2internal var o4735;
      
      public function o19737()
      {
         super();
         o20914 = null;
         o13994 = 0;
         o3733 = o8168.o5130;
         o16998 = o14709.o11829;
         o20279 = new o15669(o4735);
         o18566 = new o10199();
      }
      
      public function o19279(param1:*, param2:*) : void
      {
         var _loc8_:* = null;
         var _loc10_:* = null;
         var _loc5_:o11359 = param1 as o11359;
         var _loc4_:o11359 = param2 as o11359;
         var _loc9_:o5173 = _loc5_.o15686();
         var _loc6_:o5173 = _loc4_.o15686();
         if(_loc9_ == _loc6_)
         {
            return;
         }
         var _loc7_:o684 = _loc6_.o926();
         while(_loc7_)
         {
            if(_loc7_.o3316 == _loc9_)
            {
               _loc8_ = _loc7_.o9663.o18972();
               _loc10_ = _loc7_.o9663.o13950();
               if(_loc8_ == _loc5_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc8_ == _loc4_ && _loc10_ == _loc5_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.o3176;
         }
         if(_loc6_.o13540(_loc9_) == false)
         {
            return;
         }
         if(o3733.o13540(_loc5_,_loc4_) == false)
         {
            return;
         }
         var _loc3_:o16520 = o20279.o6611(_loc5_,_loc4_);
         _loc5_ = _loc3_.o18972();
         _loc4_ = _loc3_.o13950();
         _loc9_ = _loc5_.o14645;
         _loc6_ = _loc4_.o14645;
         _loc3_.o3174 = null;
         _loc3_.o1570 = o20914.o2410;
         if(o20914.o2410 != null)
         {
            o20914.o2410.o3174 = _loc3_;
         }
         o20914.o2410 = _loc3_;
         _loc3_.o5825.o9663 = _loc3_;
         _loc3_.o5825.o3316 = _loc6_;
         _loc3_.o5825.o3388 = null;
         _loc3_.o5825.o3176 = _loc9_.o2410;
         if(_loc9_.o2410 != null)
         {
            _loc9_.o2410.o3388 = _loc3_.o5825;
         }
         _loc9_.o2410 = _loc3_.o5825;
         _loc3_.o6844.o9663 = _loc3_;
         _loc3_.o6844.o3316 = _loc9_;
         _loc3_.o6844.o3388 = null;
         _loc3_.o6844.o3176 = _loc6_.o2410;
         if(_loc6_.o2410 != null)
         {
            _loc6_.o2410.o3388 = _loc3_.o6844;
         }
         _loc6_.o2410 = _loc3_.o6844;
         o20914.o13994++;
      }
      
      public function o16758() : void
      {
         o18566.o13983(o19279);
      }
      
      public function o18143(param1:o16520) : void
      {
         var _loc3_:o11359 = param1.o18972();
         var _loc2_:o11359 = param1.o13950();
         var _loc5_:o5173 = _loc3_.o15686();
         var _loc4_:o5173 = _loc2_.o15686();
         if(param1.o4979())
         {
            o16998.o19222(param1);
         }
         if(param1.o3174)
         {
            param1.o3174.o1570 = param1.o1570;
         }
         if(param1.o1570)
         {
            param1.o1570.o3174 = param1.o3174;
         }
         if(param1 == o20914.o2410)
         {
            o20914.o2410 = param1.o1570;
         }
         if(param1.o5825.o3388)
         {
            param1.o5825.o3388.o3176 = param1.o5825.o3176;
         }
         if(param1.o5825.o3176)
         {
            param1.o5825.o3176.o3388 = param1.o5825.o3388;
         }
         if(param1.o5825 == _loc5_.o2410)
         {
            _loc5_.o2410 = param1.o5825.o3176;
         }
         if(param1.o6844.o3388)
         {
            param1.o6844.o3388.o3176 = param1.o6844.o3176;
         }
         if(param1.o6844.o3176)
         {
            param1.o6844.o3176.o3388 = param1.o6844.o3388;
         }
         if(param1.o6844 == _loc4_.o2410)
         {
            _loc4_.o2410 = param1.o6844.o3176;
         }
         o20279.o18143(param1);
         o13994 = o13994 - 1;
      }
      
      public function o9284() : void
      {
         var _loc6_:* = null;
         var _loc5_:* = null;
         var _loc8_:* = null;
         var _loc7_:* = null;
         var _loc9_:* = null;
         var _loc2_:* = undefined;
         var _loc1_:* = undefined;
         var _loc4_:Boolean = false;
         var _loc3_:o16520 = o20914.o2410;
         while(_loc3_)
         {
            _loc6_ = _loc3_.o18972();
            _loc5_ = _loc3_.o13950();
            _loc8_ = _loc6_.o15686();
            _loc7_ = _loc5_.o15686();
            if(_loc8_.o4675() == false && _loc7_.o4675() == false)
            {
               _loc3_ = _loc3_.o10535();
            }
            else
            {
               if(_loc3_.o20198 & o16520.o4832)
               {
                  if(_loc7_.o13540(_loc8_) == false)
                  {
                     _loc9_ = _loc3_;
                     _loc3_ = _loc9_.o10535();
                     o18143(_loc9_);
                     continue;
                  }
                  if(o3733.o13540(_loc6_,_loc5_) == false)
                  {
                     _loc9_ = _loc3_;
                     _loc3_ = _loc9_.o10535();
                     o18143(_loc9_);
                     continue;
                  }
                  _loc3_.o20198 = _loc3_.o20198 & ~o16520.o4832;
               }
               _loc2_ = _loc6_.o17102;
               _loc1_ = _loc5_.o17102;
               _loc4_ = o18566.o15642(_loc2_,_loc1_);
               if(_loc4_ == false)
               {
                  _loc9_ = _loc3_;
                  _loc3_ = _loc9_.o10535();
                  o18143(_loc9_);
               }
               else
               {
                  _loc3_.o1797(o16998);
                  _loc3_ = _loc3_.o10535();
               }
            }
         }
      }
   }
}
