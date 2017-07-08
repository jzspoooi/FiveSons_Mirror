/**
 * This module takes 2-bit input (the information of a point on game board) and a 4-bit select
 * signal (the y-coordinate of a point). According to the given y-coordinate, store the given
 * information into the corresponding PointInfor block.
 */
module Y_Coordinate_Select_Write(in, select, out, clock, reset);
    input [1:0] in; // input data
    input [3:0] select; // 4-bit select signal which stands for the y-coordinate of a point
    input clock, reset; // clock and reset signal
    //16 different 2-bit output line of 16 different PointInfor block in a row
    output reg [31:0] out;
    //16 different 2-bit input line for 16 different PointInfor block in a row
    reg [31:0] point_in;

    //According to te select signal, put the input data to the right input line
    Select1to16(.in(in), .select(select), .out(point_in));
 
    //the PointInfor block whose y-coordinate is 0
    PointInfor point0(.d(point_in[1:0]), .clock(clock), .reset(reset), .q(out[1:0]));
    //the PointInfor block whose y-coordinate is 1
    PointInfor point1(.d(point_in[3:2]), .clock(clock), .reset(reset), .q(out[3:2]));
    //the PointInfor block whose y-coordinate is 2
    PointInfor point2(.d(point_in[5:4]), .clock(clock), .reset(reset), .q(out[5:4]));
    //the PointInfor block whose y-coordinate is 3
    PointInfor point3(.d(point_in[7:6]), .clock(clock), .reset(reset), .q(out[7:6]));
    //the PointInfor block whose y-coordinate is 4
    PointInfor point4(.d(point_in[9:8]), .clock(clock), .reset(reset), .q(out[9:8]));
    //the PointInfor block whose y-coordinate is 5
    PointInfor point5(.d(point_in[11:10]), .clock(clock), .reset(reset), .q(out[11:10]));
    //the PointInfor block whose y-coordinate is 6
    PointInfor point6(.d(point_in[13:12]), .clock(clock), .reset(reset), .q(out[13:12]));
    //the PointInfor block whose y-coordinate is 7
    PointInfor point7(.d(point_in[15:14]), .clock(clock), .reset(reset), .q(out[15:14]));
    //the PointInfor block whose y-coordinate is 8
    PointInfor point8(.d(point_in[17:16]), .clock(clock), .reset(reset), .q(out[17:16]));
    //the PointInfor block whose y-coordinate is 9
    PointInfor point9(.d(point_in[19:18]), .clock(clock), .reset(reset), .q(out[19:18]));
    //the PointInfor block whose y-coordinate is 10
    PointInfor point10(.d(point_in[21:20]), .clock(clock), .reset(reset), .q(out[21:20]));
    //the PointInfor block whose y-coordinate is 11
    PointInfor point11(.d(point_in[23:22]), .clock(clock), .reset(reset), .q(out[23:22]));
    //the PointInfor block whose y-coordinate is 12
    PointInfor point12(.d(point_in[25:24]), .clock(clock), .reset(reset), .q(out[25:24]));
    //the PointInfor block whose y-coordinate is 13
    PointInfor point13(.d(point_in[27:26]), .clock(clock), .reset(reset), .q(out[27:26]));
    //the PointInfor block whose y-coordinate is 14
    PointInfor point14(.d(point_in[29:28]), .clock(clock), .reset(reset), .q(out[29:28]));
    //the PointInfor block whose y-coordinate is 15
    PointInfor point15(.d(point_in[31:30]), .clock(clock), .reset(reset), .q(out[31:30]));

endmodule
