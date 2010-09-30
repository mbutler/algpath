package algpath
{
	public class CoordConvert
	{
		
		public static function ToUnicodeNum(char:String)
		{
			switch(char)
			{
				case "a": return 97; break;
				case "b": return 98; break;
				case "c": return 99; break;
				case "d": return 100; break;
				case "e": return 101; break;
				case "f": return 102; break;
				case "g": return 103; break;
				case "h": return 104; break;
				case "i": return 105; break;
				case "j": return 106; break;
				case "k": return 107; break;
				case "l": return 108; break;
				case "m": return 109; break;
				case "n": return 110; break;
				case "o": return 111; break;
				case "p": return 112; break;
				case "q": return 113; break;
				case "r": return 114; break;
				case "s": return 115; break;
				case "t": return 116; break;
				case "u": return 117; break;
				case "v": return 118; break;
				case "w": return 119; break;
				case "x": return 120; break;
				case "y": return 121; break;
				case "z": return 122; break;
			}
		}
		

		public static function AlgebraToArray(loc:String)
		{
			var L = loc.charAt(0);
			var N = loc.substr(1,2);
			var Lnum = CoordConvert.ToUnicodeNum(L);
			Lnum -= 97;
			N = uint(N-1);
			var str = String(N+","+Lnum);
			return str;
		}

		public static function AlgebraToScreen(loc:String)
		{
			var L = loc.charAt(0);
			var N = loc.substr(1,2);
			var Lnum = CoordConvert.ToUnicodeNum(L);
			Lnum -= 96;
			var Nscreen = (N*24);
			var Lscreen = (Lnum*24);
			var send:Array = new Array(Nscreen,Lscreen);
			return send;
		}
		
		public static function AlgebraSplit(loc:String)
		{
			var L = loc.charAt(0);
			var N = uint(loc.substr(1,2));
			var Lnum = CoordConvert.ToUnicodeNum(L);
			var send:Array = new Array(Lnum,N,L);
			return send;
		}
		
	}
}