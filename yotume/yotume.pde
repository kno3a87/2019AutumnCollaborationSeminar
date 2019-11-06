void setup() {
  size(1000, 1000, P3D); //P3Dライブラリを使う
  noStroke();  // 表面の線消す
}

void draw(){
  background(255); 
  /*
  // 0,100の位置から波形を10,10の大きさの円で描く(2D)
  for(int i=0; i<width; i++) {
    ellipse(i,100 + sin(radians(i*2))*(height/30), 10, 10); 
  }
  */
  
  /*
  // ただキューブを表示
  for(int i=0; i<width; i++) {
    translate(i, 10, 0);  // ずれて増えてっちゃう
    specular(255, 0, 0);    //オブジェクトの色を設定
    box(10);
  }
  */
  
  yotume();
  
}

void yotume(){
  lights();
  
  for(int j=0; j<height/100; j++){
    for(int i=0; i<width; i++){
      beginShape(QUADS);
        // 黄緑色で10*100の短冊を並べる
        fill(154, 205, 50);
        vertex(i, j*200, sin(radians(i*2)));
        vertex(i+10, j*200, sin(radians(i*2))*(height/30));
        vertex(i+10, (j+1)*200-100, sin(radians(i*2))*(height/30));
        vertex(i, (j+1)*200-100, sin(radians(i*2)));
        
        // 2列目は逆向きのsin
        fill(154, 205, 50);
        vertex(i, (j+1)*200-100, -sin(radians(i*2)));
        vertex(i+10, (j+1)*200-100, -sin(radians(i*2))*(height/30));
        vertex(i+10, (j+1)*200, -sin(radians(i*2))*(height/30));
        vertex(i, (j+1)*200, -sin(radians(i*2)));   
      endShape();
    }
  }
  
  for(int k=0; k<width/100; k++){
    beginShape(QUADS);
    // 縦の帯（まっすぐ）
    fill(56, 121, 72);
    /*
    vertex(10+k*100, 0, 0);
    vertex(80+k*100, 0, 0);
    vertex(80+k*100, height, 0);
    vertex(10+k*100, height, 0);
    */
    
    // 一面覆う
    vertex(0, 0, 0);
    vertex(1000, 0, 0);
    vertex(1000, 1000, 0);
    vertex(0, 1000, 0);
    endShape();
  }
}