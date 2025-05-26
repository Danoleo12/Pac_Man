class PacMan{
   float x, y; //Pacman's x and y coordinats
   float size; //Pacman's size
   String direction;
   float speed = 0.5;
   float up, down;
   
   PacMan(float x, float y, float size, float up, float down) { //Constructor
     this.x = x;
     this.y = y;
     this.size = size;
     this.up = up;
     this.down = down;
   }
   // set up
   void setUp(float up){
     this.up = up;
   }
   
   //set Down
   void setDown(float down){
     this.down = down;
   }
   
   void drawPacman(){
     fill(255, 555, 0); //Pacman's color
     arc(x, y, size, size, up, down);
     
     if (direction == "UP") {
       //fill(255, 555, 0); //Pacman's color
       arc(x, y, size, size, radians(315), radians(575));
       //setUp(radians(315));
     }
     if (direction == "DOWN") {
       //fill(255, 555, 0); //Pacman's color
       arc(x, y, size, size, radians(135), radians(395));
     }
     if (direction == "RIGHT") {
       //fill(255, 555, 0); //Pacman's color
       arc(x, y, size, size, radians(45), radians(315));
     }
     if (direction == "LEFT") {
       //fill(255, 555, 0); //Pacman's color
       arc(x, y, size, size, radians(235), radians(495));
     }
   }
   
   void display(){
     // Angles to face left: radians(45), radians(315)
     // Angles to face down: radians(135), radians(395)
     // Angles to face up: radians(315), radians(575))
     //Angles to face Right: radians(235), radians(495)
     
     drawPacman();
     move();
   }
   
   void move(){
     keypressed();
     if (direction == "UP") {
       y -= speed;
     }
     if (direction == "DOWN") {
       y += speed;
     }
     if (direction == "LEFT") {
       x -= speed;
     }
     if (direction == "RIGHT") {
       x += speed;
     }
   }
   
   void keypressed(){
     if(keyCode == UP){
      direction = "UP";
     }
     if(keyCode == DOWN){
      direction = "DOWN";
     }
     if(keyCode == LEFT){
      direction = "LEFT";
     }
     if(keyCode == RIGHT){
       direction = "RIGHT";
     }
   }
}
