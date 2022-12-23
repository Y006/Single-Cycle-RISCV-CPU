module memory (
    input  [0 :4] I_address,
    output [31:0] O_data
);
    reg [31:0] mem [0:4];

    initial begin
        $readmemh("memory_data.txt", mem);
    end

    assign O_data = mem[I_address];

endmodule