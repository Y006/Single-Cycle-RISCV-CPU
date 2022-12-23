module tb_memory;

reg  [0 :4] I_address;
wire [31:0] O_data;

memory U_memory
(
    .I_address  (I_address),
    .O_data     (O_data)
);

initial begin
    $display("地址\t数据");
    for (integer i = 0; i < 5; i++) begin
        I_address = i;
        $display("0x%0h\t%h",I_address,O_data);
    end
end

endmodule