 //declare bacteria variables here 
final int BacNum=20;
Bacteria [] colony=new Bacteria[BacNum];
 void setup()   
 {     
 	//initialize bacteria variables here
 	size(800,800);
 	for(int i=0; i<BacNum; i++){
 		colony[i]=new Bacteria((int)(Math.random()*700), (int)(Math.random()*700));
 	}

 	 
 }   
 void draw()   
 {    

 	//move and show the bacteria
 	background(0);
	for(int i=0; i<BacNum;i++){
		colony[i].move();
		colony[i].show();	
	}
	
}  
 class Bacteria    
 {     
 	PImage img;
 	//lots of java!
 	int bX, bY, bactChoose;
 	float bacSize;   
 Bacteria(int x, int y){
 		bX=x;
 		bY=y;
 		bactChoose=(int)(Math.random()*4);
 		bacSize=100;
 		this.choose();
 	}
 	void choose(){
 		if(bactChoose==0){
 			img=loadImage("Bac1.gif");
 		}
 		if(bactChoose==1){
 			img=loadImage("Bac2.gif");
 		}	
 		if(bactChoose==2){
 			img=loadImage("Bac3.gif");

 		}
 		if(bactChoose==3){
 			img=loadImage("Bac4.gif");
 		}
 	}
 	void move(){
 		bX+=((Math.random()*5)-2);
 		bY+=((Math.random()*5)-2);
 		
 	
 	}

 	void show(){
 	 	image(img,bX,bY,bacSize, bacSize);
 		
 	}
 }    