package
{
   public class o772 extends o13848
   {
       
      
      public var o2535:o20139 = null;
      
      public function o772(param1:o20139)
      {
         super();
         this.o2535 = param1;
      }
      
      public function o2566(param1:uint, param2:Number, param3:Number, param4:uint, param5:uint, param6:Vector.<int> = null) : o14506
      {
         o17801 = param1;
         o14534 = param2;
         o6029 = param3;
         o6365 = param4;
         mask = param5;
         filter = param6;
         var promise:o14506 = Mem.create(this,o14506);
         var o4801:Vector.<o2041> = o6041.concat();
         o4801.sort(function():*
         {
            var /*UnknownSlot*/:* = function(param1:o2041, param2:o2041):Number
            {
               var _loc3_:Number = Math.pow(param1.x - o14534,2) + Math.pow(param1.y - o6029,2);
               var _loc4_:Number = Math.pow(param2.x - o14534,2) + Math.pow(param2.y - o6029,2);
               if(_loc3_ < _loc4_)
               {
                  return -1;
               }
               if(_loc3_ > _loc4_)
               {
                  return 1;
               }
               return 0;
            };
            return function(param1:o2041, param2:o2041):Number
            {
               var _loc3_:Number = Math.pow(param1.x - o14534,2) + Math.pow(param1.y - o6029,2);
               var _loc4_:Number = Math.pow(param2.x - o14534,2) + Math.pow(param2.y - o6029,2);
               if(_loc3_ < _loc4_)
               {
                  return -1;
               }
               if(_loc3_ > _loc4_)
               {
                  return 1;
               }
               return 0;
            };
         }());
         o15714.o16380(function(param1:int, param2:Boolean):o16124
         {
            if(param2 === true)
            {
               promise.data = o4801[param1 - 1];
               return null;
            }
            if(param1 >= o4801.length)
            {
               promise.data = o4801[0];
               return null;
            }
            return o2948(o4801[param1],o17801,o14534,o6029,o6365,mask,filter);
         });
         return promise;
      }
      
      public function o11779(param1:uint, param2:Number, param3:Number, param4:Number, param5:Number, param6:uint, param7:uint, param8:Vector.<int> = null) : o16124
      {
         o17801 = param1;
         o14534 = param2;
         o6029 = param3;
         o13595 = param4;
         o12200 = param5;
         o6365 = param6;
         mask = param7;
         filter = param8;
         var promise:o16124 = Mem.create(this,o16124);
         var o4801:Vector.<o2041> = o6041.concat();
         o4801.sort(function():*
         {
            var /*UnknownSlot*/:* = function(param1:o2041, param2:o2041):Number
            {
               var _loc3_:Number = Math.pow(param1.x - o13595,2) + Math.pow(param1.y - o12200,2);
               var _loc4_:Number = Math.pow(param2.x - o13595,2) + Math.pow(param2.y - o12200,2);
               if(_loc3_ < _loc4_)
               {
                  return -1;
               }
               if(_loc3_ > _loc4_)
               {
                  return 1;
               }
               return 0;
            };
            return function(param1:o2041, param2:o2041):Number
            {
               var _loc3_:Number = Math.pow(param1.x - o13595,2) + Math.pow(param1.y - o12200,2);
               var _loc4_:Number = Math.pow(param2.x - o13595,2) + Math.pow(param2.y - o12200,2);
               if(_loc3_ < _loc4_)
               {
                  return -1;
               }
               if(_loc3_ > _loc4_)
               {
                  return 1;
               }
               return 0;
            };
         }());
         o15714.o16380(function(param1:int, param2:Boolean):o16124
         {
            if(param2 === true)
            {
               promise.data = o4801[param1 - 1];
               return null;
            }
            if(param1 >= o4801.length)
            {
               promise.data = null;
               return null;
            }
            return o2948(o4801[param1],o17801,o14534,o6029,o6365,mask,filter);
         });
         return promise;
      }
      
      private function o2948(param1:o2041, param2:uint, param3:Number, param4:Number, param5:uint, param6:uint, param7:Vector.<int> = null) : o16124
      {
         o6691 = param1;
         o17801 = param2;
         o14534 = param3;
         o6029 = param4;
         o6365 = param5;
         mask = param6;
         filter = param7;
         var promise:o16124 = Mem.create(this,o16124);
         o2535.o4816(o6691.x,o6691.y,o14534,o6029,o6365,mask,filter).defer(function(param1:*):void
         {
            if(param1.body == -1)
            {
               promise.data = true;
            }
            else
            {
               promise.data = false;
            }
         });
         return promise;
      }
   }
}
