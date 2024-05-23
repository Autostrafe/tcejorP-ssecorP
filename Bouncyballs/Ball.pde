class Ball{
    int x,y,r; //Declaring position and radius variables
    int cRed,cGreen,cBlue;
    int dx, dy;

    // Constructor Method
    Ball(int ballx, int bally, int ballr){
        x = ballx; //set the x cord
        y = bally; //set the y cord
        r = ballr; //set the radius


        cRed = int (random(0,255));
        cGreen = int (random(0,255));
        cBlue = int (random(0,255));

        dx = rand.randInt(-10,10);
        dy = rand.randInt(-10,10);
    }

    void display(){
        fill(cRed,cGreen,cBlue);
        circle(x,y,r);
    }

    void move(){
        x = x+dx;
        y = y+dy;
    }

}