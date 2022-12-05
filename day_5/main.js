const fs = require('fs');
const readline = require('readline');

class Stack {
    constructor(stackList) {
        this.myStack = [];
        for (let teu of stackList) {
            this.myStack.push(teu);
        }
    }

    push(teu) {
        this.myStack.push(teu);
    }

    pop() {
        return this.myStack.pop();
    }

    disp() {
        console.log(this.myStack);
    }
}

input_file = "input.txt"
stack_1 = new Stack(["F","T","N","Z","M","G","H","J"].reverse())
stack_2 = new Stack(["J","W","V"].reverse())
stack_3 = new Stack(["H","T","B","J","L","V","G"].reverse())
stack_4 = new Stack(["L","V","D","C","N","J","P","B"].reverse())
stack_5 = new Stack(["G","R","P","M","S","W","F"].reverse())
stack_6 = new Stack(["M","V","N","B","F","C","H","G"].reverse())
stack_7 = new Stack(["R","M","G","H","D"].reverse())
stack_8 = new Stack(["D","Z","V","M","N","H"].reverse())
stack_9 = new Stack(["H","F","N","G"].reverse())

const dockyard = {1: stack_1, 
             2: stack_2,
             3: stack_3,
             4: stack_4,
             5: stack_5,
             6: stack_6,
             7: stack_7,
             8: stack_8,
             9: stack_9};


function parse_line(line){
    tokens = line.split(' ');
    // console.log(`Count:${tokens[1]} Source:${tokens[3]} Dest:${tokens[5]}`)
    return ([tokens[1], tokens[3], tokens[5]]);
}

function move_teus_9000(count, source, dest){
    for(var i=0; i < parseInt(count); i++){
        console.log(`Count:${count} Source:${source} Dest:${dest}`)
        var teu = dockyard[parseInt(source)].pop();
        console.log(`${source}`);
        dockyard[parseInt(dest)].push(teu);
    }
}

function move_teus_9001(count, source, dest){
    var teus = []
    for(var i=0; i < parseInt(count); i++){
        console.log(`Count:${count} Source:${source} Dest:${dest}`)
        teus.push(dockyard[parseInt(source)].pop());
    }
    for(var i=0; i < parseInt(count); i++){
        dockyard[parseInt(dest)].push(teus.pop());
    }
}


const input = fs.readFileSync(input_file, 'utf-8');

input.split(/\r?\n/).forEach(line =>{move_teus_9001.apply(this, parse_line(line))});

for(const [key, value] of Object.entries(dockyard)){
    // value.disp();
    console.log(value.pop())
}
