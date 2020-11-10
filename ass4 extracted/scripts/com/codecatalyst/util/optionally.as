package com.codecatalyst.util
{
   public function optionally(param1:Function, param2:Array, param3:int = 0) : *
   {
      var _loc4_:int = Math.max(Math.min(param1.length,param2.length),param3);
      return param1.apply(null,param2.slice(0,_loc4_));
   }
}
