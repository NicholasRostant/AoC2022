use std::fs::File;
use std::io::{self, BufRead};
use std::path::Path;



fn star1 () {
    let mut input: Vec<String> = Vec::new();

    if let Ok(lines) = read_lines("./input.txt") {
        for line in lines {
            if let Ok(ln) = line {
                // println!("{}", ln);
                input.push(ln);
            }
        }
    }

    for line in input {
        println!("{}", line);
    }

}


// Borrowed from the rust docs, returns an Iterator for input lines wrapped in a Result
fn read_lines<P>(filename: P) -> io::Result<io::Lines<io::BufReader<File>>>
where P: AsRef<Path>, {
    let file = File::open(filename)?;
    Ok(io::BufReader::new(file).lines())
}


fn main () {
    star1();
}