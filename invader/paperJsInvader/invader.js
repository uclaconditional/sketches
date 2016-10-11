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