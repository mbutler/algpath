package algpath
{
	public class Locations
	{
		
		//make STATIC vars for get/set classes
		private static var turn:uint;
		private static var panelX:int;
		private static var panelY:int;
		private static var item1:String;
		private static var item2:String;
		private static var player1:String;
		private static var player2:String;
		private static var portals:Array = new Array("g8","f11","j10","a9"); //HARD CODED PORTAL LOCATIONS
		
						
		//item1 LOCATION
		public function getItem1()
		{
			return item1;
	
		}
		
		public function setItem1(loc:String)
		{
			item1 = loc;
			
		}
		
		//item2 LOCATION
		public function getItem2()
		{
			return item2;
	
		}
		
		public function setItem2(loc:String)
		{
			item2 = loc;
			
		}
		
		//player1 LOCATION ON GRID 
		public function setPlayer1(loc:String)
		{
			player1 = loc;
		}
		
		public function getPlayer1()
		{
			return player1;
		}
		
		//player2 LOCATION ON GRID 
		public function setPlayer2(loc:String)
		{
			player2 = loc;
		}
		
		public function getPlayer2()
		{
			return player2;
		}
		
		//PORTAL LOCATIONS
		public function getPortals()
		{
			return portals;
		}
		
		//ROUND NUMBER
		public function getTurn()
		{
			return turn;
		}
		
		public function setTurn(num:uint)
		{
			turn = num;
		}
		
		public function getPanelX()
		{
			return panelX;
		}
		
		public function getPanelY()
		{
			return panelY;
		}
		
		public function setPanelX(myX)
		{
			panelX = myX;
		}
		
		public function setPanelY(myY)
		{
			panelY = myY;
		}
		
				
				
	}
}