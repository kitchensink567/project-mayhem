package
{
   use namespace b2internal;
   
   public class o8168
   {
      
      b2internal static var o5130:o8168 = new o8168();
       
      
      public function o8168()
      {
         super();
      }
      
      public function o13540(param1:o11359, param2:o11359) : Boolean
      {
         var _loc5_:o11501 = param1.o18997();
         var _loc3_:o11501 = param2.o18997();
         if(_loc5_.o7509 == _loc3_.o7509 && _loc5_.o7509 != 0)
         {
            return _loc5_.o7509 > 0;
         }
         var _loc4_:Boolean = (_loc5_.o251 & _loc3_.o11755) != 0 && (_loc5_.o11755 & _loc3_.o251) != 0;
         return _loc4_;
      }
      
      public function o5784(param1:*, param2:o11359) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return o13540(param1 as o11359,param2);
      }
   }
}
