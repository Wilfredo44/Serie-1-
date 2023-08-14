void setup() {
  size(400, 400);
  background(255);
  noStroke();
  
  int rows = 5;  // Número de filas
  int cols = 5;  // Número de columnas
  int shapeSize = 50;  // Tamaño de las formas
  
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {
      int x = width / 2 + (j - cols / 2) * shapeSize;
      int y = height / 2 + (i - rows / 2) * shapeSize;
      
      // Genera un color aleatorio
      fill(random(255), random(255), random(255));
      
      // Elige aleatoriamente entre elipse y rectángulo
      if (random(1) < 0.5) {
        ellipse(x, y, shapeSize, shapeSize);
      } else {
        rectMode(CENTER);
        rect(x, y, shapeSize, shapeSize);
      }
    }
  }
}
