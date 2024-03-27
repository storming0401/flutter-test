import 'dart:convert';
import 'dart:io';
import 'dart:math';


const cpuWin = 'CPU가 승리 하였습니다.';
const playWin = 'Player가 승리 하였습니다.';
const draw = '비겼습니다.';

void main() {
  print('가위, 바위, 보 중 하나를 정해서 입력해 주세요');
  final String userInput = stdin.readLineSync(encoding: utf8) ?? 'Error';

  const selectList = ['가위', '바위', '보'];
  final cpuInput = selectList[Random().nextInt(3)];

  print(cpuInput);
  print(getResult(userInput, cpuInput));
}

String getResult(String userInput, String cpuInput) {
  String result;

  switch (userInput) {
    case '가위':
      if (cpuInput == '바위') {
        result = cpuWin;
      } else if (cpuInput == '보') {
        result = playWin;
      } else {
        result = draw;
      }

    case '바위':
      if (cpuInput == '보') {
        result = cpuWin;
      } else if (cpuInput == '가위') {
        result = playWin;
      } else {
        result = draw;
      }

    case '보':
      if (cpuInput == '가위') {
        result = cpuWin;
      } else if (cpuInput == '바위') {
        result = playWin;
      } else {
        result = draw;
      }
    default:
      result = '올바른 값을 입력 해 주세요.';
  }

  return result;
}
