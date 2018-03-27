let memory = {};
const socket = io();
socket.on('state', (memory) => {
  setState(memory);
  updateUI();
});

function setState(state) {
  memory = state;
}

function updateUI() {
  let heap = [];
  Object.keys(memory.heap)
    .forEach((key) =>
      heap.push(memory.heap[key])
    );
  loadArray('heap', heap);
}

function loadArray(id, array) {
  const area = document.getElementById('heap');
  array.forEach((arrayItem) => {
    let item = document.createElement('p');
    item.innerText = arrayItem;    
    area.appendChild(item);
  });
}