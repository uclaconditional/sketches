//invader code by Matthias Dorfelt
function matthiasInvader(){
    var size = 700;
    var u = size / 7.0;
    var bg = new Path.Rectangle([0, 0], [size, size]);
    bg.fillColor = "blue";
    var grp = null;

    window.setInterval(function()
    {   
        if(grp)
            grp.remove();
        
        grp = new Group();
            
        for (var x = 0; x < 3; x++) 
        {
            for (var y = 0; y < 5; y++) 
            {
                if (Math.random() < 0.5) 
                {
                    var rct = new Path.Rectangle([x * u, y * u], [u, u]);
                    var rct2 = new Path.Rectangle([size - (u * 3) - x * u, y * u], [u, u]);
                    grp.addChild(rct);
                    grp.addChild(rct2);
                }
            }
        }
        grp.fillColor = "white";
        grp.translate(u, u);
    }, 1000);
}

//invader code by Jurg Lehni
function jurgInvader(){
    var size = 700;
    var cell = new Size(size / 7);
    var bg = new Path.Rectangle({
        size: size,
        fillColor: 'blue'
    });
    var grp = null;
    var lastTime = 0
    view.onFrame = function(event) {
        if (event.time - lastTime >= 1) {
            lastTime = event.time;
            if(grp)
                grp.remove();
            grp = new Group();
            for (var x = 1; x < 4; x++) {
                for (var y = 1; y < 6; y++) {
                    if (Math.random() < 0.5) {
                        grp.addChild(new Shape.Rectangle(cell * [x, y], cell));
                        grp.addChild(new Shape.Rectangle(cell * [6 - x, y], cell));
                    }
                }
            }
            grp.fillColor = 'white';
        }
    }
}


