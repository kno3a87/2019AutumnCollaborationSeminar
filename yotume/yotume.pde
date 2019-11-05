void setup() {
  size(1000, 1000, P3D); //P3Dライブラリを使う
  background(255);                       // 背景色を設定
}

void draw(){
  for(int i=0; i<width; i++) {
    ellipse(i, 100 + sin(radians(i*2)) * (height/30), 10, 10);  // 0,100の位置から波形
  }
}