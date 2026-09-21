// Main function

// Example

void main(List<String> arguments){
  print('Hello World!');
  if(arguments.isNotEmpty){
    print('Command line arguments passed: ${arguments.join(", ")}');
  }
}


// exercise 2

import 'dart:io';
void main(){
  print("Name: \n>>>");
  String? name = stdin.readLineSync();
  print("Hello $name!");
  print("How old are you?");
  int age  = int.parse(stdin.readLineSync()!);
  print("U r already $age. Gn unc");
}

// exercise 3

void main(List<String> arguments){
  print('The number of command line arguments passed is: ${arguments.length}');
}

//exercise 4

void main(List<String> arguments){
  int sum = 0;
  int count = arguments.length;
  List<int> intArgs = arguments.map(int.parse).toList();
  for (int arg in intArgs){
    sum+=arg;
  }
  double avg = sum/count;
  print("The avg of the arguments passed to the command line is: $avg");
}


//exercise 5

import 'dart:io';

int main(){
  exitCode = 0;
  return exitCode;
}

// exercise 6

import 'dart:io';

void main(List<String> arguments){
  for(String arg in arguments){
    if(arg.contains("--") && arg.contains("=")){
      String key = arg.substring(arg.indexOf("--"),arg.indexOf("=")).replaceAll("-", "");
      String value = arg.substring(arg.indexOf("=")).replaceAll("=", "");
      print("$key->$value");
    }
  }
}

// Variables & Data types 

// exercise 1

int main(){
  int age = 0;
  double gpa = 10.4;
  String country = "Uzb";
  bool isStudent = false;
  return 0;
}

// exercise 2

int main(){
  final time = DateTime.now();
  const constTime = DateTime.now();
  return 0;
}

//exercise 3

int main(){
  String? name;
  String actualName = name ?? "actualName";
  return 0;
}

//exercise 4

int main(){
  dynamic name = 10;
  if(name is int){
    print(name+10);
  }
  return 0;
}

// Control flow

//exercise 1

int main(){
  int score = 100;
  if(score>0){
    print("Positive");
  }else if(score<0){
    print("negative");
  }else{
    print("zero");
  }
  return 0;
}

//exercise 2

int main(){
  int number = 10;
  int factorial=1;
  for(var i=1; i<=number; i++){
    factorial*=i;
  }
  factorial = 1;
  for(var number in List.generate(number, (i) => i + 1)){
    factorial*=number;
  }
  return 0;
}

//exercise 3

import 'dart:io';
import 'dart:math';

int main(){
  int guess = Random().nextInt(100)+1;
  print("Guess the number: \n>>>");
  int input = int.parse(stdin.readLineSync()!);
  do {
    if (guess==input){
      print("Congratz u won the game");
      break;
    }else if(guess>input){
      print("Ur guess is low gng. Try again! \n>>>");
      input = int.parse(stdin.readLineSync()!);
    }else{
      print("Ur guess is high gng. Try again! \n>>>");
      input = int.parse(stdin.readLineSync()!);
    }
  } while (guess!=input);
  return 0;
}

//exercise 4

int main(){
  for (var i=0; i<5;i++){
    break;
  }
  return 0;
}

//Functions

//exercise 1

bool isEven(int n){
  if(n%2==0){
    return true;
  }
  return false;
}

//exercise 2

int fibonacci(int n){
  if(n==1 || n==0){
    return 1;
  }
  return fibonacci(n-1)+fibonacci(n-2); 
}

int main(){
  print(fibonacci(6));
  return 0;
}


//exercise 3

List<int> doubleIt(List<int> numbers) {
  List<int> newItems = [];
  for (int item in numbers) {
    item *= 2;
    newItems.add(item);
  }
  return newItems;
}

void transform(
  List<int> array, List<int> Function(List<int>) transformer
  ) {
  List<int> result = transformer(array);
  print(result);
}

int main() {
  final numbers = [1, 2, 3, 4];
  transform(numbers, doubleIt);
  return 0;
}



//exercise 4

var createCounter = (){
  int count = 0;
  return(){
    count+= 1;
  };
};