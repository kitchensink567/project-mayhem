package
{
   public class o12459 extends o3052
   {
       
      
      private var o941:o15787;
      
      public function o12459(param1:String, param2:o2693)
      {
         o941 = new o15787(0);
         super();
         super.init(param1,param2);
         o941.value = param2.o17521(param1 + "pickupRadius");
      }
      
      public function get o13155() : Number
      {
         return o941.value;
      }
      
      override public function o11739(param1:o17517) : void
      {
         param1.o13012.o4447 = param1.o13012.o4447 + o13155;
         param1.o4877();
      }
      
      override public function o11882(param1:o17517) : void
      {
         throw new Error("Can\'t remove");
      }
      
      override public function o3309(param1:String) : String
      {
         return o12267(param1,"[PICKUP_RADIUS]",o13155);
      }
   }
}
