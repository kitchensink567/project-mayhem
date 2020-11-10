package
{
   public class o15542
   {
      
      private static const o865:o16123 = new o16123(1008);
      
      private static const o194:o16123 = new o16123(1009);
      
      private static const o4343:o16123 = new o16123(1067);
      
      private static const o9945:o16123 = new o16123(1016);
      
      private static const o5864:o16123 = new o16123(1018);
      
      private static const o8197:o16123 = new o16123(1043);
      
      private static const o17710:o16123 = new o16123(1054);
      
      private static const o18132:o16123 = new o16123(1101);
      
      private static const o1044:o16123 = new o16123(1110);
      
      private static const o14000:o16123 = new o16123(1092);
      
      private static const o19818:o16123 = new o16123(1095);
      
      private static const o3277:o16123 = new o16123(1094);
      
      private static const o19471:o16123 = new o16123(1100);
      
      private static const o19385:o16123 = new o16123(1093);
      
      private static const o9693:o16123 = new o16123(1099);
      
      private static const o4591:o16123 = new o16123(1096);
      
      private static const o8247:o16123 = new o16123(1111);
      
      private static const o8149:o16123 = new o16123(1113);
      
      private static const o13891:o16123 = new o16123(1102);
      
      private static const o14294:o16123 = new o16123(1105);
      
      private static const o3816:o16123 = new o16123(1104);
      
      private static const o3741:o16123 = new o16123(1108);
      
      private static const o11251:o16123 = new o16123(1103);
      
      private static const o3720:o16123 = new o16123(1107);
      
      private static const o9618:o16123 = new o16123(1106);
      
      private static const o17802:o16123 = new o16123(1109);
      
      private static const o5280:o16123 = new o16123(1112);
      
      public static var o5289:Array = ["Onslaught","Zombie Pods","Survivors","Last Stand","Vaccine","Power Out","VIP","Ice Station","Meltdown"];
       
      
      public function o15542()
      {
         super();
      }
      
      public static function o9146(param1:int, param2:int) : String
      {
         var _loc3_:* = param1;
         switch(_loc3_)
         {
            case 0:
            case 1:
            case 2:
               return o13281(param2);
            case 5:
            case 3:
            case 4:
            case 7:
               return o15677(param2);
            case 103:
            case 102:
            case 101:
            case 104:
            case 100:
               return "Contract";
            default:
               return "Null";
         }
      }
      
      public static function o13479(param1:int) : int
      {
         var _loc2_:* = param1;
         switch(_loc2_)
         {
            case o10769:
               return o9333;
            case o18508:
               return o18045;
            case o3747:
               return o18003;
            case o1275:
               return o6176;
            case o5928:
               return o11538;
            case o9356:
               return o8094;
            case o20553:
               return o8148;
            case o7243:
               return o16732;
            case o10263:
               return o18092;
            default:
               return -1;
         }
      }
      
      public static function o1265(param1:int) : int
      {
         var _loc2_:* = param1;
         switch(_loc2_)
         {
            case o10769:
               return o20134;
            case o18508:
               return o12046;
            case o3747:
               return o5;
            case o1275:
               return o16498;
            case o5928:
               return o11686;
            case o9356:
               return o4204;
            case o20553:
               return o998;
            case o7243:
               return o12780;
            case o10263:
               return o19904;
            default:
               return -1;
         }
      }
      
      public static function o9291(param1:int) : int
      {
         var _loc2_:* = param1;
         switch(_loc2_)
         {
            case o20134:
               return o10769;
            case o12046:
               return o18508;
            case o5:
               return o3747;
            case o16498:
               return o1275;
            case o11686:
               return o5928;
            case o4204:
               return o9356;
            case o998:
               return o20553;
            case o12780:
               return o7243;
            case o19904:
               return o10263;
            default:
               return -1;
         }
      }
      
      public static function o15677(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(_loc2_)
         {
            case o9333:
               return "Onslaught";
            case o18045:
               return "Zombie Pods";
            case o18003:
               return "Survivors";
            case o6176:
               return "Last Stand";
            case o11538:
               return "Vaccine";
            case o8094:
               return "Power Out";
            case o8148:
               return "VIP";
            case o16732:
               return "Ice Station";
            case o18092:
               return "Meltdown";
            default:
               return "null";
         }
      }
      
      public static function o13281(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(_loc2_)
         {
            case o10769:
            case o20134:
               return "Onslaught";
            case o18508:
            case o12046:
               return "Zombie Pods";
            case o3747:
            case o5:
               return "Survivors";
            case o1275:
            case o16498:
               return "Last Stand";
            case o5928:
            case o11686:
               return "Vaccine";
            case o9356:
            case o4204:
               return "Power Out";
            case o20553:
            case o998:
               return "VIP";
            case o7243:
            case o12780:
               return "Ice Station";
            case o10263:
            case o19904:
               return "Meltdown";
            default:
               return "null";
         }
      }
      
      public static function o9143(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(_loc2_)
         {
            case o9333:
               return "Onslaught";
            case o18045:
               return "ZombiePods";
            case o18003:
               return "Survivors";
            case o6176:
               return "LastStand";
            case o11538:
               return "Vaccine";
            case o8094:
               return "PowerOut";
            case o8148:
               return "VIP";
            case o16732:
               return "IceStation";
            case o18092:
               return "Meltdown";
            default:
               return "null";
         }
      }
      
      public static function o5603(param1:String) : int
      {
         var _loc2_:* = param1;
         switch(_loc2_)
         {
            case "Onslaught":
               return o9333;
            case "Zombie Pods":
               return o18045;
            case "Survivors":
               return o18003;
            case "Last Stand":
               return o6176;
            case "Vaccine":
               return o11538;
            case "Power Out":
               return o8094;
            case "VIP":
               return o8148;
            case "Ice Station":
               return o16732;
            case "Meltdown":
               return o18092;
            default:
               return -1;
         }
      }
      
      public static function o7017(param1:String) : int
      {
         var _loc2_:* = param1;
         switch(_loc2_)
         {
            case "Onslaught":
               return o10769;
            case "Zombie Pods":
               return o18508;
            case "Survivors":
               return o3747;
            case "Last Stand":
               return o1275;
            case "Vaccine":
               return o5928;
            case "Power Out":
               return o9356;
            case "V.I.P":
               return o20553;
            case "Ice Station":
               return o7243;
            case "Meltdown":
               return o10263;
            default:
               return -1;
         }
      }
      
      public static function o17990(param1:String) : int
      {
         var _loc2_:* = param1;
         switch(_loc2_)
         {
            case "Onslaught":
               return o20134;
            case "Zombie Pods":
               return o12046;
            case "Survivors":
               return o5;
            case "Last Stand":
               return o16498;
            case "Vaccine":
               return o11686;
            case "Power Out":
               return o4204;
            case "VIP":
               return o998;
            case "Ice Station":
               return o12780;
            case "Meltdown":
               return o19904;
            default:
               return -1;
         }
      }
      
      public static function o9857(param1:String) : int
      {
         var _loc2_:* = param1;
         switch(_loc2_)
         {
            case "Onslaught":
               return o20134;
            case "Zombie Pods":
               return o12046;
            case "Survivors":
               return o5;
            case "Last Stand":
               return o16498;
            case "Vaccine":
               return o11686;
            case "Power Out":
               return o4204;
            case "VIP":
               return o998;
            case "Ice Station":
               return o12780;
            case "Meltdown":
               return o19904;
            default:
               return -1;
         }
      }
      
      public static function o602(param1:int) : int
      {
         var _loc2_:* = param1;
         switch(_loc2_)
         {
            case o15542.o10769:
               return 0;
            case o15542.o3747:
            case o15542.o18508:
            case o15542.o20553:
            case o15542.o9356:
            case o15542.o1275:
               return 1;
            case o15542.o5928:
               return 2;
            case o15542.o7243:
            case o15542.o10263:
               return 3;
            default:
               return -1;
         }
      }
      
      public static function get o10769() : int
      {
         return o865.value;
      }
      
      public static function get o18508() : int
      {
         return o194.value;
      }
      
      public static function get o3747() : int
      {
         return o4343.value;
      }
      
      public static function get o1275() : int
      {
         return o9945.value;
      }
      
      public static function get o5928() : int
      {
         return o5864.value;
      }
      
      public static function get o9356() : int
      {
         return o8197.value;
      }
      
      public static function get o20553() : int
      {
         return o17710.value;
      }
      
      public static function get o7243() : int
      {
         return o18132.value;
      }
      
      public static function get o10263() : int
      {
         return o1044.value;
      }
      
      public static function get o9333() : int
      {
         return o14000.value;
      }
      
      public static function get o18045() : int
      {
         return o19818.value;
      }
      
      public static function get o18003() : int
      {
         return o3277.value;
      }
      
      public static function get o6176() : int
      {
         return o19471.value;
      }
      
      public static function get o11538() : int
      {
         return o19385.value;
      }
      
      public static function get o8094() : int
      {
         return o9693.value;
      }
      
      public static function get o8148() : int
      {
         return o4591.value;
      }
      
      public static function get o16732() : int
      {
         return o8247.value;
      }
      
      public static function get o18092() : int
      {
         return o8149.value;
      }
      
      public static function get o20134() : int
      {
         return o13891.value;
      }
      
      public static function get o12046() : int
      {
         return o14294.value;
      }
      
      public static function get o5() : int
      {
         return o3816.value;
      }
      
      public static function get o16498() : int
      {
         return o3741.value;
      }
      
      public static function get o11686() : int
      {
         return o11251.value;
      }
      
      public static function get o4204() : int
      {
         return o3720.value;
      }
      
      public static function get o998() : int
      {
         return o9618.value;
      }
      
      public static function get o12780() : int
      {
         return o17802.value;
      }
      
      public static function get o19904() : int
      {
         return o5280.value;
      }
   }
}
