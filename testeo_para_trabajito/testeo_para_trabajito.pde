
//logica de estados

String estado;
int tam,grilla;
int cant=20;
boolean [][] algo = new boolean [cant][cant];

void setup(){
  size(800, 800 );
  textSize( 24 );
  textAlign( CENTER, CENTER );
  tam = 50;
  estado = "inicio";
  grilla = width/cant;
  posicionX= 1;
  posicionY= 1;
}

void iniciojuego(){
  //logica de estados y eventos
  
  //if( estado == "inicio" ){
  if( estado.equals("inicio") ){
    background( 200, 0, 0 );
    text( estado, width/2, height/2 );
    text( "Presione la barra espaciadora para continuar", width/2, height/2+50 ); 
    //
  }else if( estado.equals("instrucciones") ){
    background( 200, 100, 0 );
    text( estado, width/2, height/2 );  
    //
    pushStyle();
    ellipse( width/2, height/2+100, tam, tam );
    if (dist(mouseX,mouseY, width/2, height/2+100) <=25){
      tam=70;
      }else{
        tam=50;
        }
        popStyle();
    //
  }else if( estado.equals("jugando") ){
    background( 100, 0, 200 );
    text( estado, width/2, height/2 );    
    //
  }else if( estado.equals("ganar") ){
    background( 200, 200, 0 );
    text( estado, width/2, height/2 );  
    //
  }else if( estado.equals("perder") ){
    background( 200, 0, 200 );
    text( estado, width/2, height/2 );
    //
  }
}


void keyPressed(){
  //evento que cambia de inicio a instrucciones
  if( estado.equals("inicio") && key == ' ' ){
    estado = "instrucciones";
  }
    if(estado.equals("perder") && key == 'r'){
    estado= "inicio";
  }
  if( estado.equals("jugando") && key == 's'){
    posicionY ++;
  }
  if( estado.equals("jugando") && key == 'w'){
    posicionY --;
  }
  if( estado.equals("jugando") && key == 'd'){
    posicionX ++;
  }
  if( estado.equals("jugando") && key == 'a'){
    posicionX --;
  }
}

void mousePressed(){
  if ( estado.equals("instrucciones") && dist( mouseX, mouseY, width/2, height/2+100) <= 25 ) {
    estado = "jugando";
  }

}


void draw(){
  iniciojuego();
  if (estado.equals("jugando")){
    juego();
  }
  
}
