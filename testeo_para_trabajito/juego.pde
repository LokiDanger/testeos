
boolean mostrarIndices = false;
int posicionX;
int posicionY;
//declaración y tamaño del arreglo


  
  //asignacion


void juego(){
  grilla = width / cant;  //=100
  background( 0 );
  noStroke();
    for( int i = 0 ; i<cant ; i++){
    for( int j = 0 ; j<cant ; j++){
      algo[i][j] = false;
    }
  }
    //asigno manualmente UNA posición de mi arreglo
  
    for( int x = 0 ; x < cant ; x++ ){
      for( int y = 0 ; y < cant ; y++ ){
        if( algo[x][y] == true ){
        fill( 0 );
        }else{
        fill( 43,147,105);
      }
      /*
      boolean estoyDentro = mouseX > x*tam && mouseX < x*tam+tam && mouseY > y*tam && mouseY < y*tam+tam ;
      */
      algo[posicionX][posicionY] = true;
      
      rect( x * grilla, y * grilla, grilla, grilla );
      //if( mostrarIndices ){
       // fill( 100 );
        //text( x + " / " + y, x * tam + 40, y * tam + 30);
      }
    }
  }
