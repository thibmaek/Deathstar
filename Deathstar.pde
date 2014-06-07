class Deathstar {
	Deathstar(){
		
	}
	
	void display(){
		stroke(255);
		float targetX = mouseX;
		float dx = targetX -x;
		if(abs(dx)>1){x += dx*easing;}
		float targetY = mouseY;
		float dy = targetY - y;
		if(abs(dx)>1){y += dy*easing;}
		translate(width/2, height/2, 10);
		rotateX(y * 0.005);
		rotateY(x * 0.005);
		rotateZ(angle);
		angle+=0.01;
		
		noFill();
		/*   fill(0,0,25); */
		sphereDetail(ures,vres);
		sphere(200);
	}
	
}