package
{
   import flash.utils.ByteArray;
   
   public class o18475
   {
       
      
      public var bytesNeeded:int = -1;
      
      public var call:Function = null;
      
      public function o18475()
      {
         super();
      }
      
      public function initialise(param1:Array, param2:Function) : void
      {
         o20272 = param1;
         call = param2;
         if(o20272 != null)
         {
            bytesNeeded = 0;
            var _loc4_:int = 0;
            var _loc3_:* = o20272;
            for each(o1903 in o20272)
            {
               switch(int(o1903) - 1)
               {
                  case 0:
                     bytesNeeded = bytesNeeded + 1;
                     continue;
                  case 1:
                     bytesNeeded = bytesNeeded + 4;
                     continue;
                  default:
                     continue;
                  case 3:
                     bytesNeeded = bytesNeeded + 1;
                     continue;
                  case 4:
                     bytesNeeded = -1;
                     continue;
                  case 5:
                     bytesNeeded = bytesNeeded + 2;
                     continue;
               }
            }
         }
         this.call = function(param1:ByteArray):void
         {
            var _loc4_:* = null;
            var _loc2_:* = null;
            if(o20272 != null)
            {
               _loc4_ = Mem.create(this,Array);
               var _loc6_:int = 0;
               var _loc5_:* = o20272;
               for each(var _loc3_ in o20272)
               {
                  switch(int(_loc3_) - 1)
                  {
                     case 0:
                        _loc4_.push(param1.readByte());
                        continue;
                     case 1:
                        _loc4_.push(param1.readInt());
                        continue;
                     default:
                        continue;
                     case 3:
                        _loc4_.push(param1.readBoolean());
                        continue;
                     case 4:
                        _loc2_ = Mem.create(this,ByteArray);
                        param1.readBytes(_loc2_,param1.position,param1.length - param1.position);
                        _loc2_.position = 0;
                        _loc4_.push(_loc2_);
                        continue;
                     case 5:
                        _loc4_.push(param1.readShort());
                        continue;
                  }
               }
               call.apply(null,_loc4_);
            }
            else
            {
               call(param1);
            }
         };
      }
   }
}
