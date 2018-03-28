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

  let registers = [];
  Object.keys(memory.registers)
    .forEach((key) => {
      registers.push(memory.registers[key]);
    });
  loadArray('registers', registers);

  loadArray('stack', memory.stack);
}

function loadArray(id, array) {
  const area = document.getElementById(id);
  const list = document.createElement('ol');
  list.start = '0';
  array.forEach((arrayItem) => {
    let item = document.createElement('li');
    item.innerText = arrayItem;    
    list.appendChild(item);
  });
  area.appendChild(list);
}