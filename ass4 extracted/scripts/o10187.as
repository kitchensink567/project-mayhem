package
{
   use namespace b2internal;
   
   public class o10187
   {
       
      
      b2internal var o1570:o10187;
      
      b2internal var o3174:o10187;
      
      protected var o5970:o5528;
      
      protected var o3965:int;
      
      b2internal var o20914:o12441;
      
      public function o10187()
      {
         super();
      }
      
      public function o15637(param1:o18851) : void
      {
      }
      
      public function o13858(param1:o13202) : void
      {
      }
      
      public function o20577(param1:o5173) : void
      {
         var _loc2_:o5528 = new o5528();
         _loc2_.o19954 = this;
         _loc2_.body = param1;
         _loc2_.o4321 = o5970;
         _loc2_.o19330 = null;
         o5970 = _loc2_;
         if(_loc2_.o4321)
         {
            _loc2_.o4321.o19330 = _loc2_;
         }
         o3965 = Number(o3965) + 1;
         _loc2_.o1408 = param1.o20786;
         _loc2_.o2611 = null;
         param1.o20786 = _loc2_;
         if(_loc2_.o1408)
         {
            _loc2_.o1408.o2611 = _loc2_;
         }
         param1.o9558++;
      }
      
      public function o13086(param1:o5173) : void
      {
         var _loc2_:o5528 = param1.o20786;
         while(_loc2_ && _loc2_.o19954 != this)
         {
            _loc2_ = _loc2_.o1408;
         }
         if(_loc2_.o19330)
         {
            _loc2_.o19330.o4321 = _loc2_.o4321;
         }
         if(_loc2_.o4321)
         {
            _loc2_.o4321.o19330 = _loc2_.o19330;
         }
         if(_loc2_.o1408)
         {
            _loc2_.o1408.o2611 = _loc2_.o2611;
         }
         if(_loc2_.o2611)
         {
            _loc2_.o2611.o1408 = _loc2_.o1408;
         }
         if(o5970 == _loc2_)
         {
            o5970 = _loc2_.o4321;
         }
         if(param1.o20786 == _loc2_)
         {
            param1.o20786 = _loc2_.o1408;
         }
         param1.o9558--;
         o3965 = Number(o3965) - 1;
      }
      
      public function o13552() : void
      {
         while(o5970)
         {
            o13086(o5970.body);
         }
      }
      
      public function o10535() : o10187
      {
         return o1570;
      }
      
      public function o18346() : o12441
      {
         return o20914;
      }
      
      public function o13137() : o5528
      {
         return o5970;
      }
   }
}
