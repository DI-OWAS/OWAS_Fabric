`default_nettype none

// IHP sg13cmos5l versions of the generic clock buffer models in
// Fabric/models_pack.v. The ASIC tile synthesis (synthesis.py next to this
// file, run by LibreLane when hardening a tile) reads this file after the
// models pack and replaces the generic models with these.
// The instance names are matched by RSZ_DONT_TOUCH_RX in gds_config.yaml.

module clk_buf (
    input  wire A,
    output wire X
);
    sg13cmos5l_buf_8 clk_pass_buf (.A(A), .X(X));
endmodule

module clk_leaf_buf (
    input  wire A,
    output wire X
);
    sg13cmos5l_buf_4 clk_leaf_buf (.A(A), .X(X));
endmodule
