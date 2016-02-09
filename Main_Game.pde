void drawForStateGame(){
background(204,0,0);
background();  

for (int i = targets_array.size()-1; i>=0;i--){
  Target target = targets_array.get(i);
  target.display();
  }

for (int i=0;i<100;i++){
  targets_array.add(new Target());
}

}