package
{
   public class o8366 extends o3052
   {
       
      
      private var o7546:o15787;
      
      public function o8366(param1:String, param2:o2693)
      {
         o7546 = new o15787(0);
         super();
         super.init(param1,param2);
         o7546.value = param2.o17521(param1 + "grenadeCost");
      }
      
      override public function get o2723() : Boolean
      {
         return false;
      }
      
      public function get o18243() : Number
      {
         return o7546.value;
      }
      
      override public function o13260() : void
      {
         if(o4519.o8116.profileData.o7923.o13012.o20244 > o18243)
         {
            o4519.o8116.profileData.o7923.o13012.o20244 = o18243;
         }
      }
      
      override public function o3309(param1:String) : String
      {
         return o12267(param1,"[GRENADE_COST]",o18243);
      }
   }
}
