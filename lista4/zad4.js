function licz() {
    var count = 0;
    var lista = Array.from(document.getElementsByTagName("a"));
    for (let x of lista)
        count++;
    console.log( count);
}

function liczModyfied() {
    var result = [];
    var lista = Array.from(document.getElementsByTagName("a"));
    for (let x of lista)
        consolelog([x.href, x.innerHTML]);
        // result.push([x.href, x.innerHTML]);
}

function artybutySrc() {
    var result = [];
    var lista = Array.from(document.getElementsByTagName("img"));
    for (let x of lista)
        console.log(x.attributes.src.nodeValue);
        // result.push(x.attributes.src.nodeValue);
}