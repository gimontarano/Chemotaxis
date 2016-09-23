 //declare bacteria variables here   
Bacteria[] bac;
 void setup()   
 {     
 	//initialize bacteria variables here   
 	size(400, 400);
 	noLoop();
 	
 	bac = new Bacteria[1000];
 	for(int i = 0; i < bac.length; i++)
 	{
 		bac[i] = new Bacteria();
 		
 	}
 }   
 void draw()   
 {    
 	//move and show the bacteria 
 	background(0);
 	for(int i = 0; i < bac.length; i++)
 	{
 		bac[i].move();
 		bac[i].show();
 	}
 	if(get(mouseX, mouseY) != color (0, 0, 0))
 	{
 		textAlign(CENTER, CENTER);
 		textSize(50);
 		fill(255);
 		text("You Lose", 200, 200);
 		textSize(20);
 		text("Click the black to continue playing.", 200, 250);
 	}
 	

 }  
 void mousePressed()
 {
 	redraw();
 }
 class Bacteria    
 {     
 	int myX, myY, mySize, myMove;
 	Bacteria()
 	{
 		myX = (int)(Math.random()*1001)-300;;
 		myY = (int)(Math.random()*1001)-300;;
 		mySize = (int)(Math.random()*11)+10;
 		move();
 	}
 	void move()
 	{
 		if(myX > mouseX)
 		{
 			myX = myX + (int)(Math.random()*5)-4;
 		}
 		if(myX < mouseX)
 		{
 			myX = myX + (int)(Math.random()*5);
 		}
 		if(myY > mouseY)
 		{
 			myY = myY + (int)(Math.random()*5)-4;
 		}
 		if(myY < mouseY)
 		{
 			myY = myY + (int)(Math.random()*5);
 		}
 	}
 	void show()
 	{
 		fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
 		ellipse(myX, myY, mySize, mySize);
 	}
 	
 }    
