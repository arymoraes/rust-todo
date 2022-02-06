#[get("/")]
pub fn index() -> &'static str {
    "Hello, world!"
}

#[get("/filho")]
pub fn filho_gordo() -> &'static str {
    "Hello, filho voce ta gordo!"
}
