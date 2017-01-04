use std::io;

fn permute(left: i16, right: i16) -> u64{    
    if left == 0 && right == 0 {
        return 1;
    }

    if left < 0 || right < 0 {
        return 0;
    }

    return permute(left - 1, right + 1) + permute(left, right - 1);
}

fn main() {
    let mut count = String::new();

    println!("Input the number of permutations:");

    io::stdin().read_line(&mut count)
        .expect("Failed to read line");

    let count: i16 = count.trim().parse()
        .expect("Please input a number");

    println!("permutations: {}", permute(count, 0));
}
