package com.baseoneonline.flash.geom
{
	
	/**
	 * 	Simple integer point implementation
	 * 	
	 * 
	 */
	public class IntPoint
	{
		
		public var x:int;
		public var y:int;
		
		function IntPoint(x:int=0, y:int=0)
		{
			this.x = x;
			this.y = y;
			
		}
		
		
		public function add(p:IntPoint):void
		{
			x += p.x;
			y += p.y;
		}
		
		public function addNew(p:IntPoint):IntPoint {
			return new IntPoint(x+p.x, y+p.y);
			
		}
		

		public function toString():String
		{
			var currentL:Number;
			var currentN:Number;
			var letter:String;
			var number:String;
			var currentSpot:String;
			
			
			
			currentL = y+97;
			currentN = x+1;
			currentSpot = String(String.fromCharCode(currentL)+(currentN));
							 
			return currentSpot;
		}
				
	}
}