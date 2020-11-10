package
{
   public class o5843
   {
       
      
      private var o199:o16123;
      
      private var o13519:o16123;
      
      public var o17449:String;
      
      public function o5843()
      {
         o199 = new o16123(0);
         o13519 = new o16123(1);
         super();
      }
      
      public function get o12207() : int
      {
         return o199.value;
      }
      
      public function get o9421() : int
      {
         return o13519.value;
      }
      
      public function init(param1:o2693, param2:String) : void
      {
         o17449 = param1.o9009(param2);
         o13519.value = param1.o3554(param2 + ".cores");
         o199.value = param1.o3554(param2 + ".id");
      }
      
      public function o6305(param1:Boolean) : String
      {
         var _loc3_:Number = NaN;
         var _loc2_:Number = NaN;
         if(o12207 == 1)
         {
            return o17449.replace("#MAX_GRADE#",12);
         }
         if(o12207 == 2)
         {
            if(param1)
            {
               return o17449.replace("#MAX_SLOTS#",4);
            }
            return o17449.replace("#MAX_SLOTS#",3);
         }
         if(o12207 == 3)
         {
            _loc3_ = o4519.o8116.profileData.o5292.o418.o3417;
            _loc2_ = o4519.o8116.profileData.o5292.o418.o13515;
            return o17449.replace("#GEAR_TYPE#",!!param1?"weapon\'s":"armor\'s").replace("#INC_PER#",Math.round(_loc3_ * 100)).replace("#MAX_PER#",Math.round(_loc2_ * 100));
         }
         return o17449;
      }
      
      public function o3740(param1:o14096) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         switch(int(o12207))
         {
            case 0:
               _loc2_ = false;
               _loc3_ = 0;
               while(_loc3_ < param1.o5520)
               {
                  if(param1.o17656[_loc3_] != null)
                  {
                     _loc2_ = true;
                     break;
                  }
                  _loc3_++;
               }
               return _loc2_;
            case 1:
               return param1.grade < 12;
            case 2:
               return param1.o4680 < 4 && param1.grade > 0;
            case 3:
               return param1.o13296 < o4519.o8116.profileData.o5292.o418.o13515;
         }
      }
      
      public function o15979(param1:o1253) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         switch(int(o12207))
         {
            case 0:
               _loc2_ = false;
               _loc3_ = 0;
               while(_loc3_ < param1.o5520)
               {
                  if(param1.o17656[_loc3_] != null)
                  {
                     _loc2_ = true;
                     break;
                  }
                  _loc3_++;
               }
               return _loc2_;
            case 1:
               return param1.grade < 12;
            case 2:
               return param1.o4680 < 3 && param1.grade > 0;
            case 3:
               return param1.o13296 < o4519.o8116.profileData.o5292.o418.o13515;
         }
      }
      
      public function o18228(param1:o14096) : void
      {
         switch(int(o12207))
         {
            case 0:
               param1.o17656 = new Vector.<o3743>();
               break;
            case 1:
               param1.grade = param1.grade + 1;
               break;
            case 2:
               param1.o4680++;
               break;
            case 3:
               param1.o13296 = param1.o13296 + o4519.o8116.profileData.o5292.o418.o3417;
         }
      }
      
      public function o6673(param1:o1253) : void
      {
         switch(int(o12207))
         {
            case 0:
               param1.o17656 = new Vector.<o3743>();
               break;
            case 1:
               param1.grade = param1.grade + 1;
               break;
            case 2:
               param1.o4680++;
               break;
            case 3:
               param1.o13296 = param1.o13296 + o4519.o8116.profileData.o5292.o418.o3417;
         }
      }
   }
}
