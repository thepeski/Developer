// My Solution

function dataReverse(data) {
    let a = []
    let b = []
      
    for (let i = 0; i < data.length; i += 8) {
        a.push(data.slice(i, i + 8))
    }
      
    a = a.reverse();
      
    for (i of a) {
        for (j of i) {
            b.push(j);
        }
    } 
    return b;
}

// Best CodeWars Solution

const dataReverse = function(data) {
    let bytes = [];
    for (let i = 0; i < data.length; i += 8) {
      bytes.unshift(...data.slice(i, i + 8));
    }
    return bytes;
  };