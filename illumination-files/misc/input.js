function Input() {
	this.up = false;
	this.down = false;
	this.left = false;
    this.right = false;
    this.a = false;
    this.s = false;
    this.d = false;
    this.w = false;
    this.f = false;

    // -------------------------------------------------------------------------
    function onKeyUp(e) {
        if (e.key == "ArrowUp") { this.up = false; }
        if (e.key == "ArrowDown") { this.down = false; }
        if (e.key == "ArrowLeft") { this.left = false; }
        if (e.key == "ArrowRight") { this.right = false; }
        if (e.key == "a") { this.a = false; }
        if (e.key == "s") { this.s = false; }
        if (e.key == "d") { this.d = false; }
        if (e.key == "f") { this.f = false; }
        if (e.key == "w") { this.w = false; }
    }

    // -------------------------------------------------------------------------
    function onKeyDown(e) {
        if (e.key == "ArrowUp") { this.up = true; }
        if (e.key == "ArrowDown") { this.down = true; }
        if (e.key == "ArrowLeft") { this.left = true; }
        if (e.key == "ArrowRight") { this.right = true; }
        if (e.key == "a") { this.a = true; }
        if (e.key == "s") { this.s = true; }
        if (e.key == "d") { this.d = true; }
        if (e.key == "f") { this.f = true; }
        if (e.key == "w") { this.w = true; }
    }
    // --------------------------------------------------------------------------
    function onKeyUp(appInput) {
        if (appInput.key == "ArrowUp") { this.up = false; }
        if (appInput.key == "ArrowDown") { this.down = false; }
        if (appInput.key == "ArrowLeft") { this.left = false; }
        if (appInput.key == "ArrowRight") { this.right = false; }
        if (appInput.key == "a") { this.a = false; }
        if (appInput.key== "s") { this.s = false; }
        if (appInput.key == "d") { this.d = false; }
        if (appInput.key == "f") { this.f = false; }
        if (appInput.key == "w") { this.w = false; }
    }


    //---------------------------------------
	window.addEventListener('keydown', onKeyDown.bind(this));
    window.addEventListener('keyup', onKeyUp.bind(this));
}

// EOF 00100001-10