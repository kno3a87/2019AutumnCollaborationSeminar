//Y軸を中心に60度回転した立方体を描画
 
void setup(){
  size(400, 400, P3D);    //P3Dと書くことによって、3D空間であることを明示する
}
 
void draw(){
  background(220);
  
  kimidori_obi();
  
}

void kimidori_obi(){
  fill(154,205,50);
  
  //立体の中心を移動
  translate(50, 50, 0);
  //Y軸に対して60度回転
  //rotateY(radians(60));
  //立方体を描画
  box(50, 50, 10);   
  
  translate(50, 0, 10);
  box(50, 50, 10); 
  
  translate(50, 0, -10);
  box(50, 50, 10); 
  
  translate(50, 0, 20);
  box(50, 50, 10);
  
  translate(50, 0, -10);
  box(50, 50, 10);
  translate(50, 0, 10);
  box(50, 50, 10);
  translate(50, 0, -10);
  box(50, 50, 10);
  
}