module alu4 (
    input  [3:0] A,
    input  [3:0] B,
    input  [2:0] opcode,
    output reg [3:0] Y,
    output reg carry
);

always @(*) begin
    Y = 4'b0000;
    carry = 1'b0;

    case (opcode)
        3'b000: {carry, Y} = {1'b0, A} + {1'b0, B};
        3'b001: Y = A - B;
        3'b010: Y = A & B;
        3'b011: Y = A | B;
        3'b100: Y = A ^ B;
        3'b101: Y = ~A;
        default: Y = 4'b0000;
    endcase
end

endmodule
