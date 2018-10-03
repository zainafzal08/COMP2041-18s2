const cart = [
  {
    name: 'Apple',
    cost: 2.30
  },
  {
    name: 'Orange',
    cost: 4.50
  },
  {
    name: 'Apple',
    cost: 2.30
  },
  {
    name: 'Strawberry',
    cost: 6.70
  },
  {
    name: 'Orange',
    cost: 4.50
  }
];

function countCart(cart) {
  const count = {};
  for(let item of cart) {
    count[item.name] === undefined ? count[item.name] = 1 : count[item.name]++;
  }
  for(let item of Object.keys(count).sort((a,b)=>a>b)) {
    console.log(item,count[item]);
  }
}

countCart(cart);
