// My Solution

function sumTwoSmallestNumbers(numbers) {  
    let func = function() {
        return parseInt(numbers.splice(numbers.indexOf(numbers.reduce((min, c) => {
            if (c < min) return c;
            return min;
        })), 1));
    }
    
    return [func(numbers), func(numbers)].reduce((a, c) => a + c);
}

// Best CodeWars Solution
function sumTwoSmallestNumbers(numbers){  
    numbers = numbers.sort((a, b) => a - b);
    return numbers[0] + numbers[1];
};