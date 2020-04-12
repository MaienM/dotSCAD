use <experimental/_impl/_lsystem2_impl.scad>;
use <turtle/turtle2d.scad>;

function lsystem2(rule, n, angle, leng = 1, heading = 0, start = [0, 0], forward_chars = "F") =
    let(
        derived = derive(rule, n),
        replaced = _join([
            for(c = derived)
            let(idx = search(c, forward_chars))
            idx == [] ? c : "F"
        ]),
        cmds = [
            for(s = replaced) 
            let(c = cmd(s, [leng, angle]))
            if(c != []) c
        ]
    )
    _lines(
        turtle2d("create", start[0], start[0], heading), 
        cmds
    );