void setup() {
    size(600,600);
}

void draw() {
    background(40,45,200);
    stroke(255,255,255);
    line(width/2,0,width/2,height);
    line(0,height/2,width,height/2);
    int scalar = 40;

    float j = 0;
    for (int i = 0; i < 28; i++) {
        //(x,y,size)
        //square(width/2 + (j*scalar),height/2 - (scalar * sin(j)) ,1);
        line(width/2+(j*scalar),height/2-(scalar*sin(j)),width/2+((j+0.25)*scalar),height/2-(scalar*sin(j+0.25)));
        print("j: " + j + "\n");
        j+=0.25;
    }
    j = 0;
    for ( int i = 0; i < 28; i++) {
        line(width/2+(j*scalar),height/2-(scalar*sin(j)),width/2+((j-0.25)*scalar),height/2-(scalar*sin(j-0.25)));     
        j-= 0.25;
    }
}
