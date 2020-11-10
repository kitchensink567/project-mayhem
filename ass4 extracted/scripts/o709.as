package
{
   public class o709 extends o3052
   {
       
      
      private var o12945:o16123;
      
      public function o709(param1:String, param2:o2693)
      {
         o12945 = new o16123(0);
         super();
         super.init(param1,param2);
         o12945.value = param2.o3554(param1 + "fullHDAmmoClips");
      }
      
      public function get o11499() : int
      {
         return o12945.value;
      }
      
      override public function o13260() : void
      {
         var _loc1_:* = null;
         var _loc2_:o9145 = o4519.o8116.profileData.o7923;
         var _loc4_:Vector.<o14096> = _loc2_.o1819();
         var _loc6_:int = 0;
         var _loc5_:* = _loc4_;
         for each(var _loc3_ in _loc4_)
         {
            _loc1_ = _loc2_.o17638.o8567(_loc3_);
            _loc1_.o17383 = _loc1_.o17383 + _loc3_.o11344 * o11499;
         }
      }
      
      override public function o3309(param1:String) : String
      {
         return o679(param1,"[FULL_HD_AMMO_CLIPS]",o11499);
      }
   }
}
