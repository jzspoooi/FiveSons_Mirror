`define MEMORY_SIZE_BITS 14

`define BOARD_WIDTH 16
`define BOARD_HEIGHT `BOARD_WIDTH

`define BOARD_SIZE (`BOARD_HEIGHT * `BOARD_WIDTH)

`define BOARD_WIDTH_BITS 4
`define BOARD_HEIGHT_BITS 4

`define CHESS_STATUS_BITS 2
`define CHESS_WITH_NONE 	2'd0
`define CHESS_WITH_BLACK 	2'd1
`define CHESS_WITH_BLUE 	2'd2
`define CHESS_WITH_WIN 		2'd3


`define POINTER_BITS 8

`define WINNING_STATUS_BITS 2
`define WINNING_BLACK 	2'b10
`define WINNING_BLUE 	2'b11
`define WINNING_EQUAL 	2'b01
`define WINNING_GAMING 	2'b00



`define LATTICE_STATUS_BITS 2

`define LATTICE_PIXEL_WIDTH (`SCR_WIDTH / `BOARD_WIDTH)
`define LATTICE_PIXEL_HEIGHT (`SCR_HEIGHT / `BOARD_HEIGHT)


`define MAP_BOARDXY_BOARDCO(x,y) ( y * `CHESS_STATUS_BITS * `BOARD_WIDTH + x * `CHESS_STATUS_BITS)
`define MAP_BOARDXCO_PIXELXCOSTART(x) (x * `LATTICE_PIXEL_WIDTH)
`define MAP_BOARDYCO_PIXELYCOSTART(y) (y * `LATTICE_PIXEL_HEIGHT)
`define MAP_BOARDXCO_PIXELXCOEND(x) ((x+1) * `LATTICE_PIXEL_WIDTH)
`define MAP_BOARDYCO_PIXELYCOEND(y) ((y+1) * `LATTICE_PIXEL_HEIGHT)
`define MAP_POINTERCO_PIXELCO(x) (x * `COLOR_SIZE)
`define MAP_POINTERCO_PIXELCOEND(x) ((x+1) * `COLOR_SIZE)

`define MAP_PIXELCO_MEMADDR(x, y) (x + y * `SCR_WIDTH)


`define COOR_MAPPING_TO_PIXEL(x, y)  

`define SCR_HEIGHT 112
`define SCR_WIDTH `SCR_HEIGHT

`define SCR_HEIGHT_BITS 7
`define SCR_WIDTH_BTIS `SCR_HEIGHT_BITS


`define MEM_ADDR_START 0

`define COLOR_SIZE 3


`define ADDR_SIZE 14


`define COOR_TO_OFFSET(x, y) (x + (y * `SCR_WIDTH))