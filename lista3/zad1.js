//Zadanie 1
function sum() {
    var result = 0;
    for (let x of arguments)
        result += x;
    console.log(result);
}
console.log("ZADANIE 1");
sum(2,3,4,5);

//Zadanie 2
function* liczby(n) {
    var index = 0;
    while (index < n)
        yield index++;
}
console.log("ZADANIE 2");
for (let x of liczby(10))
    console.log(x);

//Zadanie 2a
function* dzielnik(n) {
    var index = 1;
    while (index < n) {
        if (n % index == 0)
            yield index;
        index++;
    }
}
console.log("ZADANIE 2a");
for (let x of dzielnik(20))
    console.log(x);

//Zadanie 2b
function isFirst(x) {
    if(x<2)
        return false;
    for (let index = 2; index*index<=x; index++) {
        if (x % index == 0)
            return false;
    }
    return true;
}

function* pierwsze(n) {
    var index = 2;
    while (index < n) {
        if (isFirst(index))
            yield index;
        index++;
    }
}
console.log("ZADANIE 2b");
for (let x of pierwsze(10))
    console.log(x);

//Zadanie 2c
// function* elements(selector) 
// {
//     let index = 0;
//     const elements = document.querySelectorAll(selector);
//     while (index < elements.length - 1)
//     {
//         index++;
//         yield(elements[index]);
//     }
// }
// console.log("ZADANIE 2c");
// for (let element of elements('div'))
//     console.log(element)


//Zadanie 3
function Zadanie3()
{
    let index = 0;
    while (index < n) 
    {
        index++;
        let digits = String(index).split('').map(char => parseInt(char));
        let digitsSum = digits.reduce((a, b) => a + b, 0);
        if (index % digitsSum === 0 && dividesByDigits(index, digits)) 
            yield(index);
    }
}
console.log("ZADANIE 3");
for (let x of Zadanie3(1000))
    console.log(x);