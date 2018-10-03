const users = [
    {
      name: 'Jeff',
      age: 52,
      gender: 'male'
    },
    {
      name: 'Andy',
      age: 25,
      gender: 'male'
    },
    {
      name: 'Sarah',
      age: 30,
      gender: 'female'
    },
    {
      name: 'Phoebe',
      age: 21,
      gender: 'female'
    },
    {
      name: 'Doris',
      age: 81,
      gender: 'female'
    }
];
let rightMen = users.filter(u=>u.name.substr(0,1) === 'A' && u.gender === 'male');
console.log(rightMen.reduce((acc,v)=>acc+v.age,0));
