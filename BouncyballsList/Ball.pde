class Ball{
    int x,y,d; //Declaring position and radius variables
    int cRed,cGreen,cBlue;
    int dx, dy;
    int width, height;

    // Constructor Method
    Ball(int ballx, int bally, int balld, int windoww, int windowh){
        x = ballx; //set the x cord
        y = bally; //set the y cord
        d = balld; //set the radius


        cRed = int (random(0,255));
        cGreen = int (random(0,255));
        cBlue = int (random(0,255));

        dx = int( random(-10,10));
        dy = int( random(-10,10));

        width = windoww;
        height = windowh;

    }

    void display(){
        fill(cRed,cGreen,cBlue);
        circle(x,y,d);
    }

    void move(){
        x = x+dx;
        y = y+dy;

        if (x <= 0 + d/2|| x >= width - d/2 ){
            dx = dx * -1;
        }

        if (y <= 0 +d/2|| y >= height - d/2 ){
            dy = dy * -1;
        }
    }

    void checkCollision(Ball otherBall){
        double distanceApart = dist(x,y, otherBall.x, otherBall.y);

        if (distanceApart < d){
            int tempdx = dx;
            int tempdy = dy;

            dx = otherBall.dx;
            dy = otherBall.dy;

            otherBall.dx = tempdx;
            otherBall.dy = tempdy;
        }
    }

}