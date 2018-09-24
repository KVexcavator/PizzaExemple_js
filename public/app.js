function something() {
    var x = window.localStorage.getItem('bla');
    x = x * 1 + 1;
    window.localStorage.setItem('bla', x);

    alert(x);
};