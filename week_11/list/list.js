'use strict';

// this is one way to avoid populating the global scope
// and immediately run a script.
(function() {
  const shopping = [
      'Apple',
      'Orange',
      'Strawberry',
      'Bananas',
      'Sausages',
      'Tissues',
      'Ice Cream',
      'Mcdonalds Coffee'
  ];
  const root = document.createElement("ol");
  for(let item of shopping) {
    const li = document.createElement("li");
    li.innerText = item;
    root.appendChild(li);
  }
  document.body.appendChild(root);
  set
})();
