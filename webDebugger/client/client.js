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

  // document.querySelector(`#heap ol li:nth-child(${ memory.inPtr + 1 })`).className += ' highlighted';

  let registers = [];
  Object.keys(memory.registers)
    .forEach((key) => {
      registers.push(memory.registers[key]);
    });
  loadArray('registers', registers);

  loadArray('stack', memory.stack);
}

function loadArray(id, array) {
  // const area = document.getElementById(id);
  // while (area.firstChild) {
  //   area.removeChild(area.firstChild);
  // }
  // const list = document.createElement('ol');
  // list.start = '0';
  // array.forEach((arrayItem) => {
  //   let item = document.createElement('li');
  //   item.innerText = arrayItem;    
  //   list.appendChild(item);
  // });
  // area.appendChild(list);
}

document.addEventListener('keypress', (e) => {
  if (e.key === 'o') {
    //Step
    socket.emit('step');
  } else if (e.key === 'p') {
    //Continue
  }
});