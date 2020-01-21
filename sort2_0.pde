int amount = 100;
int[] rec = new int[amount];
float x = 1;
int place = 0;

void setup(){
  size(1000,1000);
  frameRate(10);
  for(int i = 0; i< rec.length; i++){
     rec[i] = int(random(height));
  }
}

void draw(){
  makeRec();
  if(place < rec.length && key == '1'){
    sortRec();
  }
}

void sortRec(){
  int smallistPlace = place;
  for(int i = place; i < rec.length; i++){
    if(rec[smallistPlace] > rec[i]){
      smallistPlace = i;
    }
  }
    int temp = rec[smallistPlace]; 
    rec[smallistPlace] = rec[place]; 
    rec[place] = temp;
    place++;
}

void makeRec(){
  background(51);
  x = width/amount;
  for(int i = 0; i < rec.length; i++){
    if(i == place){
      fill(102,51,153);
    }
    else{
      fill(255);
    }
    rect(i*x,height-rec[i],x,rec[i]);
  }
}
