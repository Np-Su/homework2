import 'dart:math';
import 'dart:io';
void main(){
  var r = Random();
  var answer = r.nextInt(100);
  var round = 1;
  while(true){
    stdout.write('Guess the number between 1 and 100: ');
    var input1 = stdin.readLineSync();
    var check = int.tryParse(input1!);
    if(check == null){
      stdout.write('Guess the number between 1 and 100: ');
      var input = stdin.readLineSync();
    }else{
      if(answer==check){
        print('$check is CORRECT ❤, total guesses: $round');
      }else{
        round++;
        if(check<answer){
          print('$check is TOO LOW! ▼');
        }else{
          print('$check is TOO HIGH! ▲');
        }
      }
    }
  }
}
