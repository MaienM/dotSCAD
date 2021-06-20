use <sf_solidify.scad>;
use <util/sum.scad>;

module sf_thicken(points, thickness, direction = undef, slicing = "SLASH") {
    function tri_normal(tri) =
        let(v = cross(tri[2] - tri[0], tri[1] - tri[0])) v / norm(v);    

    function vertex_normal(sf, xi, yi) = 
        let(
            xy = [xi, yi],
            // clockwise
            vi = [for(coord_offset = [[1, 0], [0, -1], [-1, 0], [0, 1]]) coord_offset + xy],
            normals = [
                for(i = [0:3])
                let(
                    vi0 = xy,
                    vi1 = vi[i],
                    vi2 = vi[(i + 1) % 4],
                    v1 = sf[vi0[1]][vi0[0]], 
                    v2 = sf[vi1[1]][vi1[0]], 
                    v3 = sf[vi2[1]][vi2[0]]
                )
                if(v1 != undef && v2 != undef && v3 != undef) 
                    tri_normal([v1, v2, v3])
            ]
        )
        sum(normals) / len(normals);

    if(direction == undef) {
        vertex_normals = [
            for(y = [0:len(points) - 1])
            [
                for(x = [0:len(points[0]) - 1])
                    vertex_normal(points, x, y)
            ]
        ];        
        half_thickness = thickness / 2;
        surface_top = points + half_thickness * vertex_normals;
        surface_bottom = points - half_thickness * vertex_normals;    
        sf_solidify(surface_top, surface_bottom, slicing);
    }
    else {
        dir_v = direction / norm(direction);
        sf = points + thickness * [
            for(y = [0:len(points) - 1])
            [
                for(x = [0:len(points[0]) - 1])
                    dir_v
            ]
        ];
        sf_solidify(points, sf, slicing);
    }
}

/*
use <surface/sf_thicken.scad>;

function f(x, y) = 
	30 * (
		cos(sqrt(pow(x, 2) + pow(y, 2))) + 
		cos(3 * sqrt(pow(x, 2) + pow(y, 2)))
	);

thickness = 3;
min_value =  -200;
max_value = 200;
resolution = 10;

surface1 = [
    for(y = [min_value:resolution:max_value])
        [
            for(x = [min_value:resolution:max_value]) 
                [x, y, f(x, y) + 100]
        ]
];
sf_thicken(surface1, thickness);
*/