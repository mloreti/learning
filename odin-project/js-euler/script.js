// Problem 1
function multiples35 (limit) {
  var multiplesSum = 0;
  for(var i = 1; i < limit; i++){
    if(i % 3 == 0 || i % 5 == 0){
      multiplesSum += i;
    }
  }
  return multiplesSum;
}

// Problem 2
function evenFibonacci(max){
  var a = 0;
  var b = 1;

  var fibSum = 0;

  while (fibSum < max){
    if(current % 2 == 0){
      fibSum += current;
    }
    var current = a + b;
    a = b;
    b = current;
  }
  return fibSum;
}

// Fibonacci sequence for practice
// function fibonacci(count){
//   var fibSeq = [0,1];
//   for(var j = 0; j < count; j++){
//     var next = fibSeq[j] + fibSeq[j+1];
//     fibSeq.push(next);
//   }
//   return fibSeq;
// }
// console.log(fibonacci(10));

// Problem 3
function factors(input){
  var factors = [];
  for(var i = 2; i <= input; i++){
    while(input % i == 0){
      factors.push(i);
      input = input / i;
    }
  }
  return factors[factors.length - 1];
}
