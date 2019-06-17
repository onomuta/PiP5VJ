//====Scene1===========================================================
class Scene1 {
  int num = 8;
  float colW = width/8;
  float colH = 20;
  float[] colY = new float[num];
  float[] colYSpeed = new float[num];
  float[] colColor = new float[num];
  void init() {
    noStroke();
    fill(baseColor[0],baseColor[1],baseColor[2]);
    
    for(int i = 0 ; i < num ; i++) {
      colYSpeed[i] = random(15)+3;
    };
      println("1");
  };
  void run() {
    for(int i = 0; i < num; i++){
      if(colY[i] < 0 - colH){
        colYSpeed[i] = random(15)+3;
        colY[i] = height + colH;
        colColor[i] = (baseColor[0]+ random(0.3)) % 1;
      }
      colY[i] = colY[i] - colYSpeed[i];
      fill(colColor[i],baseColor[1],baseColor[2]);
      rect(colW * i, colY[i],colW,colH);
    };
  };
}

//====Scene2===========================================================
class Scene2 {
  int num = 8;
  float colH = 20;
  float[] colY = new float[num];
  void init() {
    noStroke();
    fill((baseColor[0]+ random(0.15)) % 1,baseColor[1],baseColor[2]);
  };
  void run() {
    fill((baseColor[0]+ random(0.15)) % 1,baseColor[1],baseColor[2]);
     if(colY[0] < 0 - 20){
      colY[0] = height + 20;
    }
    colY[0] = colY[0] - 10;
    rect(0, colY[0], width, 20);
  };
}

//====Scene3===========================================================
class Scene3 {
  void init() {
    fill(baseColor[0],baseColor[1],baseColor[2]);
    noStroke();
  };
  void run() {
    background(0);
    fill((baseColor[0]+ random(0.15)) % 1,baseColor[1],baseColor[2]);
    rect(frameCount * 4 % (width + 20 )- 10, 0, 20, height);
  };
}

//====Scene4===========================================================
class Scene4 {
  void init() {
    fill(0,0,0,0);
    stroke(baseColor[0],baseColor[1],baseColor[2]);
    strokeWeight(6);

  };
  int frame = 0;
  void run() {
    frame = frameCount * 6;
    background(0);
    
    stroke((baseColor[0]+ random(0.1)) % 1,baseColor[1],baseColor[2] -0.5);
    strokeWeight(20);
    ellipse(width/2,  3 * height/4, frame % (width * 2), frame % (width * 2));
    ellipse(width/2,  3 * height/4, (frame + width) % (width * 2), (frame + width) % (width * 2));
    
    
    stroke((baseColor[0]+ random(0.1)) % 1,baseColor[1],baseColor[2]);
    strokeWeight(6);
    ellipse(width/2,  3 * height/4, frame % (width * 2), frame % (width * 2));
    ellipse(width/2,  3 * height/4, (frame + width) % (width * 2), (frame + width) % (width * 2));

  };
}

//====Scene5===========================================================
class Scene5 {
  void init() {
    fill(0,0,0,0);
    stroke(baseColor[0],baseColor[1],baseColor[2]);
    strokeWeight(3);
    for(int i = 0; i < ringNum; i ++ ){
      ringHue[i] = (baseColor[0]+ random(0.5)) % 1;
    }
  };
  int frame = 0;

  int ringNum = 10;
  int[] ringX = new int[ringNum];
  int[] ringY = new int[ringNum];
  int[] ringL = new int[ringNum];
  int[] ringLE = new int[ringNum];
  
  float[] ringHue = new float[ringNum];
  

  void run() {
    frame = frameCount * 8;
    background(0);
    for(int i = 0; i < ringNum; i ++){
      stroke(ringHue[i],baseColor[1],baseColor[2]);
      strokeWeight(ringL[i]/30);
      ellipse(ringX[i], ringY[i], ringLE[i] - ringL[i], ringLE[i] - ringL[i]);

      ringL[i] -= 2;

      if(ringL[i]<=0){
        ringL[i] = int(random(200));
        ringLE[i] = ringL[i];
        ringX[i] = int(random(width));
        ringY[i] = int(random(height));
        ringHue[i] = (baseColor[0]+ random(0.15)) % 1;
      }
    };




    
  };
};


