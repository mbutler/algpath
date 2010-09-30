package algpath
{
	public class LevelEditor
	{
		public function LevelEditor(square:String)
		{
			// A RUDIMENTARY LEVEL EDITOR
			//when implemented, allows user to click on a square and trace out a commands that can be pasted into Grid.placeObstacle()
			var L = square.charAt(0);
			var N = square.substr(1,2);
			var Lnum = CoordConvert.ToUnicodeNum(L);
			Lnum -= 97;
			N = uint(N-1);
			trace("map.setWalkable("+N+","+Lnum+",false);")
								
		}
	}
}