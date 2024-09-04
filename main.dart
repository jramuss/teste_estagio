import 'dart:io';

void main() {
  print('Digite uma string:');
  String input = stdin.readLineSync() ?? '';

  
  int count = countOccurrences(input, 'a') + countOccurrences(input, 'A');

  if (count > 0) {
    print('A letra \'a\' (maiúscula ou minúscula) ocorre $count vezes na string.');
  } else {
    print('A letra \'a\' (maiúscula ou minúscula) não ocorre na string.');
  }
}

int countOccurrences(String str, String char) {
  return str.runes.where((rune) => String.fromCharCode(rune) == char).length;
}
