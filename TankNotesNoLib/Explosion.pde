class Explosion{
	
	float initX;
	float initY;

	int c = 0;
	
	public Explosion( float initialX, float initialY ) {
		super();
		initX = initialX;
		initY = initialY;
	}
	
	public boolean timer(){
		if (c<15){
			return true;
		}
		else{
			return false;
		}
	}
	
	public void draw(){
		noStroke();
		fill(TankNotesNoLib.generateColor(initY, height)-c*0x0F000000);
		ellipse(initX, initY, c*c, c*c);
		c++;
	}
}