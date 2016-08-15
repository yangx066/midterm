//Sketch 1: Class and array of class objects
//inspired from Cars example by Brad Borevitz

int num = 10; // number of ships
Tree[] trees; // array of Ships

void setup() {
  size(500, 500);
  smooth();
  
  //initialize array
  trees = new Tree[num]; 
  
  //array contains Ship objects
  for (int i =0; i<num; i++) {
    trees[i] = new Tree();
  }
}
 
void draw() {
  background(250);
  // draw and move the ships
  for (int i =0; i<num; i++) {
    trees[i].drawTree();
    trees[i].moveTree();
    
  }
}
 
class Tree {
  // fields
  color col;
  int x; 
  int y;
  int speed;
 
  //constructor
  Tree () {
    // assign random values to all fields
    col = color(0, random(256), 0, random(50,200));
    speed = 5;
    
    
    x = int(random(width));
    y = int(random(height));
  }
 
  // methods
  void drawTree() { // draw spaceship
    
    noStroke();
    fill(col);
    
    ellipse(x, y, x/8, x/8);
    ellipse(x+5, y+12, 20, 20);
    ellipse(x-2, y-8,x/8, x/8);
    ellipse(x+8, y-5,25,25);
    
    
  }
 
  void moveTree() { //move spaceship
    
    // increase value of x based on speed
    y+= speed;
    // check boundary conditions and reset values
    if (y>height && speed>0) {
      y = -20;
      y+= speed;
    }
    
    
  }
  
}