// 四ツ目編みの実装

function setup() {
  createCanvas(400, 400);
}

function draw() {
  background(220);
  
  // ①Tと逆Tの組み合わせ
  for(var i = 0; i < 5; i++){
    T(i);
    reT(i);
  }
  
  /*
  // ②Tだけで実装
  for(var i = 0; i < 5; i++){
     onlyT(i);
  }
  */
  /*
  for(var i = 0; i < 5; i++){
     obi(i);
  }
  */
}

function obi(t){
  fill(154,205,50);
  rect(0, t*80, 400, 40);
  fill(143,188,143);
  rect(t*80, 0, 40, 400);
}

function onlyT(t){
  // 縦にT羅列
  for(var k = 0; k < 5; k++){
      fill(154,205,50);
      rect(t*160, k*160, 120, 40);
      rect(t*160-80, k*160-80, 120, 40);
      fill(143,188,143);
      rect(t*160+40, k*160+40, 40, 120);
      rect(t*160+120, k*160-40, 40, 120);
  }
}

function T(i){
  for(var k = 0; k < 5; k++){
      fill(154,205,50);
      rect(i*160, k*160, 120, 40);
      fill(143,188,143);
      rect(i*160+40, k*160+40, 40, 120);
  }
}

function reT(i){
  for(var j = 0; j < 5; j++){
      fill(154,205,50);
      rect(i*160-80, j*160+80, 120, 40);
      fill(143,188,143);
      rect(i*160+120, j*160-40, 40, 120);
  }
}