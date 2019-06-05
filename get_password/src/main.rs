extern crate base64;
extern crate crypto;

//use std::process::{Command, Stdio};
use crypto::digest::Digest;
use crypto::sha1::Sha1;
use std::io::{self, Write};

fn main() {
    let data = std::env::args().nth(1).expect("You need pass command arg");
    //let mut data = String::new();
    //io::stdin()
    //    .read_to_string(&mut data)
    //    .expect("can't read to string");

    let mut sha1 = Sha1::new();
    sha1.input_str(&data);
    let size = sha1.output_bytes();

    let mut vec = Vec::with_capacity(size);
    vec.resize(20, 0);
    let mut bytes = vec.into_boxed_slice();
    sha1.result(&mut bytes);

    let mut result = base64::encode(&bytes);

    result.retain(|ch| ch != '+' && ch != '\\' && ch != '/' && ch != '=');
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
