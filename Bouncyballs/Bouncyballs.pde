Ball[] ballGroup;
int pos = 0;

void setup() {
    size(1400,700);

    ballGroup = new Ball[100];
}

void draw() {
    background(52,2,150);
    
    for (int i = 0; i< pos; i++){
        ballGroup[i].display();
        ballGroup[i].move();
    }

}

void mousePressed(){
    
    if (pos < ballGroup.length){
        ballGroup[pos] = new Ball(mouseX, mouseY, 100);
        pos++;
    }
}