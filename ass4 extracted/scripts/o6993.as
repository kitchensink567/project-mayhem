package
{
   public class o6993
   {
       
      
      private var o17170:o16123;
      
      public var name:String;
      
      public var o9938:Vector.<o4266>;
      
      private var o20790:o16123;
      
      public var o13439:int;
      
      public function o6993()
      {
         o17170 = new o16123(0);
         o9938 = new Vector.<o4266>();
         o20790 = new o16123(0);
         super();
      }
      
      public function get id() : int
      {
         return o17170.value;
      }
      
      public function get o2409() : int
      {
         return o20790.value;
      }
      
      public function init(param1:String, param2:o2693) : void
      {
         var _loc5_:* = null;
         var _loc4_:int = 0;
         name = param2.o9009(param1);
         o17170.value = param2.o3554(param1 + ".id");
         o20790.value = param2.o3554(param1 + ".type");
         param1 = param1 + ".rewards.";
         var _loc3_:int = 5;
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = new o4266();
            _loc5_.init(param1 + _loc4_.toString(),param2);
            o9938.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function o2743(param1:String, param2:o2693, param3:int) : Boolean
      {
         name = param2.o9009(param1);
         o20790.value = param2.o3554(param1 + ".type");
         o13439 = param2.o3554(param1 + ".iconFrameIndex");
         param1 = param1 + ".rewards.";
         switch(int(param3) - 1)
         {
            case 0:
               o9938.push(new o4266().init(param1 + "standard",param2));
               o17170.value = param2.o3554(param1 + "standard.rewardId");
               break;
            case 1:
               o9938.push(new o4266().init(param1 + "red",param2));
               o17170.value = param2.o3554(param1 + "red.rewardId");
               break;
            case 2:
               if(param2.o20495(param1 + "black"))
               {
                  o9938.push(new o4266().init(param1 + "black",param2));
                  o17170.value = param2.o3554(param1 + "black.rewardId");
                  break;
               }
               param1 = param1;
               return false;
         }
         return true;
      }
   }
}
