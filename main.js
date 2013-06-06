(function(factory) {
    // Module systems magic dance.

    if (typeof require === "function" && typeof exports === "object" && typeof module === "object") {
        // CommonJS or Node: hard-coded dependency on "app"
        factory(require("app"));
    } else if (typeof define === "function" && define["amd"]) {
        // AMD anonymous module with hard-coded dependency on "app"
        if (app) {
            factory(app);
        } else {
            define(["node_modules/app"], factory);
        }
    } else {
        // <script> tag: use the global `app` object
        factory(app);
    }
}(function(app) {

    document.getElementById('selectAll').addEventListener("click",selectAll);
    document.getElementById('json').addEventListener("click",jsonGen);
    document.getElementById('tsql').addEventListener("click",tsqlGen);

    function jsonGen(){
        app.reporter = app.jsonReporter;
        generate();
    }

    function tsqlGen(){
        app.reporter = app.sqlServerReporter;
        generate();
    }
    function reset(){
        document.getElementById('output').innerHTML = "";
        document.getElementById('stats').innerHTML = "";
    }
    function generate() {
        reset();
        app.reporter.initialize();

        var zzaGenerator = new app.ZzaGenerator();
        zzaGenerator.makeCustomerOrders(); // Optional integer param limits number of customers
        app.toOutput("");

        var statsOut = app.statsOut;
        statsOut("\n=== STATS ===");
        statsOut(JSON.stringify(app.reporter.stats, null, 2));
    }

    function selectAll(){
        var range = document.createRange();
        range.selectNodeContents(document.getElementById('container'));
        var sel = window.getSelection();
        sel.removeAllRanges();
        sel.addRange(range);
    }

}));