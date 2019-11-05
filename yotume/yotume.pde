void setup() {
  size(1000, 1000, P3D); //P3Dライブラリを使う
  background(255);
  noStroke();  // 表面の線消す
}

void draw(){
  /*
  for(int i=0; i<width; i++) {
    ellipse(i,100 + sin(radians(i*2))*(height/30), 10, 10);  // 0,100の位置から波形を10,10の大きさの円で描く(2D)
  }*/
  
  ambientLight(20, 20, 20);    //環境光を当てる
  lightSpecular(255, 255, 255);    //光の鏡面反射色（ハイライト）を設定
  directionalLight(100, 100, 100, 0, 1, -1);    //指向性ライトを設定
  
  for(int i=0; i<width; i++) {
    //translate(i, sin(radians(i*200))*(height/5), 0);
    translate(i, 10, 0);
    specular(255, 0, 0);    //オブジェクトの色を設定
    box(10);
  }
}