package
{
   import flash.utils.Dictionary;
   
   public class o19551
   {
       
      
      public var o11630:String = null;
      
      public var o19189:int = 0;
      
      public var o8367:Boolean = false;
      
      public var o3735:String;
      
      public var o12762:int;
      
      public var o1727:Dictionary;
      
      public function o19551(param1:String, param2:int, param3:String)
      {
         var _loc6_:int = 0;
         var _loc4_:* = null;
         var _loc5_:* = null;
         o1727 = new Dictionary();
         super();
         this.o11630 = param1;
         this.o19189 = param2;
         if(param3 == null)
         {
            this.o3735 = null;
            this.o12762 = -1;
         }
         else
         {
            _loc6_ = param3.indexOf(":");
            if(_loc6_ < 0)
            {
               this.o3735 = null;
               this.o12762 = -1;
            }
            else
            {
               _loc4_ = param3.substr(0,_loc6_);
               _loc5_ = param3.split(":");
               this.o12762 = parseInt(_loc5_[0]);
               this.o3735 = _loc5_[1];
               if(_loc5_.length >= 3 && _loc5_[2] != "")
               {
                  o1727 = o4868.o5684(_loc5_[2]);
               }
            }
         }
      }
   }
}
