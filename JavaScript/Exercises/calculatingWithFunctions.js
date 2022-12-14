// My Solution

function create(n) {
    return function(a) {
      if (a === undefined) return n;
      switch (a[0]) {
          case 0: return n + a[1];
          case 1: return n - a[1];
          case 2: return n * a[1];
          case 3: return Math.floor(n / a[1]);
      }  
    }
  }
  
  function ops(x) {
    return function(a) {
      return [x, a];
    }
  }
  
  let zero = create(0);
  let one = create(1);
  let two = create(2);
  let three = create(3);
  let four = create(4);
  let five = create(5);
  let six = create(6);
  let seven = create(7);
  let eight = create(8);
  let nine = create(9);
  
  let plus = ops(0);
  let minus = ops(1);
  let times = ops(2);
  let dividedBy = ops(3);

  // Best CodeWars Solution
  'zero one two three four five six seven eight nine'.split(' ').forEach(
    (mth, num) => this[mth] = (f = val => val) => f(num) 
  )
  
  let plus2 = (r) => (l) => l + r
  let minus2 = (r) => (l) => l - r
  let times2 = (r) => (l) => l * r
  let dividedBy2 = (r) => (l) => l / r