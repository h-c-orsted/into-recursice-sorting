int[] numbers;
static int countNumbers = 7;

void setup() {
  size(500, 500); 
  generateArray(countNumbers); 
  println(numbers);
}


void draw() {
  background(228,247,253);
  visualize();
}


void visualize() {
  // Show all numbers
  fill(0,0,76);
  for (int i=0; i<numbers.length; i++) {
    rect(i*16+20, 480, 14, numbers[i]*(-1));  // Make some padding ... hard coded for this purpose
  }
}


void mousePressed() {
  sortArray(numbers, numbers.length);
  println("");
  println(numbers);
}


// Bad method just for creating some data ..
void generateArray(int count) { 
  numbers = new int[count];
  for (int i=0; i<count; i++) {
    numbers[i] = int(random(400)); 
  }
}


void sortArray(int numbers[], int index) {
  if (index == 1) return;
  
  for (int i=0; i<index-1; i++) {
    if (numbers[i] > numbers[i+1] ) {
      int val = numbers[i];
      numbers[i] = numbers[i+1];
      numbers[i+1] = val;
    }
    
    sortArray(numbers, index-1);
  }  
  
  println("");
  println(numbers);
}
