//A SAMPLE IMPLEMENTATION OF THE algpath PACKAGE

package
{
	import flash.display.*;	
	import algpath.*;
	
	public class AlgpathTest extends MovieClip
	{
		var grid:Grid = new Grid("a1", "a10", 99); //begin at a1, end on A10, up to 99 moves returned
		var solved:Array = grid.solve;
		
		public function AlgpathTest()
		{
			trace(solved);
		}
	}
	
}