function EulerOne(number) {
  var sum=0;
  for(i=5;i<number;i+=5){
    if(i%3===0){
    }
    else{
      sum+=i;
    }
  }
  for(i=3;i<number;i+=3){
    sum+=i;
  }
  alert(sum);
}

function EulerTwo(number) {
  var neww=1;
  var old=1;
  var temp=0;
  var sum=0;
  while(neww<=number){
    if(neww%2===0){
      sum+=neww;
    }
    temp=neww;
    neww+=old;
    old=temp;
  }
  alert(sum);
}

function EulerThree(number) {
  while(number%2===0){
    number/=2;
  }
  for(i=3;i<number;i+=2){
    if(number%i===0){
      number/=i;
    }
  }
  alert(number);
}
function getNumber() {
  var x = document.getElementById("input");
  x = x.value;
  return x;
}