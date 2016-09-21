 //declare bacteria variables here   
 Bacteria bac1 = new Bacteria();
 void setup()   
 {     
 	//initialize bacteria variables here   
 	size(400, 400);
 	frameRate(5);
 }   
 void draw()   
 {    
 	//move and show the bacteria   
 	if(mousePressed == true)
 	{
 		ellipse(mouseX, mouseY, 20, 20);
 	}
 	background(0);
 	bac1.move();
 	bac1.show();
 }  
 class Bacteria    
 {     
 	int myX, myY, mySize, myMove;
 	Bacteria()
 	{
 		myX = (int)(Math.random()*401);
 		myY = (int)(Math.random()*401);
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
