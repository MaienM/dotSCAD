use <unittest.scad>;
include <ring_extrude.scad>;

module test_ring_extrude(sections, angle) {
    if(angle == 360) {
        // ==== test_ring_extrude_closed ====
        expected = [[[52, 0, -10], [52, 0, 10], [48, 0, 10], [48, 0, -10]], [[51.8754, 11.0265, -9.73616], [49.8305, 10.5918, 10.1543], [45.9394, 9.76471, 9.73616], [47.9842, 10.1994, -10.1543]], [[49.3638, 21.9782, -9.36565], [45.5651, 20.2869, 10.1973], [41.9907, 18.6955, 9.36565], [45.7895, 20.3868, -10.1973]], [[44.4897, 32.3237, -8.89253], [39.4897, 28.6909, 10.1286], [36.412, 26.4549, 8.89253], [41.412, 30.0876, -10.1286]], [[37.4007, 41.5377, -8.32198], [31.9575, 35.4924, 9.94893], [29.5124, 32.7768, 8.32198], [34.9556, 38.8221, -9.94893]], [[28.366, 49.1314, -7.66025], [23.366, 40.4711, 9.66025], [21.634, 37.4711, 7.66025], [26.634, 46.1314, -9.66025]], [[17.7672, 54.6818, -6.9146], [14.1345, 43.5015, 9.26574], [13.1345, 40.4238, 6.9146], [16.7672, 51.6042, -9.26574]], [[6.08121, 57.8589, -6.09319], [4.68235, 44.5496, 8.76971], [4.37163, 41.5933, 6.09319], [5.7705, 54.9026, -8.76971]], [[-6.14311, 58.4478, -5.20502], [-4.58951, 43.6663, 8.1776], [-4.30974, 41.0044, 5.20502], [-5.86333, 55.7859, -8.1776]], [[-18.3141, 56.3651, -4.25982], [-13.3141, 40.9767, 7.49589], [-12.5876, 38.7406, 4.25982], [-17.5876, 54.129, -7.49589]], [[-29.8301, 51.6673, -3.26795], [-21.1699, 36.6673, 6.73205], [-20.1699, 34.9352, 3.26795], [-28.8301, 49.9352, -6.73205]], [[-40.1137, 44.5507, -2.24028], [-27.888, 30.9728, 5.89446], [-26.7994, 29.7637, 2.24028], [-39.025, 43.3417, -5.89446]], [[-48.6451, 35.3427, -1.18806], [-33.2566, 24.1624, 4.99228], [-32.2566, 23.4358, 1.18806], [-47.6451, 34.6162, -4.99228]], [[-54.993, 24.4844, -0.122822], [-37.1213, 16.5275, 4.03541], [-36.3616, 16.1892, 0.122822], [-54.2332, 24.1462, -4.03541]], [[-58.8398, 12.5068, 0.943759], [-39.384, 8.37132, 3.03433], [-38.975, 8.28439, -0.943759], [-58.4308, 12.4198, -3.03433]], [[-60, 0, 2], [-40, 0, 2], [-40, 0, -2], [-60, 0, -2]], [[-58.4308, -12.4198, 3.03433], [-38.975, -8.28439, 0.943759], [-39.384, -8.37132, -3.03433], [-58.8398, -12.5068, -0.943759]], [[-54.2332, -24.1462, 4.03541], [-36.3616, -16.1892, -0.122822], [-37.1213, -16.5275, -4.03541], [-54.993, -24.4844, 0.122822]], [[-47.6451, -34.6162, 4.99228], [-32.2566, -23.4358, -1.18806], [-33.2566, -24.1624, -4.99228], [-48.6451, -35.3427, 1.18806]], [[-39.025, -43.3417, 5.89446], [-26.7994, -29.7637, -2.24028], [-27.888, -30.9728, -5.89446], [-40.1137, -44.5507, 2.24028]], [[-28.8301, -49.9352, 6.73205], [-20.1699, -34.9352, -3.26795], [-21.1699, -36.6673, -6.73205], [-29.8301, -51.6673, 3.26795]], [[-17.5876, -54.129, 7.49589], [-12.5876, -38.7406, -4.25982], [-13.3141, -40.9767, -7.49589], [-18.3141, -56.3651, 4.25982]], [[-5.86333, -55.7859, 8.1776], [-4.30974, -41.0044, -5.20502], [-4.58951, -43.6663, -8.1776], [-6.14311, -58.4478, 5.20502]], [[5.7705, -54.9026, 8.76971], [4.37163, -41.5933, -6.09319], [4.68235, -44.5496, -8.76971], [6.08121, -57.8589, 6.09319]], [[16.7672, -51.6042, 9.26574], [13.1345, -40.4238, -6.9146], [14.1345, -43.5015, -9.26574], [17.7672, -54.6818, 6.9146]], [[26.634, -46.1314, 9.66025], [21.634, -37.4711, -7.66025], [23.366, -40.4711, -9.66025], [28.366, -49.1314, 7.66025]], [[34.9556, -38.8221, 9.94893], [29.5124, -32.7768, -8.32198], [31.9575, -35.4924, -9.94893], [37.4007, -41.5377, 8.32198]], [[41.412, -30.0876, 10.1286], [36.412, -26.4549, -8.89253], [39.4897, -28.6909, -10.1286], [44.4897, -32.3237, 8.89253]], [[45.7895, -20.3868, 10.1973], [41.9907, -18.6955, -9.36565], [45.5651, -20.2869, -10.1973], [49.3638, -21.9782, 9.36565]], [[47.9842, -10.1994, 10.1543], [45.9394, -9.76471, -9.73616], [49.8305, -10.5918, -10.1543], [51.8754, -11.0265, 9.73616]], [[48, 0, 10], [48, 0, -10], [52, 0, -10], [52, 0, 10]]];
        
        for(i = [0:len(expected) - 1]) {
            assertEqualPoints(expected[i], sections[i]);
        }
    }
    else {
        // ==== test_ring_extrude_not_closed ====
        expected = [[[52, 0, -10], [52, 0, 10], [48, 0, 10], [48, 0, -10]], [[50.9941, 10.8391, -10.6667], [50.9941, 10.8391, 10.6667], [46.8207, 9.95204, 10.6667], [46.8207, 9.95204, -10.6667]], [[47.748, 21.2588, -11.3333], [47.748, 21.2588, 11.3333], [43.6066, 19.4149, 11.3333], [43.6066, 19.4149, -11.3333]], [[42.3925, 30.7999, -12], [42.3925, 30.7999, 12], [38.5092, 27.9786, 12], [38.5092, 27.9786, -12]], [[35.1517, 39.0399, -12.6667], [35.1517, 39.0399, 12.6667], [31.7614, 35.2746, 12.6667], [31.7614, 35.2746, -12.6667]], [[26.3333, 45.6107, -13.3333], [26.3333, 45.6107, 13.3333], [23.6667, 40.9919, 13.3333], [23.6667, 40.9919, -13.3333]], [[16.3161, 50.2158, -14], [16.3161, 50.2158, 14], [14.5856, 44.8899, 14], [14.5856, 44.8899, -14]], [[5.53304, 52.6434, -14.6667], [5.53304, 52.6434, 14.6667], [4.91981, 46.8088, 14.6667], [4.91981, 46.8088, -14.6667]], [[-5.54698, 52.776, -15.3333], [-5.54698, 52.776, 15.3333], [-4.90587, 46.6762, 15.3333], [-4.90587, 46.6762, -15.3333]], [[-16.4397, 50.5962, -16], [-16.4397, 50.5962, 16], [-14.462, 44.5094, 16], [-14.462, 44.5094, -16]], [[-26.6667, 46.188, -16.6667], [-26.6667, 46.188, 16.6667], [-23.3333, 40.4145, 16.6667], [-23.3333, 40.4145, -16.6667]], [[-35.7762, 39.7335, -17.3333], [-35.7762, 39.7335, 17.3333], [-31.1369, 34.581, 17.3333], [-31.1369, 34.581, -17.3333]], [[-43.3633, 31.5053, -18], [-43.3633, 31.5053, 18], [-37.5384, 27.2732, 18], [-37.5384, 27.2732, -18]], [[-49.0878, 21.8553, -18.6667], [-49.0878, 21.8553, 18.6667], [-42.2667, 18.8183, 18.6667], [-42.2667, 18.8183, -18.6667]], [[-52.6896, 11.1995, -19.3333], [-52.6896, 11.1995, 19.3333], [-45.1252, 9.59166, 19.3333], [-45.1252, 9.59166, -19.3333]], [[-54, 0, -20], [-54, 0, 20], [-46, 0, 20], [-46, 0, -20]]];
    
        for(i = [0:len(expected) - 1]) {
            assertEqualPoints(expected[i], sections[i]);
        }
    }
}

module test_ring_extrude_closed() {
    echo("==== test_ring_extrude_closed ====");

    shape_pts = [
        [2, -10],
        [2, 10],
        [-2, 10],
        [-2, -10]
    ];

    ring_extrude(shape_pts, radius = 50, twist = 180);
}

module test_ring_extrude_not_closed() {
    echo("==== test_ring_extrude_not_closed ====");

    shape_pts = [
        [2, -10],
        [2, 10],
        [-2, 10],
        [-2, -10]
    ];

    ring_extrude(shape_pts, radius = 50, angle = 180);
    ring_extrude(shape_pts, radius = 50, angle = 180, scale = 2);
}


test_ring_extrude_closed();
test_ring_extrude_not_closed();