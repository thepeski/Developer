arr = [];
arr.push('a');
arr.pop()
// console.log(arr);

let nums = [1, 2, 3];
let nums2 = nums;
nums.push(4);
// console.log(nums2);

let someObject = {
    val1: 'valOne',
    val2: 'val2'
};

console.log(someObject.val1);

function rollDie() {
    let roll = Math.floor(Math.random() * 6) + 1;
    console.log(`Rolled: ${roll}`)
}

rollDie();
rollDie();

function verifyBetween(a, b) {
    return function(x) {
        return a < x && x < b;
    }
}

twoFour = verifyBetween(2, 4);
console.log(twoFour(4));