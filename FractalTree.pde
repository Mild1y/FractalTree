private double fractionLength = .9; 
private int smallestBranch = 1; 
private double branchAngle = .4;  
public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke(0,255,0);   
	line(320,480,320,380);   
	drawBranches(320, 380, 200, 3*Math.PI/2);
} 
public void drawBranches(int x, int y, double branchLength, double angle) 
{   
	double angle1 = angle + branchAngle;
	double angle2 = angle - branchAngle; 
	branchLength = branchLength * fractionLength;
	int endX1 = (int)(branchLength * Math.cos(angle1) + x);
	int endY1 = (int)(branchLength * Math.sin(angle1) + y);
	int endX2 = (int)(branchLength * Math.cos(angle2) + x);
	int endY2 = (int)(branchLength * Math.sin(angle2) + y);
	int endX3 = (int)(branchLength * Math.tan(angle1) + x);
	int endY3 = (int)(branchLength * Math.sin(angle1) + y);
	int endX4 = (int)(branchLength * Math.tan(angle2) + x);
	int endY4 = (int)(branchLength * Math.sin(angle2) + y);
	int endX5 = (int)(branchLength * Math.cos(angle1) + x);
	int endY5 = (int)(branchLength * Math.tan(angle1) + y);
	int endX6 = (int)(branchLength * Math.cos(angle2) + x);
	int endY6 = (int)(branchLength * Math.tan(angle2) + y);
	line(x, y, endX1, endY1);
	line(x, y, endX2, endY2);
	line(x, y, endX3, endY3);
	line(x, y, endX4, endY4);
	line(x, y, endX5, endY5);
	line(x, y, endX6, endY6);
	if(branchLength > smallestBranch){
		drawBranches(endX1, endY1, branchLength/2, angle1);
		drawBranches(endX2, endY2, branchLength/2, angle2);
		drawBranches(endX3, endY3, branchLength/2, angle1);
		drawBranches(endX4, endY4, branchLength/2, angle2);
		drawBranches(endX5, endY5, branchLength/2, angle1);
		drawBranches(endX6, endY6, branchLength/2, angle2);
	}
} 
