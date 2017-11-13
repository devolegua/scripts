#![feature(string_retain)]

extern crate crypto;
extern crate base64;

//use std::process::{Command, Stdio};
use std::io::{self, Write};
use crypto::sha1::Sha1;
use crypto::digest::Digest;


fn main() {
    let data = std::env::args().nth(1).expect("You need pass command arg");
    //let mut data = String::new();
    //io::stdin()
    //    .read_to_string(&mut data)
    //    .expect("can't read to string");

    let mut s1 = Sha1::new();
    s1.input_str(&data);
    let size = s1.output_bytes();
    
    let mut vec = Vec::with_capacity(size);
    vec.resize(20, 0);
    let mut bytes = vec.into_boxed_slice();
    s1.result(&mut bytes);

    let mut result = base64::encode(&bytes);

    result.retain(|ch| ch != '+' && ch != '\\' && ch != '=');
    result.truncate(16);

    io::stdout()
        .write_all(result.as_bytes())
        .expect("Can't write to stdout");

    //let encode = Command::new("openssl")
    //    .arg("dgst")
    //    .arg("-binary")
    //    .arg("-sha1")
    //    .stdin(Stdio::inherit())
    //    .stdout(Stdio::piped())
    //    .spawn()
    //    .expect("Can't start `openssl dgst`");

    //let base64 = Command::new("openssl")
    //    .arg("base64")
    //    .stdin(encode.stdout.expect("`openssl dgst` has no stdout"))
    //    .stdout(Stdio::piped())
    //    .spawn()
    //    .expect("Can't start `openssl base64`");

    //Command::new("sed")
    //    .arg("s/[+=\\/]//g")
    //    .stdin(base64.stdout.expect("`openssl base64` has no stdout"))
    //    .stdout(Stdio::inherit())
    //    .spawn()
    //    .expect("Can't start `sed`")
    //    .wait()
    //    .expect("Can't wait fucking `sed`");
}
