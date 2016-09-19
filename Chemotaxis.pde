 //declare bacteria variables here   
 void setup()   
 {     
 	//initialize bacteria variables here   
 	size(400, 400);
 }   
 void draw()   
 {    
 	//move and show the bacteria   
 }  
 class Bacteria    
 {     
 	int myX, myY, mySize, myMove;
 	Bacteria()
 	{
 		myX = (int)(Math.random()*401);
 		myY = (int)(Math.random()*401);
 		mySize = (int)(Math.random()*11);

 	}
 	void move()
 	{
 		if(myX > mouseX)
 		{
 			myX = myX + (int)(Math.random()*5)-2;
 		}
 	}

 }    