//====Scene6===========================================================
class Scene6 {
  
  int num = 8;
  float YS[] = new float[num];
  float colW = width/8;
  float colH = 10;
  float colY[] = new float[num];
  float[] colHue = new float[num];
  
  
  void init() {
    fill(1);
    for(int i = 0; i < num; i++){
      YS[i] = random(6)+2;
      colHue[i] = (baseColor[0]+ random(0.3)) % 1;
    };
  };

  void run() {
    background(0);
    
    for(int i = 0; i < num; i++){
      if(colY[i] < 0 - colH){
        YS[i] = (random(2)+1);
        colHue[i] = (baseColor[0]+ random(0.2)) % 1;
      }
      if(colY[i] > height - colH){
        YS[i] = -(random(2)+1);
        colHue[i] = (baseColor[0]+ random(0.2)) % 1;
      }
      colY[i] = colY[i] + YS[i];
        
      fill(colHue[i],baseColor[1],baseColor[2]);
      rect(colW * i, colY[i],colW,colH);
      
    };
   
  };
}


//====Scene7===========================================================
class Scene7 {
  void init() {
    fill(baseColor[0],baseColor[1],baseColor[2]);
  };
  void run() {
    
    translate(width/2, height/2);
    translate(0, height/2);
    
    rotate(radians(frameCount *4));
    fill(baseColor[0] ,baseColor[1],baseColor[2]);
    rect(-width,-3,2*width,6);
    rotate(radians(60));
    fill(baseColor[0]+0.1 ,baseColor[1],baseColor[2]);
    rect(-width,-3,2*width,6);
    rotate(radians(60));
    fill(baseColor[0]+0.2 ,baseColor[1],baseColor[2]);
    rect(-width,-3,2*width,6);
    
  };
}


//====Scene8===========================================================
class Scene8 {
  void init() {
    fill(baseColor[0],baseColor[1],baseColor[2]);
    noStroke();
  };
  
  int count = 0;
  
  void run() {
    
    if(count/4 %2 == 0){
      fill((baseColor[0]+ random(0.15)) % 1,baseColor[1],baseColor[2]);
    }else{
      fill(0);
    }
    
    rect(0,0,width, height);
    count ++;
  };
}

//====Scene9===========================================================
class Scene9 {
  void init() {
    fill(baseColor[0],baseColor[1],baseColor[2]);
    noStroke();
  };
  
  int num = 5;
  float[] life = new float[num];
  float[] s = new float[num];
  float[] r = new float[num];
  float[] c = new float[num];
  
  void run() {
    translate(width/2, height/2);
    translate(0, height/2);
    for(int i = 0; i < num; i++){
      fill(c[i],1,1);
      
      rotate(radians(r[i]));
      rect(life[i] - width * 0.8,-5,40,10);
      rotate(-radians(r[i]));
      life[i] -= s[i];
      
      if(life[i] <= 0){
        life[i] = width * 1.6;
        //r[i] = random(360);
        r[i] = (random(80)-40) + ( 180 * round(random(1)));
        s[i] = random(8) +6;
        c[i] = random(1);
      }
    }
  };
}
//====Scene10===========================================================
class Scene10 {
  void init() {
    noStroke();
  };
  
  float time = 0;
  float y = 0;
  
  float cellW = width/8;
  float cellH = height/8;
  
  void run() {
    fill((baseColor[0]+ random(0.15)) % 1,baseColor[1],baseColor[2]);
    background(0);    
    for(int i = 0; i< 8; i ++){
      fill((baseColor[0]+ random(0.15)) % 1,baseColor[1],baseColor[2]);
      y = (sin(time + i/2.)+1) * (height - cellH) /2;
      rect(i*cellW, y, cellW, cellH);
    }    
    time = time + 0.1;
  };
}

//====Scene11===========================================================
class Scene11 {
  int num = 8;
  float colH = 20;
  float[] colY = new float[num];
  void init() {
    noStroke();
    fill(baseColor[0],baseColor[1],baseColor[2]);
  };
  void run() {
     if(colY[0] < 0 - 20){
      colY[0] = height + 20;
    }
    colY[0] = colY[0] - 10;
    rect(0, colY[0], width, 20);
  };
}