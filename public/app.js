function something() {
    var x = window.localStorage.getItem('bla');
    x = x * 1 + 1;
    window.localStorage.setItem('bla', x);

    alert(x);
};

function add_to_cart(id) {
    var k = "product_" + id
    var x = window.localStorage.getItem(k);
    x = x * 1 + 1;
    window.localStorage.setItem(k, x);
    for (var i = 0, len = localStorage.length; i < len; i++) {
        var key = localStorage.key(i);
        var value = localStorage[key];
        alert(key + " => " + value);
    }
};