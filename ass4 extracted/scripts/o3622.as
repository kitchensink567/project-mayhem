package
{
   public class o3622 extends o4411
   {
       
      
      public var o3726:o18509;
      
      public function o3622(param1:o8925, param2:o7848, param3:o4332, param4:Number)
      {
         o3726 = new o18509();
         super(param1,param2,null,param4);
         this.o16117 = param3;
         o11194.position = new o2415();
      }
      
      override protected function o5980(param1:Number, param2:o18509, param3:int) : void
      {
         o14372 = new o18509(o3726.x,o3726.y);
         o14372.rotate(o16117.rotation);
         o14372.x = o14372.x + o1432.body.position.x;
         o14372.y = o14372.y + o1432.body.position.y;
         var _loc4_:o18509 = new o18509(o4670.o5898 + o3726.x,o4670.o16295 + o3726.y);
         _loc4_.rotate(o16117.rotation);
         o11194.position.x = _loc4_.x + o1432.body.position.x;
         o11194.position.y = _loc4_.y + o1432.body.position.y;
         o11194.rotation = o16117.rotation;
      }
   }
}
