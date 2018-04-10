
module FA_47 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   net2394, net17956, net17848, net17146, n3, n4, n5;
  assign Co = net2394;

  NAND2_X1 U1 ( .A1(Ci), .A2(n5), .ZN(n4) );
  NAND2_X1 U2 ( .A1(n4), .A2(net17146), .ZN(net2394) );
  INV_X1 U3 ( .A(n3), .ZN(n5) );
  XNOR2_X1 U4 ( .A(Ci), .B(n3), .ZN(S) );
  XNOR2_X1 U5 ( .A(B), .B(A), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(B), .Z(net17956) );
  CLKBUF_X1 U7 ( .A(A), .Z(net17848) );
  NAND2_X1 U8 ( .A1(net17848), .A2(net17956), .ZN(net17146) );
endmodule


module FA_46 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   net2391, n3, n4, n5, n6, n7;
  assign Co = net2391;

  CLKBUF_X1 U1 ( .A(n4), .Z(n3) );
  NAND2_X1 U2 ( .A1(Ci), .A2(n7), .ZN(n6) );
  NAND2_X1 U3 ( .A1(n6), .A2(n5), .ZN(net2391) );
  INV_X1 U4 ( .A(n4), .ZN(n7) );
  XNOR2_X1 U5 ( .A(Ci), .B(n3), .ZN(S) );
  XNOR2_X1 U6 ( .A(A), .B(B), .ZN(n4) );
  NAND2_X1 U7 ( .A1(A), .A2(B), .ZN(n5) );
endmodule


module FA_45 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   net2388, n3, n4, n5, n6;
  assign Co = net2388;

  NAND2_X1 U1 ( .A1(Ci), .A2(n6), .ZN(n5) );
  NAND2_X1 U2 ( .A1(n5), .A2(n4), .ZN(net2388) );
  INV_X1 U3 ( .A(n3), .ZN(n6) );
  XNOR2_X1 U4 ( .A(Ci), .B(n3), .ZN(S) );
  XNOR2_X1 U5 ( .A(A), .B(B), .ZN(n3) );
  NAND2_X1 U6 ( .A1(A), .A2(B), .ZN(n4) );
endmodule


module FA_44 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   net2385, net17135, net17134, n3, n4;
  assign Co = net2385;

  NAND2_X1 U1 ( .A1(Ci), .A2(n4), .ZN(net17135) );
  NAND2_X1 U2 ( .A1(net17135), .A2(net17134), .ZN(net2385) );
  INV_X1 U3 ( .A(n3), .ZN(n4) );
  XNOR2_X1 U4 ( .A(Ci), .B(n3), .ZN(S) );
  XNOR2_X1 U5 ( .A(A), .B(B), .ZN(n3) );
  NAND2_X1 U6 ( .A1(A), .A2(B), .ZN(net17134) );
endmodule


module FA_43 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   net2382, n3, n4, n5, n6;
  assign Co = net2382;

  NAND2_X1 U1 ( .A1(Ci), .A2(n6), .ZN(n5) );
  NAND2_X1 U2 ( .A1(n5), .A2(n4), .ZN(net2382) );
  INV_X1 U3 ( .A(n3), .ZN(n6) );
  XNOR2_X1 U4 ( .A(Ci), .B(n3), .ZN(S) );
  XNOR2_X1 U5 ( .A(A), .B(B), .ZN(n3) );
  NAND2_X1 U6 ( .A1(A), .A2(B), .ZN(n4) );
endmodule


module FA_42 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   net2379, n3, n4, n5, n6;
  assign Co = net2379;

  NAND2_X1 U1 ( .A1(Ci), .A2(n6), .ZN(n5) );
  NAND2_X1 U2 ( .A1(n5), .A2(n4), .ZN(net2379) );
  INV_X1 U3 ( .A(n3), .ZN(n6) );
  XNOR2_X1 U4 ( .A(Ci), .B(n3), .ZN(S) );
  XNOR2_X1 U5 ( .A(A), .B(B), .ZN(n3) );
  NAND2_X1 U6 ( .A1(A), .A2(B), .ZN(n4) );
endmodule


module FA_41 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   net2376, n3, n4, n5, n6;
  assign Co = net2376;

  NAND2_X1 U1 ( .A1(Ci), .A2(n6), .ZN(n5) );
  NAND2_X1 U2 ( .A1(n5), .A2(n4), .ZN(net2376) );
  INV_X1 U3 ( .A(n3), .ZN(n6) );
  XNOR2_X1 U4 ( .A(Ci), .B(n3), .ZN(S) );
  XNOR2_X1 U5 ( .A(A), .B(B), .ZN(n3) );
  NAND2_X1 U6 ( .A1(A), .A2(B), .ZN(n4) );
endmodule


module FA_40 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   net2373, n3, n4, n5, n6;
  assign Co = net2373;

  NAND2_X1 U1 ( .A1(Ci), .A2(n6), .ZN(n5) );
  NAND2_X1 U2 ( .A1(n5), .A2(n4), .ZN(net2373) );
  INV_X1 U3 ( .A(n3), .ZN(n6) );
  XNOR2_X1 U4 ( .A(Ci), .B(n3), .ZN(S) );
  XNOR2_X1 U5 ( .A(A), .B(B), .ZN(n3) );
  NAND2_X1 U6 ( .A1(A), .A2(B), .ZN(n4) );
endmodule


module FA_39 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   net2370, n3, n4, n5, n6;
  assign Co = net2370;

  NAND2_X1 U1 ( .A1(Ci), .A2(n6), .ZN(n5) );
  NAND2_X1 U2 ( .A1(n5), .A2(n4), .ZN(net2370) );
  INV_X1 U3 ( .A(n3), .ZN(n6) );
  XNOR2_X1 U4 ( .A(Ci), .B(n3), .ZN(S) );
  XNOR2_X1 U5 ( .A(A), .B(B), .ZN(n3) );
  NAND2_X1 U6 ( .A1(A), .A2(B), .ZN(n4) );
endmodule


module FA_38 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   net2367, n3, n4, n5, n6;
  assign Co = net2367;

  NAND2_X1 U1 ( .A1(Ci), .A2(n6), .ZN(n5) );
  NAND2_X1 U2 ( .A1(n5), .A2(n4), .ZN(net2367) );
  INV_X1 U3 ( .A(n3), .ZN(n6) );
  XNOR2_X1 U4 ( .A(Ci), .B(n3), .ZN(S) );
  XNOR2_X1 U5 ( .A(A), .B(B), .ZN(n3) );
  NAND2_X1 U6 ( .A1(A), .A2(B), .ZN(n4) );
endmodule


module FA_37 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   net2364, n3, n4, n5, n6;
  assign Co = net2364;

  NAND2_X1 U1 ( .A1(Ci), .A2(n6), .ZN(n5) );
  NAND2_X1 U2 ( .A1(n5), .A2(n4), .ZN(net2364) );
  INV_X1 U3 ( .A(n3), .ZN(n6) );
  XNOR2_X1 U4 ( .A(Ci), .B(n3), .ZN(S) );
  XNOR2_X1 U5 ( .A(A), .B(B), .ZN(n3) );
  NAND2_X1 U6 ( .A1(A), .A2(B), .ZN(n4) );
endmodule


module FA_36 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   net2361, n3, n4, n5, n6;
  assign Co = net2361;

  NAND2_X1 U1 ( .A1(Ci), .A2(n6), .ZN(n5) );
  NAND2_X1 U2 ( .A1(n5), .A2(n4), .ZN(net2361) );
  INV_X1 U3 ( .A(n3), .ZN(n6) );
  XNOR2_X1 U4 ( .A(Ci), .B(n3), .ZN(S) );
  XNOR2_X1 U5 ( .A(A), .B(B), .ZN(n3) );
  NAND2_X1 U6 ( .A1(A), .A2(B), .ZN(n4) );
endmodule


module FA_35 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   net2358, n3, n4, n5, n6;
  assign Co = net2358;

  NAND2_X1 U1 ( .A1(Ci), .A2(n6), .ZN(n5) );
  NAND2_X1 U2 ( .A1(n5), .A2(n4), .ZN(net2358) );
  INV_X1 U3 ( .A(n3), .ZN(n6) );
  XNOR2_X1 U4 ( .A(Ci), .B(n3), .ZN(S) );
  XNOR2_X1 U5 ( .A(A), .B(B), .ZN(n3) );
  NAND2_X1 U6 ( .A1(A), .A2(B), .ZN(n4) );
endmodule


module FA_34 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   net2355, n3, n4, n5, n6;
  assign Co = net2355;

  NAND2_X1 U1 ( .A1(Ci), .A2(n6), .ZN(n5) );
  NAND2_X1 U2 ( .A1(n5), .A2(n4), .ZN(net2355) );
  INV_X1 U3 ( .A(n3), .ZN(n6) );
  XNOR2_X1 U4 ( .A(Ci), .B(n3), .ZN(S) );
  XNOR2_X1 U5 ( .A(A), .B(B), .ZN(n3) );
  NAND2_X1 U6 ( .A1(A), .A2(B), .ZN(n4) );
endmodule


module FA_33 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n3, n4, n5, n6;

  XNOR2_X1 U1 ( .A(Ci), .B(n5), .ZN(S) );
  CLKBUF_X1 U2 ( .A(Ci), .Z(n6) );
  XNOR2_X1 U3 ( .A(A), .B(B), .ZN(n5) );
  INV_X1 U4 ( .A(n5), .ZN(n4) );
  AOI22_X1 U5 ( .A1(B), .A2(A), .B1(n4), .B2(n6), .ZN(n3) );
  INV_X1 U6 ( .A(n3), .ZN(Co) );
endmodule


module FA_32 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n3, n4, n5, n6;

  CLKBUF_X1 U1 ( .A(A), .Z(n3) );
  XOR2_X1 U2 ( .A(A), .B(Ci), .Z(n4) );
  XOR2_X1 U3 ( .A(B), .B(n4), .Z(S) );
  NAND2_X1 U4 ( .A1(n3), .A2(B), .ZN(n6) );
  OAI21_X1 U5 ( .B1(B), .B2(n3), .A(Ci), .ZN(n5) );
  NAND2_X1 U6 ( .A1(n6), .A2(n5), .ZN(Co) );
endmodule


module FA_31 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n3, n4, n5, n6, n7, n8, n9;

  INV_X1 U1 ( .A(n4), .ZN(n3) );
  NAND2_X1 U2 ( .A1(n3), .A2(A), .ZN(n8) );
  INV_X1 U3 ( .A(A), .ZN(n5) );
  INV_X1 U4 ( .A(B), .ZN(n4) );
  NAND2_X1 U5 ( .A1(n4), .A2(n5), .ZN(n6) );
  NAND2_X1 U6 ( .A1(n6), .A2(Ci), .ZN(n7) );
  NAND2_X1 U7 ( .A1(n7), .A2(n8), .ZN(Co) );
  XNOR2_X1 U8 ( .A(B), .B(A), .ZN(n9) );
  XNOR2_X1 U9 ( .A(n9), .B(Ci), .ZN(S) );
endmodule


module FA_30 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n3, n4, n5, n6, n7;

  OR2_X1 U1 ( .A1(B), .A2(A), .ZN(n4) );
  BUF_X1 U2 ( .A(Ci), .Z(n3) );
  NAND2_X1 U3 ( .A1(B), .A2(A), .ZN(n6) );
  NAND2_X1 U4 ( .A1(n4), .A2(Ci), .ZN(n5) );
  NAND2_X1 U5 ( .A1(n5), .A2(n6), .ZN(Co) );
  XNOR2_X1 U6 ( .A(B), .B(A), .ZN(n7) );
  XNOR2_X1 U7 ( .A(n3), .B(n7), .ZN(S) );
endmodule


module FA_29 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n3, n4, n5, n6;

  OR2_X1 U1 ( .A1(B), .A2(A), .ZN(n3) );
  NAND2_X1 U2 ( .A1(B), .A2(A), .ZN(n5) );
  NAND2_X1 U3 ( .A1(Ci), .A2(n3), .ZN(n4) );
  NAND2_X1 U4 ( .A1(n4), .A2(n5), .ZN(Co) );
  XNOR2_X1 U5 ( .A(B), .B(A), .ZN(n6) );
  XNOR2_X1 U6 ( .A(Ci), .B(n6), .ZN(S) );
endmodule


module FA_28 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n3, n4, n5, n6, n7, n8, n9;

  INV_X1 U1 ( .A(n4), .ZN(n3) );
  NAND2_X1 U2 ( .A1(n3), .A2(A), .ZN(n8) );
  INV_X1 U3 ( .A(A), .ZN(n5) );
  INV_X1 U4 ( .A(B), .ZN(n4) );
  NAND2_X1 U5 ( .A1(n4), .A2(n5), .ZN(n6) );
  NAND2_X1 U6 ( .A1(Ci), .A2(n6), .ZN(n7) );
  NAND2_X1 U7 ( .A1(n7), .A2(n8), .ZN(Co) );
  XNOR2_X1 U8 ( .A(B), .B(A), .ZN(n9) );
  XNOR2_X1 U9 ( .A(Ci), .B(n9), .ZN(S) );
endmodule


module FA_27 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n3, n4, n5, n6, n7;

  CLKBUF_X1 U1 ( .A(Ci), .Z(n3) );
  OR2_X1 U2 ( .A1(B), .A2(A), .ZN(n4) );
  NAND2_X1 U3 ( .A1(B), .A2(A), .ZN(n6) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n4), .ZN(n5) );
  NAND2_X1 U5 ( .A1(n5), .A2(n6), .ZN(Co) );
  XNOR2_X1 U6 ( .A(B), .B(A), .ZN(n7) );
  XNOR2_X1 U7 ( .A(n3), .B(n7), .ZN(S) );
endmodule


module FA_26 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n3, n4, n5, n6, n7, n8, n9;

  INV_X1 U1 ( .A(n4), .ZN(n3) );
  NAND2_X1 U2 ( .A1(n3), .A2(A), .ZN(n8) );
  INV_X1 U3 ( .A(A), .ZN(n5) );
  INV_X1 U4 ( .A(B), .ZN(n4) );
  NAND2_X1 U5 ( .A1(n4), .A2(n5), .ZN(n6) );
  NAND2_X1 U6 ( .A1(n6), .A2(Ci), .ZN(n7) );
  NAND2_X1 U7 ( .A1(n7), .A2(n8), .ZN(Co) );
  XNOR2_X1 U8 ( .A(B), .B(A), .ZN(n9) );
  XNOR2_X1 U9 ( .A(Ci), .B(n9), .ZN(S) );
endmodule


module FA_25 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n3, n4, n5, n6, n7, n8, n9;

  INV_X1 U1 ( .A(n4), .ZN(n3) );
  NAND2_X1 U2 ( .A1(n3), .A2(A), .ZN(n8) );
  INV_X1 U3 ( .A(A), .ZN(n5) );
  INV_X1 U4 ( .A(B), .ZN(n4) );
  NAND2_X1 U5 ( .A1(n4), .A2(n5), .ZN(n6) );
  NAND2_X1 U6 ( .A1(Ci), .A2(n6), .ZN(n7) );
  NAND2_X1 U7 ( .A1(n7), .A2(n8), .ZN(Co) );
  XNOR2_X1 U8 ( .A(B), .B(A), .ZN(n9) );
  XNOR2_X1 U9 ( .A(Ci), .B(n9), .ZN(S) );
endmodule


module FA_24 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n3, n4, n5, n6, n7, n8, n9;

  INV_X1 U1 ( .A(n4), .ZN(n3) );
  NAND2_X1 U2 ( .A1(n3), .A2(A), .ZN(n8) );
  INV_X1 U3 ( .A(A), .ZN(n5) );
  INV_X1 U4 ( .A(B), .ZN(n4) );
  NAND2_X1 U5 ( .A1(n4), .A2(n5), .ZN(n6) );
  NAND2_X1 U6 ( .A1(Ci), .A2(n6), .ZN(n7) );
  NAND2_X1 U7 ( .A1(n7), .A2(n8), .ZN(Co) );
  XNOR2_X1 U8 ( .A(B), .B(A), .ZN(n9) );
  XNOR2_X1 U9 ( .A(Ci), .B(n9), .ZN(S) );
endmodule


module FA_23 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n3, n4, n5, n6, n7, n8, n9;

  INV_X1 U1 ( .A(n4), .ZN(n3) );
  NAND2_X1 U2 ( .A1(A), .A2(n3), .ZN(n8) );
  INV_X1 U3 ( .A(A), .ZN(n5) );
  INV_X1 U4 ( .A(B), .ZN(n4) );
  NAND2_X1 U5 ( .A1(n4), .A2(n5), .ZN(n6) );
  NAND2_X1 U6 ( .A1(Ci), .A2(n6), .ZN(n7) );
  NAND2_X1 U7 ( .A1(n7), .A2(n8), .ZN(Co) );
  XNOR2_X1 U8 ( .A(B), .B(A), .ZN(n9) );
  XNOR2_X1 U9 ( .A(Ci), .B(n9), .ZN(S) );
endmodule


module FA_22 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n3, n4, n5, n6, n7, n8, n9;

  INV_X1 U1 ( .A(n4), .ZN(n3) );
  NAND2_X1 U2 ( .A1(n3), .A2(A), .ZN(n8) );
  INV_X1 U3 ( .A(A), .ZN(n5) );
  INV_X1 U4 ( .A(B), .ZN(n4) );
  NAND2_X1 U5 ( .A1(n4), .A2(n5), .ZN(n6) );
  NAND2_X1 U6 ( .A1(Ci), .A2(n6), .ZN(n7) );
  NAND2_X1 U7 ( .A1(n7), .A2(n8), .ZN(Co) );
  XNOR2_X1 U8 ( .A(B), .B(A), .ZN(n9) );
  XNOR2_X1 U9 ( .A(Ci), .B(n9), .ZN(S) );
endmodule


module FA_21 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n3, n4, n5, n6, n7, n8, n9;

  CLKBUF_X1 U1 ( .A(B), .Z(n3) );
  NAND2_X1 U2 ( .A1(A), .A2(n3), .ZN(n8) );
  INV_X1 U3 ( .A(A), .ZN(n5) );
  INV_X1 U4 ( .A(B), .ZN(n4) );
  NAND2_X1 U5 ( .A1(n5), .A2(n4), .ZN(n6) );
  NAND2_X1 U6 ( .A1(Ci), .A2(n6), .ZN(n7) );
  NAND2_X1 U7 ( .A1(n7), .A2(n8), .ZN(Co) );
  XNOR2_X1 U8 ( .A(B), .B(A), .ZN(n9) );
  XNOR2_X1 U9 ( .A(Ci), .B(n9), .ZN(S) );
endmodule


module FA_20 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n3, n4, n5, n6, n7, n8, n9;

  CLKBUF_X1 U1 ( .A(B), .Z(n3) );
  NAND2_X1 U2 ( .A1(n3), .A2(A), .ZN(n8) );
  INV_X1 U3 ( .A(A), .ZN(n5) );
  INV_X1 U4 ( .A(B), .ZN(n4) );
  NAND2_X1 U5 ( .A1(n5), .A2(n4), .ZN(n6) );
  NAND2_X1 U6 ( .A1(Ci), .A2(n6), .ZN(n7) );
  NAND2_X1 U7 ( .A1(n7), .A2(n8), .ZN(Co) );
  XNOR2_X1 U8 ( .A(B), .B(A), .ZN(n9) );
  XNOR2_X1 U9 ( .A(Ci), .B(n9), .ZN(S) );
endmodule


module FA_19 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n3, n4, n5, n6, n7, n8, n9;

  INV_X1 U1 ( .A(n4), .ZN(n3) );
  NAND2_X1 U2 ( .A1(n3), .A2(A), .ZN(n8) );
  INV_X1 U3 ( .A(A), .ZN(n5) );
  INV_X1 U4 ( .A(B), .ZN(n4) );
  NAND2_X1 U5 ( .A1(n5), .A2(n4), .ZN(n6) );
  NAND2_X1 U6 ( .A1(Ci), .A2(n6), .ZN(n7) );
  NAND2_X1 U7 ( .A1(n7), .A2(n8), .ZN(Co) );
  XNOR2_X1 U8 ( .A(B), .B(A), .ZN(n9) );
  XNOR2_X1 U9 ( .A(Ci), .B(n9), .ZN(S) );
endmodule


module FA_18 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n3, n4, n5, n6, n7, n8, n9;

  INV_X1 U1 ( .A(n4), .ZN(n3) );
  NAND2_X1 U2 ( .A1(n3), .A2(A), .ZN(n8) );
  INV_X1 U3 ( .A(A), .ZN(n5) );
  INV_X1 U4 ( .A(B), .ZN(n4) );
  NAND2_X1 U5 ( .A1(n5), .A2(n4), .ZN(n6) );
  NAND2_X1 U6 ( .A1(Ci), .A2(n6), .ZN(n7) );
  NAND2_X1 U7 ( .A1(n7), .A2(n8), .ZN(Co) );
  XNOR2_X1 U8 ( .A(B), .B(A), .ZN(n9) );
  XNOR2_X1 U9 ( .A(Ci), .B(n9), .ZN(S) );
endmodule


module FA_17 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   net17001, net17003, net17923, n3, n4, n5;

  XNOR2_X1 U1 ( .A(B), .B(A), .ZN(n3) );
  XNOR2_X1 U2 ( .A(Ci), .B(n3), .ZN(S) );
  CLKBUF_X1 U3 ( .A(B), .Z(n4) );
  OR2_X1 U4 ( .A1(A), .A2(n4), .ZN(net17003) );
  NAND2_X1 U5 ( .A1(n4), .A2(A), .ZN(net17001) );
  CLKBUF_X1 U6 ( .A(Ci), .Z(net17923) );
  NAND2_X1 U7 ( .A1(net17923), .A2(net17003), .ZN(n5) );
  NAND2_X1 U8 ( .A1(net17001), .A2(n5), .ZN(Co) );
endmodule


module FA_16 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n3, n4, n5, n6, n7;

  CLKBUF_X1 U1 ( .A(n6), .Z(n3) );
  OR2_X1 U2 ( .A1(n6), .A2(n7), .ZN(n4) );
  NAND2_X1 U3 ( .A1(n4), .A2(n5), .ZN(Co) );
  XOR2_X1 U4 ( .A(n3), .B(n7), .Z(S) );
  XNOR2_X1 U5 ( .A(B), .B(A), .ZN(n6) );
  INV_X1 U6 ( .A(Ci), .ZN(n7) );
  NAND2_X1 U7 ( .A1(A), .A2(B), .ZN(n5) );
endmodule


module FA_15 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n3, n4, n5, n6, n7, n8;

  XOR2_X1 U1 ( .A(n3), .B(Ci), .Z(S) );
  XOR2_X1 U2 ( .A(B), .B(A), .Z(n3) );
  NAND2_X1 U3 ( .A1(A), .A2(B), .ZN(n8) );
  INV_X1 U4 ( .A(A), .ZN(n5) );
  INV_X1 U5 ( .A(B), .ZN(n4) );
  NAND2_X1 U6 ( .A1(n5), .A2(n4), .ZN(n6) );
  NAND2_X1 U7 ( .A1(Ci), .A2(n6), .ZN(n7) );
  NAND2_X1 U8 ( .A1(n8), .A2(n7), .ZN(Co) );
endmodule


module FA_14 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n3, n4, n5, n6, n7;

  OR2_X1 U1 ( .A1(B), .A2(A), .ZN(n4) );
  CLKBUF_X1 U2 ( .A(B), .Z(n3) );
  NAND2_X1 U3 ( .A1(A), .A2(n3), .ZN(n6) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n4), .ZN(n5) );
  NAND2_X1 U5 ( .A1(n6), .A2(n5), .ZN(Co) );
  XNOR2_X1 U6 ( .A(A), .B(B), .ZN(n7) );
  XNOR2_X1 U7 ( .A(n7), .B(Ci), .ZN(S) );
endmodule


module FA_13 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n3, n4, n5, n6, n7, n8;

  XOR2_X1 U1 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U2 ( .A(B), .B(A), .Z(n3) );
  NAND2_X1 U3 ( .A1(A), .A2(B), .ZN(n8) );
  INV_X1 U4 ( .A(A), .ZN(n5) );
  INV_X1 U5 ( .A(B), .ZN(n4) );
  NAND2_X1 U6 ( .A1(n4), .A2(n5), .ZN(n6) );
  NAND2_X1 U7 ( .A1(Ci), .A2(n6), .ZN(n7) );
  NAND2_X1 U8 ( .A1(n7), .A2(n8), .ZN(Co) );
endmodule


module FA_12 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n3, n4, n5, n6, n7, n8, n9;

  CLKBUF_X1 U1 ( .A(Ci), .Z(n3) );
  XOR2_X1 U2 ( .A(n3), .B(n4), .Z(S) );
  XOR2_X1 U3 ( .A(B), .B(A), .Z(n4) );
  NAND2_X1 U4 ( .A1(A), .A2(B), .ZN(n9) );
  INV_X1 U5 ( .A(A), .ZN(n6) );
  INV_X1 U6 ( .A(B), .ZN(n5) );
  NAND2_X1 U7 ( .A1(n6), .A2(n5), .ZN(n7) );
  NAND2_X1 U8 ( .A1(Ci), .A2(n7), .ZN(n8) );
  NAND2_X1 U9 ( .A1(n8), .A2(n9), .ZN(Co) );
endmodule


module FA_11 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n3, n4, n5, n6, n7, n8, n9, n10;

  BUF_X1 U1 ( .A(B), .Z(n3) );
  XOR2_X1 U2 ( .A(n5), .B(n4), .Z(S) );
  XOR2_X1 U3 ( .A(n3), .B(A), .Z(n4) );
  CLKBUF_X1 U4 ( .A(Ci), .Z(n5) );
  NAND2_X1 U5 ( .A1(n3), .A2(A), .ZN(n10) );
  INV_X1 U6 ( .A(A), .ZN(n7) );
  INV_X1 U7 ( .A(B), .ZN(n6) );
  NAND2_X1 U8 ( .A1(n6), .A2(n7), .ZN(n8) );
  NAND2_X1 U9 ( .A1(Ci), .A2(n8), .ZN(n9) );
  NAND2_X1 U10 ( .A1(n10), .A2(n9), .ZN(Co) );
endmodule


module FA_10 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n3, n4, n5, n6, n7;

  OR2_X1 U1 ( .A1(B), .A2(A), .ZN(n4) );
  CLKBUF_X1 U2 ( .A(Ci), .Z(n3) );
  NAND2_X1 U3 ( .A1(A), .A2(B), .ZN(n6) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n4), .ZN(n5) );
  NAND2_X1 U5 ( .A1(n5), .A2(n6), .ZN(Co) );
  XNOR2_X1 U6 ( .A(B), .B(A), .ZN(n7) );
  XNOR2_X1 U7 ( .A(n3), .B(n7), .ZN(S) );
endmodule


module FA_9 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n3, n4, n5, n6, n7;

  CLKBUF_X1 U1 ( .A(Ci), .Z(n3) );
  OR2_X1 U2 ( .A1(B), .A2(A), .ZN(n4) );
  NAND2_X1 U3 ( .A1(B), .A2(A), .ZN(n6) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n4), .ZN(n5) );
  NAND2_X1 U5 ( .A1(n5), .A2(n6), .ZN(Co) );
  XNOR2_X1 U6 ( .A(B), .B(A), .ZN(n7) );
  XNOR2_X1 U7 ( .A(n3), .B(n7), .ZN(S) );
endmodule


module FA_8 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n3, n4, n5, n6, n7;

  CLKBUF_X1 U1 ( .A(Ci), .Z(n3) );
  XOR2_X1 U2 ( .A(n4), .B(n3), .Z(S) );
  XOR2_X1 U3 ( .A(B), .B(A), .Z(n4) );
  OR2_X1 U4 ( .A1(B), .A2(A), .ZN(n5) );
  NAND2_X1 U5 ( .A1(A), .A2(B), .ZN(n7) );
  NAND2_X1 U6 ( .A1(Ci), .A2(n5), .ZN(n6) );
  NAND2_X1 U7 ( .A1(n6), .A2(n7), .ZN(Co) );
endmodule


module FA_7 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n3, n4, n5, n6, n7;

  CLKBUF_X1 U1 ( .A(Ci), .Z(n3) );
  XOR2_X1 U2 ( .A(n3), .B(n4), .Z(S) );
  XOR2_X1 U3 ( .A(A), .B(B), .Z(n4) );
  OR2_X1 U4 ( .A1(B), .A2(A), .ZN(n5) );
  NAND2_X1 U5 ( .A1(A), .A2(B), .ZN(n7) );
  NAND2_X1 U6 ( .A1(Ci), .A2(n5), .ZN(n6) );
  NAND2_X1 U7 ( .A1(n6), .A2(n7), .ZN(Co) );
endmodule


module FA_6 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n3, n4, n5, n6;

  OR2_X1 U1 ( .A1(B), .A2(A), .ZN(n3) );
  XNOR2_X1 U2 ( .A(Ci), .B(n6), .ZN(S) );
  NAND2_X1 U3 ( .A1(A), .A2(B), .ZN(n5) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n3), .ZN(n4) );
  NAND2_X1 U5 ( .A1(n4), .A2(n5), .ZN(Co) );
  XNOR2_X1 U6 ( .A(B), .B(A), .ZN(n6) );
endmodule


module FA_5 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n3, n4, n5, n6, n7, n8;

  OR2_X1 U1 ( .A1(B), .A2(A), .ZN(n5) );
  CLKBUF_X1 U2 ( .A(B), .Z(n3) );
  CLKBUF_X1 U3 ( .A(Ci), .Z(n4) );
  NAND2_X1 U4 ( .A1(A), .A2(n3), .ZN(n7) );
  NAND2_X1 U5 ( .A1(Ci), .A2(n5), .ZN(n6) );
  NAND2_X1 U6 ( .A1(n6), .A2(n7), .ZN(Co) );
  XNOR2_X1 U7 ( .A(B), .B(A), .ZN(n8) );
  XNOR2_X1 U8 ( .A(n4), .B(n8), .ZN(S) );
endmodule


module FA_4 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n3, n4, n5, n6, n7;

  OR2_X1 U1 ( .A1(B), .A2(A), .ZN(n4) );
  CLKBUF_X1 U2 ( .A(B), .Z(n3) );
  NAND2_X1 U3 ( .A1(A), .A2(n3), .ZN(n6) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n4), .ZN(n5) );
  NAND2_X1 U5 ( .A1(n5), .A2(n6), .ZN(Co) );
  XNOR2_X1 U6 ( .A(B), .B(A), .ZN(n7) );
  XNOR2_X1 U7 ( .A(Ci), .B(n7), .ZN(S) );
endmodule


module FA_3 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n3, n4, n5, n6, n7, n8, n9, n10;

  BUF_X1 U1 ( .A(Ci), .Z(n3) );
  CLKBUF_X1 U2 ( .A(B), .Z(n4) );
  NAND2_X1 U3 ( .A1(A), .A2(n4), .ZN(n9) );
  INV_X1 U4 ( .A(A), .ZN(n6) );
  INV_X1 U5 ( .A(B), .ZN(n5) );
  NAND2_X1 U6 ( .A1(n5), .A2(n6), .ZN(n7) );
  NAND2_X1 U7 ( .A1(Ci), .A2(n7), .ZN(n8) );
  NAND2_X1 U8 ( .A1(n8), .A2(n9), .ZN(Co) );
  XNOR2_X1 U9 ( .A(B), .B(A), .ZN(n10) );
  XNOR2_X1 U10 ( .A(n3), .B(n10), .ZN(S) );
endmodule


module FA_2 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n3, n4, n5, n6, n7;

  CLKBUF_X1 U1 ( .A(B), .Z(n3) );
  OR2_X1 U2 ( .A1(B), .A2(A), .ZN(n4) );
  NAND2_X1 U3 ( .A1(n3), .A2(A), .ZN(n6) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n4), .ZN(n5) );
  NAND2_X1 U5 ( .A1(n5), .A2(n6), .ZN(Co) );
  XNOR2_X1 U6 ( .A(B), .B(A), .ZN(n7) );
  XNOR2_X1 U7 ( .A(n7), .B(Ci), .ZN(S) );
endmodule


module FA_1 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   net16907, net16910, net16911, net17829, net17832, n3, n4, n5;

  XNOR2_X1 U1 ( .A(Ci), .B(n3), .ZN(S) );
  XNOR2_X1 U2 ( .A(B), .B(A), .ZN(n3) );
  CLKBUF_X1 U3 ( .A(Ci), .Z(net17832) );
  CLKBUF_X1 U4 ( .A(B), .Z(net17829) );
  INV_X1 U5 ( .A(A), .ZN(net16910) );
  NAND2_X1 U6 ( .A1(A), .A2(net17829), .ZN(net16907) );
  INV_X1 U7 ( .A(net17829), .ZN(net16911) );
  NAND2_X1 U8 ( .A1(net16910), .A2(net16911), .ZN(n4) );
  NAND2_X1 U9 ( .A1(net17832), .A2(n4), .ZN(n5) );
  NAND2_X1 U10 ( .A1(net16907), .A2(n5), .ZN(Co) );
endmodule


module RCA_generic_N16_2 ( A, B, Ci, S, Co );
  input [15:0] A;
  input [15:0] B;
  output [15:0] S;
  input Ci;
  output Co;

  wire   [15:1] CTMP;

  FA_32 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_31 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_30 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_29 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(CTMP[4]) );
  FA_28 FAI_5 ( .A(A[4]), .B(B[4]), .Ci(CTMP[4]), .S(S[4]), .Co(CTMP[5]) );
  FA_27 FAI_6 ( .A(A[5]), .B(B[5]), .Ci(CTMP[5]), .S(S[5]), .Co(CTMP[6]) );
  FA_26 FAI_7 ( .A(A[6]), .B(B[6]), .Ci(CTMP[6]), .S(S[6]), .Co(CTMP[7]) );
  FA_25 FAI_8 ( .A(A[7]), .B(B[7]), .Ci(CTMP[7]), .S(S[7]), .Co(CTMP[8]) );
  FA_24 FAI_9 ( .A(A[8]), .B(B[8]), .Ci(CTMP[8]), .S(S[8]), .Co(CTMP[9]) );
  FA_23 FAI_10 ( .A(A[9]), .B(B[9]), .Ci(CTMP[9]), .S(S[9]), .Co(CTMP[10]) );
  FA_22 FAI_11 ( .A(A[10]), .B(B[10]), .Ci(CTMP[10]), .S(S[10]), .Co(CTMP[11])
         );
  FA_21 FAI_12 ( .A(A[11]), .B(B[11]), .Ci(CTMP[11]), .S(S[11]), .Co(CTMP[12])
         );
  FA_20 FAI_13 ( .A(A[12]), .B(B[12]), .Ci(CTMP[12]), .S(S[12]), .Co(CTMP[13])
         );
  FA_19 FAI_14 ( .A(A[13]), .B(B[13]), .Ci(CTMP[13]), .S(S[13]), .Co(CTMP[14])
         );
  FA_18 FAI_15 ( .A(A[14]), .B(B[14]), .Ci(CTMP[14]), .S(S[14]), .Co(CTMP[15])
         );
  FA_17 FAI_16 ( .A(A[15]), .B(B[15]), .Ci(CTMP[15]), .S(S[15]), .Co(Co) );
endmodule


module RCA_generic_N16_1 ( A, B, Ci, S, Co );
  input [15:0] A;
  input [15:0] B;
  output [15:0] S;
  input Ci;
  output Co;

  wire   [15:1] CTMP;

  FA_16 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_15 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_14 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_13 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(CTMP[4]) );
  FA_12 FAI_5 ( .A(A[4]), .B(B[4]), .Ci(CTMP[4]), .S(S[4]), .Co(CTMP[5]) );
  FA_11 FAI_6 ( .A(A[5]), .B(B[5]), .Ci(CTMP[5]), .S(S[5]), .Co(CTMP[6]) );
  FA_10 FAI_7 ( .A(A[6]), .B(B[6]), .Ci(CTMP[6]), .S(S[6]), .Co(CTMP[7]) );
  FA_9 FAI_8 ( .A(A[7]), .B(B[7]), .Ci(CTMP[7]), .S(S[7]), .Co(CTMP[8]) );
  FA_8 FAI_9 ( .A(A[8]), .B(B[8]), .Ci(CTMP[8]), .S(S[8]), .Co(CTMP[9]) );
  FA_7 FAI_10 ( .A(A[9]), .B(B[9]), .Ci(CTMP[9]), .S(S[9]), .Co(CTMP[10]) );
  FA_6 FAI_11 ( .A(A[10]), .B(B[10]), .Ci(CTMP[10]), .S(S[10]), .Co(CTMP[11])
         );
  FA_5 FAI_12 ( .A(A[11]), .B(B[11]), .Ci(CTMP[11]), .S(S[11]), .Co(CTMP[12])
         );
  FA_4 FAI_13 ( .A(A[12]), .B(B[12]), .Ci(CTMP[12]), .S(S[12]), .Co(CTMP[13])
         );
  FA_3 FAI_14 ( .A(A[13]), .B(B[13]), .Ci(CTMP[13]), .S(S[13]), .Co(CTMP[14])
         );
  FA_2 FAI_15 ( .A(A[14]), .B(B[14]), .Ci(CTMP[14]), .S(S[14]), .Co(CTMP[15])
         );
  FA_1 FAI_16 ( .A(A[15]), .B(B[15]), .Ci(CTMP[15]), .S(S[15]), .Co(Co) );
endmodule


module MUX51_GENERIC_N16_3 ( A, B, C, D, E, SEL, Y );
  input [15:0] A;
  input [15:0] B;
  input [15:0] C;
  input [15:0] D;
  input [15:0] E;
  input [2:0] SEL;
  output [15:0] Y;
  wire   net17328, net17330, net17435, net17440, net17443, net17447, net17449,
         net17450, net17818, net17850, net17914, net17937, net17968, net17967,
         net17966, net18335, net17934, net17911, net17893, net17825, net17465,
         net17464, net17460, net17459, net17457, net17454, net17871, net17468,
         net17944, net17452, net17438, net17437, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164;

  AND4_X1 U1 ( .A1(net17435), .A2(net17437), .A3(net17438), .A4(net17447), 
        .ZN(n40) );
  NAND3_X1 U2 ( .A1(net17944), .A2(net17438), .A3(net17437), .ZN(n42) );
  OAI211_X1 U3 ( .C1(n42), .C2(net17457), .A(net17460), .B(net17459), .ZN(Y[0]) );
  CLKBUF_X1 U4 ( .A(n41), .Z(net17944) );
  INV_X1 U5 ( .A(net17944), .ZN(net17850) );
  OR2_X1 U6 ( .A1(net17452), .A2(net17465), .ZN(net17438) );
  NOR2_X1 U7 ( .A1(net17438), .A2(net17450), .ZN(net17449) );
  INV_X1 U8 ( .A(SEL[1]), .ZN(net17452) );
  NAND2_X1 U9 ( .A1(net17452), .A2(net18335), .ZN(net17437) );
  NAND2_X1 U10 ( .A1(net17871), .A2(n43), .ZN(n41) );
  INV_X1 U11 ( .A(n41), .ZN(net17464) );
  INV_X1 U12 ( .A(SEL[1]), .ZN(n43) );
  OR2_X2 U13 ( .A1(net17465), .A2(n43), .ZN(net17328) );
  INV_X1 U14 ( .A(n43), .ZN(net17825) );
  NOR2_X1 U15 ( .A1(net17452), .A2(net17465), .ZN(net17934) );
  AND2_X1 U16 ( .A1(net17452), .A2(net18335), .ZN(net17911) );
  AND2_X2 U17 ( .A1(net17452), .A2(net18335), .ZN(net17818) );
  AND2_X1 U18 ( .A1(net17452), .A2(net17871), .ZN(net17914) );
  NAND2_X1 U19 ( .A1(net17452), .A2(net17871), .ZN(net17447) );
  AND2_X1 U20 ( .A1(n44), .A2(SEL[0]), .ZN(net17871) );
  INV_X1 U21 ( .A(SEL[2]), .ZN(n44) );
  AND2_X1 U22 ( .A1(net17468), .A2(n44), .ZN(net18335) );
  AND2_X1 U23 ( .A1(n44), .A2(net17468), .ZN(net17893) );
  NAND2_X1 U24 ( .A1(n44), .A2(SEL[0]), .ZN(net17465) );
  INV_X1 U25 ( .A(SEL[0]), .ZN(net17468) );
  AOI22_X1 U26 ( .A1(net17911), .A2(A[0]), .B1(net17464), .B2(B[0]), .ZN(
        net17459) );
  NOR2_X1 U27 ( .A1(n46), .A2(n48), .ZN(net17460) );
  AND2_X1 U28 ( .A1(D[0]), .A2(net17934), .ZN(n48) );
  NOR2_X1 U29 ( .A1(n45), .A2(n47), .ZN(n46) );
  INV_X1 U30 ( .A(C[0]), .ZN(n47) );
  NAND2_X1 U31 ( .A1(net17435), .A2(E[0]), .ZN(net17457) );
  AOI22_X1 U32 ( .A1(C[1]), .A2(net17454), .B1(A[1]), .B2(net17911), .ZN(
        net17440) );
  NAND2_X1 U33 ( .A1(net17825), .A2(net17893), .ZN(n45) );
  CLKBUF_X1 U34 ( .A(n45), .Z(net17937) );
  NAND2_X1 U35 ( .A1(net17825), .A2(net17893), .ZN(net17435) );
  INV_X1 U36 ( .A(net17435), .ZN(net17454) );
  NOR2_X1 U37 ( .A1(net17914), .A2(net17911), .ZN(net17443) );
  INV_X1 U38 ( .A(n40), .ZN(net17966) );
  INV_X1 U39 ( .A(n40), .ZN(net17968) );
  INV_X1 U40 ( .A(n40), .ZN(net17967) );
  NOR2_X1 U41 ( .A1(net17328), .A2(n55), .ZN(n132) );
  NOR2_X1 U42 ( .A1(net17328), .A2(n56), .ZN(n138) );
  NOR2_X1 U43 ( .A1(net17328), .A2(n57), .ZN(n144) );
  NOR2_X1 U44 ( .A1(net17328), .A2(n59), .ZN(n156) );
  NOR2_X1 U45 ( .A1(net17328), .A2(n60), .ZN(n162) );
  NOR2_X1 U46 ( .A1(net17328), .A2(n58), .ZN(n150) );
  NOR2_X1 U47 ( .A1(net17328), .A2(n81), .ZN(n85) );
  NOR2_X1 U48 ( .A1(net17328), .A2(n121), .ZN(n125) );
  NOR2_X1 U49 ( .A1(net17328), .A2(n73), .ZN(n77) );
  NOR2_X1 U50 ( .A1(net17328), .A2(n89), .ZN(n93) );
  NOR2_X1 U51 ( .A1(net17328), .A2(n113), .ZN(n117) );
  NOR2_X1 U52 ( .A1(net17328), .A2(n65), .ZN(n69) );
  NOR2_X1 U53 ( .A1(net17328), .A2(n105), .ZN(n109) );
  NOR2_X1 U54 ( .A1(net17328), .A2(n97), .ZN(n101) );
  NOR2_X1 U55 ( .A1(net17447), .A2(n61), .ZN(n62) );
  INV_X2 U56 ( .A(net17435), .ZN(net17330) );
  INV_X1 U57 ( .A(E[10]), .ZN(n49) );
  INV_X1 U58 ( .A(E[11]), .ZN(n50) );
  INV_X1 U59 ( .A(E[12]), .ZN(n51) );
  INV_X1 U60 ( .A(E[13]), .ZN(n52) );
  INV_X1 U61 ( .A(E[14]), .ZN(n53) );
  INV_X1 U62 ( .A(E[15]), .ZN(n54) );
  INV_X1 U63 ( .A(D[10]), .ZN(n55) );
  INV_X1 U64 ( .A(D[11]), .ZN(n56) );
  INV_X1 U65 ( .A(D[12]), .ZN(n57) );
  INV_X1 U66 ( .A(D[13]), .ZN(n58) );
  INV_X1 U67 ( .A(D[14]), .ZN(n59) );
  INV_X1 U68 ( .A(D[15]), .ZN(n60) );
  INV_X1 U69 ( .A(B[1]), .ZN(n61) );
  INV_X1 U70 ( .A(D[1]), .ZN(net17450) );
  NOR2_X1 U71 ( .A1(n62), .A2(net17449), .ZN(n64) );
  NAND4_X1 U72 ( .A1(net17443), .A2(net17328), .A3(E[1]), .A4(net17937), .ZN(
        n63) );
  NAND3_X1 U73 ( .A1(n63), .A2(n64), .A3(net17440), .ZN(Y[1]) );
  INV_X1 U74 ( .A(E[2]), .ZN(n72) );
  NAND2_X1 U75 ( .A1(C[2]), .A2(net17330), .ZN(n71) );
  INV_X1 U76 ( .A(D[2]), .ZN(n65) );
  NAND2_X1 U77 ( .A1(A[2]), .A2(net17818), .ZN(n67) );
  NAND2_X1 U78 ( .A1(B[2]), .A2(net17914), .ZN(n66) );
  NAND2_X1 U79 ( .A1(n67), .A2(n66), .ZN(n68) );
  NOR2_X1 U80 ( .A1(n69), .A2(n68), .ZN(n70) );
  OAI211_X1 U81 ( .C1(net17966), .C2(n72), .A(n71), .B(n70), .ZN(Y[2]) );
  INV_X1 U82 ( .A(E[3]), .ZN(n80) );
  NAND2_X1 U83 ( .A1(C[3]), .A2(net17330), .ZN(n79) );
  INV_X1 U84 ( .A(D[3]), .ZN(n73) );
  NAND2_X1 U85 ( .A1(A[3]), .A2(net17818), .ZN(n75) );
  NAND2_X1 U86 ( .A1(B[3]), .A2(net17850), .ZN(n74) );
  NAND2_X1 U87 ( .A1(n75), .A2(n74), .ZN(n76) );
  NOR2_X1 U88 ( .A1(n77), .A2(n76), .ZN(n78) );
  OAI211_X1 U89 ( .C1(net17967), .C2(n80), .A(n79), .B(n78), .ZN(Y[3]) );
  INV_X1 U90 ( .A(E[4]), .ZN(n88) );
  NAND2_X1 U91 ( .A1(C[4]), .A2(net17330), .ZN(n87) );
  INV_X1 U92 ( .A(D[4]), .ZN(n81) );
  NAND2_X1 U93 ( .A1(A[4]), .A2(net17818), .ZN(n83) );
  NAND2_X1 U94 ( .A1(B[4]), .A2(net17850), .ZN(n82) );
  NAND2_X1 U95 ( .A1(n83), .A2(n82), .ZN(n84) );
  NOR2_X1 U96 ( .A1(n85), .A2(n84), .ZN(n86) );
  OAI211_X1 U97 ( .C1(net17968), .C2(n88), .A(n87), .B(n86), .ZN(Y[4]) );
  INV_X1 U98 ( .A(E[5]), .ZN(n96) );
  NAND2_X1 U99 ( .A1(C[5]), .A2(net17330), .ZN(n95) );
  INV_X1 U100 ( .A(D[5]), .ZN(n89) );
  NAND2_X1 U101 ( .A1(A[5]), .A2(net17818), .ZN(n91) );
  NAND2_X1 U102 ( .A1(B[5]), .A2(net17850), .ZN(n90) );
  NAND2_X1 U103 ( .A1(n91), .A2(n90), .ZN(n92) );
  NOR2_X1 U104 ( .A1(n93), .A2(n92), .ZN(n94) );
  OAI211_X1 U105 ( .C1(net17967), .C2(n96), .A(n95), .B(n94), .ZN(Y[5]) );
  INV_X1 U106 ( .A(E[6]), .ZN(n104) );
  NAND2_X1 U107 ( .A1(C[6]), .A2(net17330), .ZN(n103) );
  INV_X1 U108 ( .A(D[6]), .ZN(n97) );
  NAND2_X1 U109 ( .A1(A[6]), .A2(net17818), .ZN(n99) );
  NAND2_X1 U110 ( .A1(B[6]), .A2(net17850), .ZN(n98) );
  NAND2_X1 U111 ( .A1(n99), .A2(n98), .ZN(n100) );
  NOR2_X1 U112 ( .A1(n101), .A2(n100), .ZN(n102) );
  OAI211_X1 U113 ( .C1(net17968), .C2(n104), .A(n103), .B(n102), .ZN(Y[6]) );
  INV_X1 U114 ( .A(E[7]), .ZN(n112) );
  NAND2_X1 U115 ( .A1(C[7]), .A2(net17330), .ZN(n111) );
  INV_X1 U116 ( .A(D[7]), .ZN(n105) );
  NAND2_X1 U117 ( .A1(A[7]), .A2(net17818), .ZN(n107) );
  NAND2_X1 U118 ( .A1(B[7]), .A2(net17850), .ZN(n106) );
  NAND2_X1 U119 ( .A1(n107), .A2(n106), .ZN(n108) );
  NOR2_X1 U120 ( .A1(n109), .A2(n108), .ZN(n110) );
  OAI211_X1 U121 ( .C1(net17967), .C2(n112), .A(n111), .B(n110), .ZN(Y[7]) );
  INV_X1 U122 ( .A(E[8]), .ZN(n120) );
  NAND2_X1 U123 ( .A1(C[8]), .A2(net17330), .ZN(n119) );
  INV_X1 U124 ( .A(D[8]), .ZN(n113) );
  NAND2_X1 U125 ( .A1(A[8]), .A2(net17818), .ZN(n115) );
  NAND2_X1 U126 ( .A1(B[8]), .A2(net17850), .ZN(n114) );
  NAND2_X1 U127 ( .A1(n115), .A2(n114), .ZN(n116) );
  NOR2_X1 U128 ( .A1(n117), .A2(n116), .ZN(n118) );
  OAI211_X1 U129 ( .C1(net17968), .C2(n120), .A(n119), .B(n118), .ZN(Y[8]) );
  INV_X1 U130 ( .A(E[9]), .ZN(n128) );
  NAND2_X1 U131 ( .A1(C[9]), .A2(net17330), .ZN(n127) );
  INV_X1 U132 ( .A(D[9]), .ZN(n121) );
  NAND2_X1 U133 ( .A1(A[9]), .A2(net17818), .ZN(n123) );
  NAND2_X1 U134 ( .A1(B[9]), .A2(net17850), .ZN(n122) );
  NAND2_X1 U135 ( .A1(n123), .A2(n122), .ZN(n124) );
  NOR2_X1 U136 ( .A1(n125), .A2(n124), .ZN(n126) );
  OAI211_X1 U137 ( .C1(net17967), .C2(n128), .A(n127), .B(n126), .ZN(Y[9]) );
  NAND2_X1 U138 ( .A1(C[10]), .A2(net17330), .ZN(n134) );
  NAND2_X1 U139 ( .A1(A[10]), .A2(net17818), .ZN(n130) );
  NAND2_X1 U140 ( .A1(B[10]), .A2(net17850), .ZN(n129) );
  NAND2_X1 U141 ( .A1(n130), .A2(n129), .ZN(n131) );
  NOR2_X1 U142 ( .A1(n132), .A2(n131), .ZN(n133) );
  OAI211_X1 U143 ( .C1(net17968), .C2(n49), .A(n134), .B(n133), .ZN(Y[10]) );
  NAND2_X1 U144 ( .A1(C[11]), .A2(net17330), .ZN(n140) );
  NAND2_X1 U145 ( .A1(A[11]), .A2(net17818), .ZN(n136) );
  NAND2_X1 U146 ( .A1(B[11]), .A2(net17850), .ZN(n135) );
  NAND2_X1 U147 ( .A1(n136), .A2(n135), .ZN(n137) );
  NOR2_X1 U148 ( .A1(n138), .A2(n137), .ZN(n139) );
  OAI211_X1 U149 ( .C1(net17967), .C2(n50), .A(n140), .B(n139), .ZN(Y[11]) );
  NAND2_X1 U150 ( .A1(C[12]), .A2(net17330), .ZN(n146) );
  NAND2_X1 U151 ( .A1(A[12]), .A2(net17818), .ZN(n142) );
  NAND2_X1 U152 ( .A1(B[12]), .A2(net17914), .ZN(n141) );
  NAND2_X1 U153 ( .A1(n142), .A2(n141), .ZN(n143) );
  NOR2_X1 U154 ( .A1(n144), .A2(n143), .ZN(n145) );
  OAI211_X1 U155 ( .C1(net17968), .C2(n51), .A(n146), .B(n145), .ZN(Y[12]) );
  NAND2_X1 U156 ( .A1(C[13]), .A2(net17330), .ZN(n152) );
  NAND2_X1 U157 ( .A1(A[13]), .A2(net17818), .ZN(n148) );
  NAND2_X1 U158 ( .A1(B[13]), .A2(net17914), .ZN(n147) );
  NAND2_X1 U159 ( .A1(n148), .A2(n147), .ZN(n149) );
  NOR2_X1 U160 ( .A1(n150), .A2(n149), .ZN(n151) );
  OAI211_X1 U161 ( .C1(net17967), .C2(n52), .A(n152), .B(n151), .ZN(Y[13]) );
  NAND2_X1 U162 ( .A1(C[14]), .A2(net17330), .ZN(n158) );
  NAND2_X1 U163 ( .A1(A[14]), .A2(net17818), .ZN(n154) );
  NAND2_X1 U164 ( .A1(B[14]), .A2(net17914), .ZN(n153) );
  NAND2_X1 U165 ( .A1(n154), .A2(n153), .ZN(n155) );
  NOR2_X1 U166 ( .A1(n156), .A2(n155), .ZN(n157) );
  OAI211_X1 U167 ( .C1(net17968), .C2(n53), .A(n158), .B(n157), .ZN(Y[14]) );
  NAND2_X1 U168 ( .A1(C[15]), .A2(net17330), .ZN(n164) );
  NAND2_X1 U169 ( .A1(A[15]), .A2(net17818), .ZN(n160) );
  NAND2_X1 U170 ( .A1(B[15]), .A2(net17914), .ZN(n159) );
  NAND2_X1 U171 ( .A1(n160), .A2(n159), .ZN(n161) );
  NOR2_X1 U172 ( .A1(n162), .A2(n161), .ZN(n163) );
  OAI211_X1 U173 ( .C1(net17967), .C2(n54), .A(n164), .B(n163), .ZN(Y[15]) );
endmodule


module MUX51_GENERIC_N16_2 ( A, B, C, D, E, SEL, Y );
  input [15:0] A;
  input [15:0] B;
  input [15:0] C;
  input [15:0] D;
  input [15:0] E;
  input [2:0] SEL;
  output [15:0] Y;
  wire   n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121;

  NAND4_X1 U1 ( .A1(n53), .A2(n54), .A3(n56), .A4(n55), .ZN(n52) );
  NAND2_X1 U2 ( .A1(n41), .A2(n40), .ZN(n53) );
  INV_X2 U3 ( .A(n52), .ZN(n113) );
  INV_X2 U4 ( .A(n53), .ZN(n114) );
  INV_X2 U5 ( .A(n54), .ZN(n115) );
  INV_X2 U6 ( .A(n55), .ZN(n117) );
  INV_X2 U7 ( .A(n56), .ZN(n116) );
  INV_X1 U8 ( .A(SEL[0]), .ZN(n41) );
  NOR2_X1 U9 ( .A1(SEL[2]), .A2(SEL[1]), .ZN(n40) );
  INV_X1 U10 ( .A(SEL[2]), .ZN(n43) );
  NAND3_X1 U11 ( .A1(SEL[0]), .A2(SEL[1]), .A3(n43), .ZN(n54) );
  NAND3_X1 U12 ( .A1(SEL[1]), .A2(n43), .A3(n41), .ZN(n56) );
  INV_X1 U13 ( .A(SEL[1]), .ZN(n42) );
  NAND3_X1 U14 ( .A1(SEL[0]), .A2(n43), .A3(n42), .ZN(n55) );
  INV_X1 U15 ( .A(E[0]), .ZN(n51) );
  INV_X1 U16 ( .A(C[0]), .ZN(n45) );
  INV_X1 U17 ( .A(B[0]), .ZN(n44) );
  OAI22_X1 U18 ( .A1(n56), .A2(n45), .B1(n55), .B2(n44), .ZN(n49) );
  INV_X1 U19 ( .A(A[0]), .ZN(n47) );
  INV_X1 U20 ( .A(D[0]), .ZN(n46) );
  OAI22_X1 U21 ( .A1(n53), .A2(n47), .B1(n54), .B2(n46), .ZN(n48) );
  NOR2_X1 U22 ( .A1(n49), .A2(n48), .ZN(n50) );
  OAI21_X1 U23 ( .B1(n52), .B2(n51), .A(n50), .ZN(Y[0]) );
  NAND2_X1 U24 ( .A1(E[1]), .A2(n113), .ZN(n60) );
  NAND2_X1 U25 ( .A1(A[1]), .A2(n114), .ZN(n59) );
  NAND2_X1 U26 ( .A1(D[1]), .A2(n115), .ZN(n58) );
  AOI22_X1 U27 ( .A1(B[1]), .A2(n117), .B1(C[1]), .B2(n116), .ZN(n57) );
  NAND4_X1 U28 ( .A1(n60), .A2(n59), .A3(n58), .A4(n57), .ZN(Y[1]) );
  NAND2_X1 U29 ( .A1(E[2]), .A2(n113), .ZN(n64) );
  NAND2_X1 U30 ( .A1(A[2]), .A2(n114), .ZN(n63) );
  NAND2_X1 U31 ( .A1(D[2]), .A2(n115), .ZN(n62) );
  AOI22_X1 U32 ( .A1(B[2]), .A2(n117), .B1(C[2]), .B2(n116), .ZN(n61) );
  NAND4_X1 U33 ( .A1(n64), .A2(n63), .A3(n62), .A4(n61), .ZN(Y[2]) );
  NAND2_X1 U34 ( .A1(E[3]), .A2(n113), .ZN(n68) );
  NAND2_X1 U35 ( .A1(A[3]), .A2(n114), .ZN(n67) );
  NAND2_X1 U36 ( .A1(D[3]), .A2(n115), .ZN(n66) );
  AOI22_X1 U37 ( .A1(B[3]), .A2(n117), .B1(C[3]), .B2(n116), .ZN(n65) );
  NAND4_X1 U38 ( .A1(n68), .A2(n67), .A3(n66), .A4(n65), .ZN(Y[3]) );
  NAND2_X1 U39 ( .A1(E[4]), .A2(n113), .ZN(n72) );
  NAND2_X1 U40 ( .A1(A[4]), .A2(n114), .ZN(n71) );
  NAND2_X1 U41 ( .A1(D[4]), .A2(n115), .ZN(n70) );
  AOI22_X1 U42 ( .A1(B[4]), .A2(n117), .B1(C[4]), .B2(n116), .ZN(n69) );
  NAND4_X1 U43 ( .A1(n72), .A2(n71), .A3(n70), .A4(n69), .ZN(Y[4]) );
  NAND2_X1 U44 ( .A1(E[5]), .A2(n113), .ZN(n76) );
  NAND2_X1 U45 ( .A1(A[5]), .A2(n114), .ZN(n75) );
  NAND2_X1 U46 ( .A1(D[5]), .A2(n115), .ZN(n74) );
  AOI22_X1 U47 ( .A1(B[5]), .A2(n117), .B1(C[5]), .B2(n116), .ZN(n73) );
  NAND4_X1 U48 ( .A1(n76), .A2(n75), .A3(n74), .A4(n73), .ZN(Y[5]) );
  NAND2_X1 U49 ( .A1(E[6]), .A2(n113), .ZN(n80) );
  NAND2_X1 U50 ( .A1(A[6]), .A2(n114), .ZN(n79) );
  NAND2_X1 U51 ( .A1(D[6]), .A2(n115), .ZN(n78) );
  AOI22_X1 U52 ( .A1(B[6]), .A2(n117), .B1(C[6]), .B2(n116), .ZN(n77) );
  NAND4_X1 U53 ( .A1(n80), .A2(n79), .A3(n78), .A4(n77), .ZN(Y[6]) );
  NAND2_X1 U54 ( .A1(E[7]), .A2(n113), .ZN(n84) );
  NAND2_X1 U55 ( .A1(A[7]), .A2(n114), .ZN(n83) );
  NAND2_X1 U56 ( .A1(D[7]), .A2(n115), .ZN(n82) );
  AOI22_X1 U57 ( .A1(B[7]), .A2(n117), .B1(C[7]), .B2(n116), .ZN(n81) );
  NAND4_X1 U58 ( .A1(n84), .A2(n83), .A3(n82), .A4(n81), .ZN(Y[7]) );
  NAND2_X1 U59 ( .A1(E[8]), .A2(n113), .ZN(n88) );
  NAND2_X1 U60 ( .A1(A[8]), .A2(n114), .ZN(n87) );
  NAND2_X1 U61 ( .A1(D[8]), .A2(n115), .ZN(n86) );
  AOI22_X1 U62 ( .A1(B[8]), .A2(n117), .B1(C[8]), .B2(n116), .ZN(n85) );
  NAND4_X1 U63 ( .A1(n88), .A2(n87), .A3(n86), .A4(n85), .ZN(Y[8]) );
  NAND2_X1 U64 ( .A1(E[9]), .A2(n113), .ZN(n92) );
  NAND2_X1 U65 ( .A1(A[9]), .A2(n114), .ZN(n91) );
  NAND2_X1 U66 ( .A1(D[9]), .A2(n115), .ZN(n90) );
  AOI22_X1 U67 ( .A1(B[9]), .A2(n117), .B1(C[9]), .B2(n116), .ZN(n89) );
  NAND4_X1 U68 ( .A1(n92), .A2(n91), .A3(n90), .A4(n89), .ZN(Y[9]) );
  NAND2_X1 U69 ( .A1(E[10]), .A2(n113), .ZN(n96) );
  NAND2_X1 U70 ( .A1(A[10]), .A2(n114), .ZN(n95) );
  NAND2_X1 U71 ( .A1(D[10]), .A2(n115), .ZN(n94) );
  AOI22_X1 U72 ( .A1(B[10]), .A2(n117), .B1(C[10]), .B2(n116), .ZN(n93) );
  NAND4_X1 U73 ( .A1(n96), .A2(n95), .A3(n94), .A4(n93), .ZN(Y[10]) );
  NAND2_X1 U74 ( .A1(E[11]), .A2(n113), .ZN(n100) );
  NAND2_X1 U75 ( .A1(A[11]), .A2(n114), .ZN(n99) );
  NAND2_X1 U76 ( .A1(D[11]), .A2(n115), .ZN(n98) );
  AOI22_X1 U77 ( .A1(B[11]), .A2(n117), .B1(C[11]), .B2(n116), .ZN(n97) );
  NAND4_X1 U78 ( .A1(n100), .A2(n99), .A3(n98), .A4(n97), .ZN(Y[11]) );
  NAND2_X1 U79 ( .A1(E[12]), .A2(n113), .ZN(n104) );
  NAND2_X1 U80 ( .A1(A[12]), .A2(n114), .ZN(n103) );
  NAND2_X1 U81 ( .A1(D[12]), .A2(n115), .ZN(n102) );
  AOI22_X1 U82 ( .A1(B[12]), .A2(n117), .B1(C[12]), .B2(n116), .ZN(n101) );
  NAND4_X1 U83 ( .A1(n104), .A2(n103), .A3(n102), .A4(n101), .ZN(Y[12]) );
  NAND2_X1 U84 ( .A1(E[13]), .A2(n113), .ZN(n108) );
  NAND2_X1 U85 ( .A1(A[13]), .A2(n114), .ZN(n107) );
  NAND2_X1 U86 ( .A1(D[13]), .A2(n115), .ZN(n106) );
  AOI22_X1 U87 ( .A1(B[13]), .A2(n117), .B1(C[13]), .B2(n116), .ZN(n105) );
  NAND4_X1 U88 ( .A1(n108), .A2(n107), .A3(n106), .A4(n105), .ZN(Y[13]) );
  NAND2_X1 U89 ( .A1(E[14]), .A2(n113), .ZN(n112) );
  NAND2_X1 U90 ( .A1(A[14]), .A2(n114), .ZN(n111) );
  NAND2_X1 U91 ( .A1(D[14]), .A2(n115), .ZN(n110) );
  AOI22_X1 U92 ( .A1(B[14]), .A2(n117), .B1(C[14]), .B2(n116), .ZN(n109) );
  NAND4_X1 U93 ( .A1(n112), .A2(n111), .A3(n110), .A4(n109), .ZN(Y[14]) );
  NAND2_X1 U94 ( .A1(E[15]), .A2(n113), .ZN(n121) );
  NAND2_X1 U95 ( .A1(A[15]), .A2(n114), .ZN(n120) );
  NAND2_X1 U96 ( .A1(D[15]), .A2(n115), .ZN(n119) );
  AOI22_X1 U97 ( .A1(B[15]), .A2(n117), .B1(C[15]), .B2(n116), .ZN(n118) );
  NAND4_X1 U98 ( .A1(n121), .A2(n120), .A3(n119), .A4(n118), .ZN(Y[15]) );
endmodule


module MUX51_GENERIC_N16_1 ( A, B, C, D, E, SEL, Y );
  input [15:0] A;
  input [15:0] B;
  input [15:0] C;
  input [15:0] D;
  input [15:0] E;
  input [2:0] SEL;
  output [15:0] Y;
  wire   n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116;

  AND4_X2 U1 ( .A1(n45), .A2(n46), .A3(n48), .A4(n47), .ZN(n40) );
  NAND2_X1 U2 ( .A1(n42), .A2(n41), .ZN(n45) );
  INV_X2 U3 ( .A(n45), .ZN(n109) );
  INV_X2 U4 ( .A(n46), .ZN(n110) );
  INV_X2 U5 ( .A(n47), .ZN(n112) );
  INV_X2 U6 ( .A(n48), .ZN(n111) );
  INV_X1 U7 ( .A(SEL[0]), .ZN(n42) );
  NOR2_X1 U8 ( .A1(SEL[2]), .A2(SEL[1]), .ZN(n41) );
  INV_X1 U9 ( .A(SEL[2]), .ZN(n44) );
  NAND3_X1 U10 ( .A1(SEL[0]), .A2(SEL[1]), .A3(n44), .ZN(n46) );
  NAND3_X1 U11 ( .A1(SEL[1]), .A2(n44), .A3(n42), .ZN(n48) );
  INV_X1 U12 ( .A(SEL[1]), .ZN(n43) );
  NAND3_X1 U13 ( .A1(SEL[0]), .A2(n44), .A3(n43), .ZN(n47) );
  NAND2_X1 U14 ( .A1(E[0]), .A2(n40), .ZN(n52) );
  NAND2_X1 U15 ( .A1(A[0]), .A2(n109), .ZN(n51) );
  NAND2_X1 U16 ( .A1(D[0]), .A2(n110), .ZN(n50) );
  AOI22_X1 U17 ( .A1(B[0]), .A2(n112), .B1(C[0]), .B2(n111), .ZN(n49) );
  NAND4_X1 U18 ( .A1(n52), .A2(n51), .A3(n50), .A4(n49), .ZN(Y[0]) );
  NAND2_X1 U19 ( .A1(E[1]), .A2(n40), .ZN(n56) );
  NAND2_X1 U20 ( .A1(A[1]), .A2(n109), .ZN(n55) );
  NAND2_X1 U21 ( .A1(D[1]), .A2(n110), .ZN(n54) );
  AOI22_X1 U22 ( .A1(B[1]), .A2(n112), .B1(C[1]), .B2(n111), .ZN(n53) );
  NAND4_X1 U23 ( .A1(n56), .A2(n55), .A3(n54), .A4(n53), .ZN(Y[1]) );
  NAND2_X1 U24 ( .A1(E[2]), .A2(n40), .ZN(n60) );
  NAND2_X1 U25 ( .A1(A[2]), .A2(n109), .ZN(n59) );
  NAND2_X1 U26 ( .A1(D[2]), .A2(n110), .ZN(n58) );
  AOI22_X1 U27 ( .A1(B[2]), .A2(n112), .B1(C[2]), .B2(n111), .ZN(n57) );
  NAND4_X1 U28 ( .A1(n60), .A2(n59), .A3(n58), .A4(n57), .ZN(Y[2]) );
  NAND2_X1 U29 ( .A1(E[3]), .A2(n40), .ZN(n64) );
  NAND2_X1 U30 ( .A1(A[3]), .A2(n109), .ZN(n63) );
  NAND2_X1 U31 ( .A1(D[3]), .A2(n110), .ZN(n62) );
  AOI22_X1 U32 ( .A1(B[3]), .A2(n112), .B1(C[3]), .B2(n111), .ZN(n61) );
  NAND4_X1 U33 ( .A1(n64), .A2(n63), .A3(n62), .A4(n61), .ZN(Y[3]) );
  NAND2_X1 U34 ( .A1(E[4]), .A2(n40), .ZN(n68) );
  NAND2_X1 U35 ( .A1(A[4]), .A2(n109), .ZN(n67) );
  NAND2_X1 U36 ( .A1(D[4]), .A2(n110), .ZN(n66) );
  AOI22_X1 U37 ( .A1(B[4]), .A2(n112), .B1(C[4]), .B2(n111), .ZN(n65) );
  NAND4_X1 U38 ( .A1(n68), .A2(n67), .A3(n66), .A4(n65), .ZN(Y[4]) );
  NAND2_X1 U39 ( .A1(E[5]), .A2(n40), .ZN(n72) );
  NAND2_X1 U40 ( .A1(A[5]), .A2(n109), .ZN(n71) );
  NAND2_X1 U41 ( .A1(D[5]), .A2(n110), .ZN(n70) );
  AOI22_X1 U42 ( .A1(B[5]), .A2(n112), .B1(C[5]), .B2(n111), .ZN(n69) );
  NAND4_X1 U43 ( .A1(n72), .A2(n71), .A3(n70), .A4(n69), .ZN(Y[5]) );
  NAND2_X1 U44 ( .A1(E[6]), .A2(n40), .ZN(n76) );
  NAND2_X1 U45 ( .A1(A[6]), .A2(n109), .ZN(n75) );
  NAND2_X1 U46 ( .A1(D[6]), .A2(n110), .ZN(n74) );
  AOI22_X1 U47 ( .A1(B[6]), .A2(n112), .B1(C[6]), .B2(n111), .ZN(n73) );
  NAND4_X1 U48 ( .A1(n76), .A2(n75), .A3(n74), .A4(n73), .ZN(Y[6]) );
  NAND2_X1 U49 ( .A1(E[7]), .A2(n40), .ZN(n80) );
  NAND2_X1 U50 ( .A1(A[7]), .A2(n109), .ZN(n79) );
  NAND2_X1 U51 ( .A1(D[7]), .A2(n110), .ZN(n78) );
  AOI22_X1 U52 ( .A1(B[7]), .A2(n112), .B1(C[7]), .B2(n111), .ZN(n77) );
  NAND4_X1 U53 ( .A1(n80), .A2(n79), .A3(n78), .A4(n77), .ZN(Y[7]) );
  NAND2_X1 U54 ( .A1(E[8]), .A2(n40), .ZN(n84) );
  NAND2_X1 U55 ( .A1(A[8]), .A2(n109), .ZN(n83) );
  NAND2_X1 U56 ( .A1(D[8]), .A2(n110), .ZN(n82) );
  AOI22_X1 U57 ( .A1(B[8]), .A2(n112), .B1(C[8]), .B2(n111), .ZN(n81) );
  NAND4_X1 U58 ( .A1(n84), .A2(n83), .A3(n82), .A4(n81), .ZN(Y[8]) );
  NAND2_X1 U59 ( .A1(E[9]), .A2(n40), .ZN(n88) );
  NAND2_X1 U60 ( .A1(A[9]), .A2(n109), .ZN(n87) );
  NAND2_X1 U61 ( .A1(D[9]), .A2(n110), .ZN(n86) );
  AOI22_X1 U62 ( .A1(B[9]), .A2(n112), .B1(C[9]), .B2(n111), .ZN(n85) );
  NAND4_X1 U63 ( .A1(n88), .A2(n87), .A3(n86), .A4(n85), .ZN(Y[9]) );
  NAND2_X1 U64 ( .A1(E[10]), .A2(n40), .ZN(n92) );
  NAND2_X1 U65 ( .A1(A[10]), .A2(n109), .ZN(n91) );
  NAND2_X1 U66 ( .A1(D[10]), .A2(n110), .ZN(n90) );
  AOI22_X1 U67 ( .A1(B[10]), .A2(n112), .B1(C[10]), .B2(n111), .ZN(n89) );
  NAND4_X1 U68 ( .A1(n92), .A2(n91), .A3(n90), .A4(n89), .ZN(Y[10]) );
  NAND2_X1 U69 ( .A1(E[11]), .A2(n40), .ZN(n96) );
  NAND2_X1 U70 ( .A1(A[11]), .A2(n109), .ZN(n95) );
  NAND2_X1 U71 ( .A1(D[11]), .A2(n110), .ZN(n94) );
  AOI22_X1 U72 ( .A1(B[11]), .A2(n112), .B1(C[11]), .B2(n111), .ZN(n93) );
  NAND4_X1 U73 ( .A1(n96), .A2(n95), .A3(n94), .A4(n93), .ZN(Y[11]) );
  NAND2_X1 U74 ( .A1(E[12]), .A2(n40), .ZN(n100) );
  NAND2_X1 U75 ( .A1(A[12]), .A2(n109), .ZN(n99) );
  NAND2_X1 U76 ( .A1(D[12]), .A2(n110), .ZN(n98) );
  AOI22_X1 U77 ( .A1(B[12]), .A2(n112), .B1(C[12]), .B2(n111), .ZN(n97) );
  NAND4_X1 U78 ( .A1(n100), .A2(n99), .A3(n98), .A4(n97), .ZN(Y[12]) );
  NAND2_X1 U79 ( .A1(E[13]), .A2(n40), .ZN(n104) );
  NAND2_X1 U80 ( .A1(A[13]), .A2(n109), .ZN(n103) );
  NAND2_X1 U81 ( .A1(D[13]), .A2(n110), .ZN(n102) );
  AOI22_X1 U82 ( .A1(B[13]), .A2(n112), .B1(C[13]), .B2(n111), .ZN(n101) );
  NAND4_X1 U83 ( .A1(n104), .A2(n103), .A3(n102), .A4(n101), .ZN(Y[13]) );
  NAND2_X1 U84 ( .A1(E[14]), .A2(n40), .ZN(n108) );
  NAND2_X1 U85 ( .A1(A[14]), .A2(n109), .ZN(n107) );
  NAND2_X1 U86 ( .A1(D[14]), .A2(n110), .ZN(n106) );
  AOI22_X1 U87 ( .A1(B[14]), .A2(n112), .B1(C[14]), .B2(n111), .ZN(n105) );
  NAND4_X1 U88 ( .A1(n108), .A2(n107), .A3(n106), .A4(n105), .ZN(Y[14]) );
  NAND2_X1 U89 ( .A1(E[15]), .A2(n40), .ZN(n116) );
  NAND2_X1 U90 ( .A1(A[15]), .A2(n109), .ZN(n115) );
  NAND2_X1 U91 ( .A1(D[15]), .A2(n110), .ZN(n114) );
  AOI22_X1 U92 ( .A1(B[15]), .A2(n112), .B1(C[15]), .B2(n111), .ZN(n113) );
  NAND4_X1 U93 ( .A1(n116), .A2(n115), .A3(n114), .A4(n113), .ZN(Y[15]) );
endmodule


module BOOTH_ENCODER_3 ( I, O );
  input [2:0] I;
  output [2:0] O;
  wire   net7730, net17634, net18302, net18311, net18291, net17640, net17639,
         net18332, net18310, net18304, n4;
  assign O[1] = net7730;

  NAND2_X1 U1 ( .A1(I[0]), .A2(I[1]), .ZN(n4) );
  XNOR2_X1 U2 ( .A(n4), .B(net18332), .ZN(net18304) );
  INV_X1 U3 ( .A(I[0]), .ZN(net18291) );
  NOR2_X1 U4 ( .A1(I[0]), .A2(I[1]), .ZN(net18310) );
  INV_X1 U5 ( .A(I[0]), .ZN(net17640) );
  INV_X1 U6 ( .A(I[1]), .ZN(net17639) );
  NOR2_X1 U7 ( .A1(net18304), .A2(net18311), .ZN(net7730) );
  INV_X1 U8 ( .A(I[2]), .ZN(net18332) );
  INV_X1 U9 ( .A(I[2]), .ZN(net18302) );
  NOR2_X1 U10 ( .A1(I[2]), .A2(net18310), .ZN(O[0]) );
  AND2_X1 U11 ( .A1(net18291), .A2(net17639), .ZN(net18311) );
  NAND2_X1 U12 ( .A1(net17639), .A2(net17640), .ZN(net17634) );
  NOR2_X1 U13 ( .A1(net17634), .A2(net18302), .ZN(O[2]) );
endmodule


module BOOTH_ENCODER_2 ( I, O );
  input [2:0] I;
  output [2:0] O;
  wire   n4, n5, n6, n7, n8, n9;

  OAI21_X1 U1 ( .B1(I[0]), .B2(I[1]), .A(n4), .ZN(n5) );
  NAND2_X1 U2 ( .A1(I[1]), .A2(I[0]), .ZN(n7) );
  NAND2_X1 U3 ( .A1(I[1]), .A2(I[0]), .ZN(n4) );
  AOI21_X1 U4 ( .B1(n5), .B2(n7), .A(I[2]), .ZN(O[0]) );
  INV_X1 U5 ( .A(n7), .ZN(n6) );
  INV_X1 U6 ( .A(n5), .ZN(n8) );
  MUX2_X1 U7 ( .A(n6), .B(n8), .S(I[2]), .Z(O[1]) );
  NAND2_X1 U8 ( .A1(I[2]), .A2(n7), .ZN(n9) );
  NOR2_X1 U9 ( .A1(n9), .A2(n8), .ZN(O[2]) );
endmodule


module BOOTH_ENCODER_1 ( I, O );
  input [2:0] I;
  output [2:0] O;
  wire   n5, n6, n7;

  OAI21_X1 U1 ( .B1(I[0]), .B2(I[1]), .A(n7), .ZN(n6) );
  NAND2_X1 U2 ( .A1(I[1]), .A2(I[0]), .ZN(n7) );
  AND3_X1 U3 ( .A1(n7), .A2(I[2]), .A3(n6), .ZN(O[2]) );
  AOI21_X1 U4 ( .B1(n7), .B2(n6), .A(I[2]), .ZN(O[0]) );
  MUX2_X1 U5 ( .A(n7), .B(n6), .S(I[2]), .Z(n5) );
  INV_X1 U6 ( .A(n5), .ZN(O[1]) );
endmodule


module FA_0 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   net2397, net17906, net17866, net17813, net17153, net17152, n3, n4, n5
;
  assign Co = net2397;

  BUF_X1 U1 ( .A(A), .Z(net17813) );
  NAND2_X1 U2 ( .A1(net17152), .A2(net17153), .ZN(net2397) );
  NAND2_X1 U3 ( .A1(net17906), .A2(net17813), .ZN(net17153) );
  XNOR2_X1 U4 ( .A(net17866), .B(net17813), .ZN(S) );
  BUF_X1 U5 ( .A(B), .Z(net17906) );
  XNOR2_X1 U6 ( .A(net17906), .B(Ci), .ZN(net17866) );
  XNOR2_X1 U7 ( .A(n4), .B(n5), .ZN(net17152) );
  NOR2_X1 U8 ( .A1(B), .A2(n3), .ZN(n5) );
  INV_X1 U9 ( .A(Ci), .ZN(n3) );
  NOR2_X1 U10 ( .A1(A), .A2(n3), .ZN(n4) );
endmodule


module RCA_generic_N16_0 ( A, B, Ci, S, Co );
  input [15:0] A;
  input [15:0] B;
  output [15:0] S;
  input Ci;
  output Co;

  wire   [15:1] CTMP;

  FA_0 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_47 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_46 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_45 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(CTMP[4]) );
  FA_44 FAI_5 ( .A(A[4]), .B(B[4]), .Ci(CTMP[4]), .S(S[4]), .Co(CTMP[5]) );
  FA_43 FAI_6 ( .A(A[5]), .B(B[5]), .Ci(CTMP[5]), .S(S[5]), .Co(CTMP[6]) );
  FA_42 FAI_7 ( .A(A[6]), .B(B[6]), .Ci(CTMP[6]), .S(S[6]), .Co(CTMP[7]) );
  FA_41 FAI_8 ( .A(A[7]), .B(B[7]), .Ci(CTMP[7]), .S(S[7]), .Co(CTMP[8]) );
  FA_40 FAI_9 ( .A(A[8]), .B(B[8]), .Ci(CTMP[8]), .S(S[8]), .Co(CTMP[9]) );
  FA_39 FAI_10 ( .A(A[9]), .B(B[9]), .Ci(CTMP[9]), .S(S[9]), .Co(CTMP[10]) );
  FA_38 FAI_11 ( .A(A[10]), .B(B[10]), .Ci(CTMP[10]), .S(S[10]), .Co(CTMP[11])
         );
  FA_37 FAI_12 ( .A(A[11]), .B(B[11]), .Ci(CTMP[11]), .S(S[11]), .Co(CTMP[12])
         );
  FA_36 FAI_13 ( .A(A[12]), .B(B[12]), .Ci(CTMP[12]), .S(S[12]), .Co(CTMP[13])
         );
  FA_35 FAI_14 ( .A(A[13]), .B(B[13]), .Ci(CTMP[13]), .S(S[13]), .Co(CTMP[14])
         );
  FA_34 FAI_15 ( .A(A[14]), .B(B[14]), .Ci(CTMP[14]), .S(S[14]), .Co(CTMP[15])
         );
  FA_33 FAI_16 ( .A(A[15]), .B(B[15]), .Ci(CTMP[15]), .S(S[15]), .Co(Co) );
endmodule


module MUX51_GENERIC_N16_0 ( A, B, C, D, E, SEL, Y );
  input [15:0] A;
  input [15:0] B;
  input [15:0] C;
  input [15:0] D;
  input [15:0] E;
  input [2:0] SEL;
  output [15:0] Y;
  wire   n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200;

  AND2_X1 U1 ( .A1(n100), .A2(E[1]), .ZN(n40) );
  OR2_X1 U2 ( .A1(n42), .A2(n75), .ZN(n48) );
  CLKBUF_X1 U3 ( .A(SEL[1]), .Z(n41) );
  NAND4_X4 U4 ( .A1(n49), .A2(n48), .A3(n53), .A4(n96), .ZN(n200) );
  CLKBUF_X1 U5 ( .A(SEL[1]), .Z(n42) );
  CLKBUF_X1 U6 ( .A(SEL[1]), .Z(n43) );
  AND2_X1 U7 ( .A1(n76), .A2(SEL[0]), .ZN(n44) );
  AND2_X1 U8 ( .A1(n85), .A2(n52), .ZN(n55) );
  AND2_X1 U9 ( .A1(n76), .A2(SEL[0]), .ZN(n45) );
  CLKBUF_X1 U10 ( .A(SEL[1]), .Z(n46) );
  CLKBUF_X1 U11 ( .A(SEL[1]), .Z(n47) );
  NAND3_X1 U12 ( .A1(n92), .A2(n192), .A3(n40), .ZN(n93) );
  BUF_X1 U13 ( .A(n99), .Z(n49) );
  OR2_X1 U14 ( .A1(SEL[1]), .A2(n77), .ZN(n99) );
  AND2_X1 U15 ( .A1(n52), .A2(n50), .ZN(n79) );
  AND2_X1 U16 ( .A1(SEL[1]), .A2(C[0]), .ZN(n50) );
  OR2_X1 U17 ( .A1(SEL[1]), .A2(n75), .ZN(n98) );
  NAND2_X2 U18 ( .A1(n47), .A2(n45), .ZN(n192) );
  AND2_X1 U19 ( .A1(n44), .A2(n85), .ZN(n51) );
  NOR2_X1 U20 ( .A1(n192), .A2(n73), .ZN(n197) );
  NOR2_X1 U21 ( .A1(n192), .A2(n72), .ZN(n188) );
  NOR2_X1 U22 ( .A1(n192), .A2(n71), .ZN(n182) );
  NOR2_X1 U23 ( .A1(n192), .A2(n70), .ZN(n176) );
  NOR2_X1 U24 ( .A1(n192), .A2(n69), .ZN(n170) );
  NOR2_X1 U25 ( .A1(n192), .A2(n68), .ZN(n164) );
  NOR2_X1 U26 ( .A1(n192), .A2(n67), .ZN(n158) );
  NOR2_X1 U27 ( .A1(n192), .A2(n66), .ZN(n152) );
  NOR2_X1 U28 ( .A1(n192), .A2(n141), .ZN(n145) );
  NOR2_X1 U29 ( .A1(n192), .A2(n133), .ZN(n137) );
  NOR2_X1 U30 ( .A1(n192), .A2(n125), .ZN(n129) );
  NOR2_X1 U31 ( .A1(n192), .A2(n117), .ZN(n121) );
  NOR2_X1 U32 ( .A1(n192), .A2(n109), .ZN(n113) );
  NOR2_X1 U33 ( .A1(n192), .A2(n101), .ZN(n105) );
  AND2_X1 U34 ( .A1(n76), .A2(n74), .ZN(n52) );
  NAND2_X1 U35 ( .A1(n45), .A2(n46), .ZN(n53) );
  AND2_X1 U36 ( .A1(n46), .A2(n52), .ZN(n54) );
  NOR2_X1 U37 ( .A1(n97), .A2(n87), .ZN(n88) );
  AND2_X2 U38 ( .A1(n85), .A2(n52), .ZN(n56) );
  NAND2_X1 U39 ( .A1(n43), .A2(n52), .ZN(n96) );
  INV_X1 U40 ( .A(n90), .ZN(n57) );
  INV_X1 U41 ( .A(n90), .ZN(n193) );
  NOR2_X1 U42 ( .A1(n90), .A2(n86), .ZN(n89) );
  NAND2_X1 U43 ( .A1(n76), .A2(n74), .ZN(n75) );
  NAND2_X1 U44 ( .A1(n76), .A2(SEL[0]), .ZN(n77) );
  NAND2_X1 U45 ( .A1(n43), .A2(n52), .ZN(n100) );
  NAND2_X1 U46 ( .A1(n41), .A2(n44), .ZN(n97) );
  NAND2_X1 U47 ( .A1(n85), .A2(n45), .ZN(n90) );
  AOI21_X1 U48 ( .B1(n80), .B2(D[0]), .A(n79), .ZN(n81) );
  INV_X2 U49 ( .A(n100), .ZN(n191) );
  INV_X1 U50 ( .A(E[8]), .ZN(n58) );
  INV_X1 U51 ( .A(E[9]), .ZN(n59) );
  INV_X1 U52 ( .A(E[10]), .ZN(n60) );
  INV_X1 U53 ( .A(E[11]), .ZN(n61) );
  INV_X1 U54 ( .A(E[12]), .ZN(n62) );
  INV_X1 U55 ( .A(E[13]), .ZN(n63) );
  INV_X1 U56 ( .A(E[14]), .ZN(n64) );
  INV_X1 U57 ( .A(E[15]), .ZN(n65) );
  INV_X1 U58 ( .A(D[8]), .ZN(n66) );
  INV_X1 U59 ( .A(D[9]), .ZN(n67) );
  INV_X1 U60 ( .A(D[10]), .ZN(n68) );
  INV_X1 U61 ( .A(D[11]), .ZN(n69) );
  INV_X1 U62 ( .A(D[12]), .ZN(n70) );
  INV_X1 U63 ( .A(D[13]), .ZN(n71) );
  INV_X1 U64 ( .A(D[14]), .ZN(n72) );
  INV_X1 U65 ( .A(D[15]), .ZN(n73) );
  INV_X1 U66 ( .A(SEL[0]), .ZN(n74) );
  INV_X1 U67 ( .A(SEL[2]), .ZN(n76) );
  NAND2_X1 U68 ( .A1(n96), .A2(E[0]), .ZN(n84) );
  INV_X1 U69 ( .A(SEL[1]), .ZN(n85) );
  NAND3_X1 U70 ( .A1(n53), .A2(n49), .A3(n48), .ZN(n83) );
  INV_X1 U71 ( .A(n98), .ZN(n91) );
  INV_X1 U72 ( .A(n99), .ZN(n78) );
  AOI22_X1 U73 ( .A1(n91), .A2(A[0]), .B1(n78), .B2(B[0]), .ZN(n82) );
  INV_X1 U74 ( .A(n97), .ZN(n80) );
  OAI211_X1 U75 ( .C1(n83), .C2(n84), .A(n82), .B(n81), .ZN(Y[0]) );
  AOI22_X1 U76 ( .A1(C[1]), .A2(n54), .B1(A[1]), .B2(n55), .ZN(n95) );
  INV_X1 U77 ( .A(B[1]), .ZN(n86) );
  INV_X1 U78 ( .A(D[1]), .ZN(n87) );
  NOR2_X1 U79 ( .A1(n89), .A2(n88), .ZN(n94) );
  NOR2_X1 U80 ( .A1(n193), .A2(n91), .ZN(n92) );
  NAND3_X1 U81 ( .A1(n93), .A2(n94), .A3(n95), .ZN(Y[1]) );
  INV_X1 U82 ( .A(E[2]), .ZN(n108) );
  NAND2_X1 U83 ( .A1(C[2]), .A2(n191), .ZN(n107) );
  INV_X1 U84 ( .A(D[2]), .ZN(n101) );
  NAND2_X1 U85 ( .A1(A[2]), .A2(n55), .ZN(n103) );
  NAND2_X1 U86 ( .A1(B[2]), .A2(n193), .ZN(n102) );
  NAND2_X1 U87 ( .A1(n103), .A2(n102), .ZN(n104) );
  NOR2_X1 U88 ( .A1(n105), .A2(n104), .ZN(n106) );
  OAI211_X1 U89 ( .C1(n200), .C2(n108), .A(n107), .B(n106), .ZN(Y[2]) );
  INV_X1 U90 ( .A(E[3]), .ZN(n116) );
  NAND2_X1 U91 ( .A1(C[3]), .A2(n191), .ZN(n115) );
  INV_X1 U92 ( .A(D[3]), .ZN(n109) );
  NAND2_X1 U93 ( .A1(A[3]), .A2(n56), .ZN(n111) );
  NAND2_X1 U94 ( .A1(B[3]), .A2(n51), .ZN(n110) );
  NAND2_X1 U95 ( .A1(n111), .A2(n110), .ZN(n112) );
  NOR2_X1 U96 ( .A1(n113), .A2(n112), .ZN(n114) );
  OAI211_X1 U97 ( .C1(n200), .C2(n116), .A(n115), .B(n114), .ZN(Y[3]) );
  INV_X1 U98 ( .A(E[4]), .ZN(n124) );
  NAND2_X1 U99 ( .A1(C[4]), .A2(n191), .ZN(n123) );
  INV_X1 U100 ( .A(D[4]), .ZN(n117) );
  NAND2_X1 U101 ( .A1(A[4]), .A2(n56), .ZN(n119) );
  NAND2_X1 U102 ( .A1(B[4]), .A2(n57), .ZN(n118) );
  NAND2_X1 U103 ( .A1(n119), .A2(n118), .ZN(n120) );
  NOR2_X1 U104 ( .A1(n121), .A2(n120), .ZN(n122) );
  OAI211_X1 U105 ( .C1(n200), .C2(n124), .A(n123), .B(n122), .ZN(Y[4]) );
  INV_X1 U106 ( .A(E[5]), .ZN(n132) );
  NAND2_X1 U107 ( .A1(C[5]), .A2(n191), .ZN(n131) );
  INV_X1 U108 ( .A(D[5]), .ZN(n125) );
  NAND2_X1 U109 ( .A1(A[5]), .A2(n56), .ZN(n127) );
  NAND2_X1 U110 ( .A1(B[5]), .A2(n51), .ZN(n126) );
  NAND2_X1 U111 ( .A1(n127), .A2(n126), .ZN(n128) );
  NOR2_X1 U112 ( .A1(n129), .A2(n128), .ZN(n130) );
  OAI211_X1 U113 ( .C1(n200), .C2(n132), .A(n131), .B(n130), .ZN(Y[5]) );
  INV_X1 U114 ( .A(E[6]), .ZN(n140) );
  NAND2_X1 U115 ( .A1(C[6]), .A2(n191), .ZN(n139) );
  INV_X1 U116 ( .A(D[6]), .ZN(n133) );
  NAND2_X1 U117 ( .A1(A[6]), .A2(n56), .ZN(n135) );
  NAND2_X1 U118 ( .A1(B[6]), .A2(n57), .ZN(n134) );
  NAND2_X1 U119 ( .A1(n135), .A2(n134), .ZN(n136) );
  NOR2_X1 U120 ( .A1(n137), .A2(n136), .ZN(n138) );
  OAI211_X1 U121 ( .C1(n200), .C2(n140), .A(n139), .B(n138), .ZN(Y[6]) );
  INV_X1 U122 ( .A(E[7]), .ZN(n148) );
  NAND2_X1 U123 ( .A1(C[7]), .A2(n191), .ZN(n147) );
  INV_X1 U124 ( .A(D[7]), .ZN(n141) );
  NAND2_X1 U125 ( .A1(A[7]), .A2(n56), .ZN(n143) );
  NAND2_X1 U126 ( .A1(B[7]), .A2(n51), .ZN(n142) );
  NAND2_X1 U127 ( .A1(n143), .A2(n142), .ZN(n144) );
  NOR2_X1 U128 ( .A1(n145), .A2(n144), .ZN(n146) );
  OAI211_X1 U129 ( .C1(n200), .C2(n148), .A(n147), .B(n146), .ZN(Y[7]) );
  NAND2_X1 U130 ( .A1(C[8]), .A2(n191), .ZN(n154) );
  NAND2_X1 U131 ( .A1(A[8]), .A2(n56), .ZN(n150) );
  NAND2_X1 U132 ( .A1(B[8]), .A2(n57), .ZN(n149) );
  NAND2_X1 U133 ( .A1(n150), .A2(n149), .ZN(n151) );
  NOR2_X1 U134 ( .A1(n152), .A2(n151), .ZN(n153) );
  OAI211_X1 U135 ( .C1(n200), .C2(n58), .A(n154), .B(n153), .ZN(Y[8]) );
  NAND2_X1 U136 ( .A1(C[9]), .A2(n191), .ZN(n160) );
  NAND2_X1 U137 ( .A1(A[9]), .A2(n56), .ZN(n156) );
  NAND2_X1 U138 ( .A1(B[9]), .A2(n51), .ZN(n155) );
  NAND2_X1 U139 ( .A1(n156), .A2(n155), .ZN(n157) );
  NOR2_X1 U140 ( .A1(n158), .A2(n157), .ZN(n159) );
  OAI211_X1 U141 ( .C1(n200), .C2(n59), .A(n160), .B(n159), .ZN(Y[9]) );
  NAND2_X1 U142 ( .A1(C[10]), .A2(n191), .ZN(n166) );
  NAND2_X1 U143 ( .A1(A[10]), .A2(n56), .ZN(n162) );
  NAND2_X1 U144 ( .A1(B[10]), .A2(n57), .ZN(n161) );
  NAND2_X1 U145 ( .A1(n162), .A2(n161), .ZN(n163) );
  NOR2_X1 U146 ( .A1(n164), .A2(n163), .ZN(n165) );
  OAI211_X1 U147 ( .C1(n200), .C2(n60), .A(n166), .B(n165), .ZN(Y[10]) );
  NAND2_X1 U148 ( .A1(C[11]), .A2(n191), .ZN(n172) );
  NAND2_X1 U149 ( .A1(A[11]), .A2(n56), .ZN(n168) );
  NAND2_X1 U150 ( .A1(B[11]), .A2(n51), .ZN(n167) );
  NAND2_X1 U151 ( .A1(n168), .A2(n167), .ZN(n169) );
  NOR2_X1 U152 ( .A1(n170), .A2(n169), .ZN(n171) );
  OAI211_X1 U153 ( .C1(n200), .C2(n61), .A(n172), .B(n171), .ZN(Y[11]) );
  NAND2_X1 U154 ( .A1(C[12]), .A2(n191), .ZN(n178) );
  NAND2_X1 U155 ( .A1(A[12]), .A2(n56), .ZN(n174) );
  NAND2_X1 U156 ( .A1(B[12]), .A2(n57), .ZN(n173) );
  NAND2_X1 U157 ( .A1(n174), .A2(n173), .ZN(n175) );
  NOR2_X1 U158 ( .A1(n176), .A2(n175), .ZN(n177) );
  OAI211_X1 U159 ( .C1(n200), .C2(n62), .A(n178), .B(n177), .ZN(Y[12]) );
  NAND2_X1 U160 ( .A1(C[13]), .A2(n191), .ZN(n184) );
  NAND2_X1 U161 ( .A1(A[13]), .A2(n56), .ZN(n180) );
  NAND2_X1 U162 ( .A1(B[13]), .A2(n51), .ZN(n179) );
  NAND2_X1 U163 ( .A1(n180), .A2(n179), .ZN(n181) );
  NOR2_X1 U164 ( .A1(n182), .A2(n181), .ZN(n183) );
  OAI211_X1 U165 ( .C1(n200), .C2(n63), .A(n184), .B(n183), .ZN(Y[13]) );
  NAND2_X1 U166 ( .A1(C[14]), .A2(n191), .ZN(n190) );
  NAND2_X1 U167 ( .A1(A[14]), .A2(n56), .ZN(n186) );
  NAND2_X1 U168 ( .A1(B[14]), .A2(n57), .ZN(n185) );
  NAND2_X1 U169 ( .A1(n186), .A2(n185), .ZN(n187) );
  NOR2_X1 U170 ( .A1(n188), .A2(n187), .ZN(n189) );
  OAI211_X1 U171 ( .C1(n200), .C2(n64), .A(n190), .B(n189), .ZN(Y[14]) );
  NAND2_X1 U172 ( .A1(C[15]), .A2(n191), .ZN(n199) );
  NAND2_X1 U173 ( .A1(A[15]), .A2(n56), .ZN(n195) );
  NAND2_X1 U174 ( .A1(B[15]), .A2(n51), .ZN(n194) );
  NAND2_X1 U175 ( .A1(n195), .A2(n194), .ZN(n196) );
  NOR2_X1 U176 ( .A1(n197), .A2(n196), .ZN(n198) );
  OAI211_X1 U177 ( .C1(n200), .C2(n65), .A(n199), .B(n198), .ZN(Y[15]) );
endmodule


module BOOTH_ENCODER_0 ( I, O );
  input [2:0] I;
  output [2:0] O;
  wire   n4, n5, n6, n7, n8, n9;

  OR2_X1 U1 ( .A1(I[1]), .A2(I[0]), .ZN(n9) );
  NOR2_X1 U2 ( .A1(n6), .A2(I[2]), .ZN(O[0]) );
  NOR2_X1 U3 ( .A1(I[1]), .A2(I[0]), .ZN(n6) );
  INV_X1 U4 ( .A(n6), .ZN(n4) );
  XNOR2_X1 U5 ( .A(I[2]), .B(n5), .ZN(n7) );
  NAND2_X1 U6 ( .A1(I[1]), .A2(I[0]), .ZN(n5) );
  NOR2_X1 U7 ( .A1(n9), .A2(n8), .ZN(O[2]) );
  AND2_X2 U8 ( .A1(n7), .A2(n4), .ZN(O[1]) );
  INV_X1 U9 ( .A(I[2]), .ZN(n8) );
endmodule


module BOOTHMUL_N8 ( A, B, P );
  input [7:0] A;
  input [7:0] B;
  output [15:0] P;
  wire   \mux_out[3][15] , \mux_out[3][14] , \mux_out[3][13] ,
         \mux_out[3][12] , \mux_out[3][11] , \mux_out[3][10] , \mux_out[3][9] ,
         \mux_out[3][8] , \mux_out[3][7] , \mux_out[3][6] , \mux_out[3][5] ,
         \mux_out[3][4] , \mux_out[3][3] , \mux_out[3][2] , \mux_out[3][1] ,
         \mux_out[3][0] , \mux_out[2][15] , \mux_out[2][14] , \mux_out[2][13] ,
         \mux_out[2][12] , \mux_out[2][11] , \mux_out[2][10] , \mux_out[2][9] ,
         \mux_out[2][8] , \mux_out[2][7] , \mux_out[2][6] , \mux_out[2][5] ,
         \mux_out[2][4] , \mux_out[2][3] , \mux_out[2][2] , \mux_out[2][1] ,
         \mux_out[2][0] , \mux_out[1][15] , \mux_out[1][14] , \mux_out[1][13] ,
         \mux_out[1][12] , \mux_out[1][11] , \mux_out[1][10] , \mux_out[1][9] ,
         \mux_out[1][8] , \mux_out[1][7] , \mux_out[1][6] , \mux_out[1][5] ,
         \mux_out[1][4] , \mux_out[1][3] , \mux_out[1][2] , \mux_out[1][1] ,
         \mux_out[1][0] , \smA[3][12] , \smA[3][11] , \smA[3][10] ,
         \smA[3][9] , \add_in[3][15] , \add_in[3][14] , \add_in[3][13] ,
         \add_in[3][12] , \add_in[3][11] , \add_in[3][10] , \add_in[3][9] ,
         \add_in[3][8] , \add_in[3][7] , \add_in[3][6] , \add_in[3][5] ,
         \add_in[3][4] , \add_in[3][3] , \add_in[3][2] , \add_in[3][1] ,
         \add_in[3][0] , \add_in[2][15] , \add_in[2][14] , \add_in[2][13] ,
         \add_in[2][12] , \add_in[2][11] , \add_in[2][10] , \add_in[2][9] ,
         \add_in[2][8] , \add_in[2][7] , \add_in[2][6] , \add_in[2][5] ,
         \add_in[2][4] , \add_in[2][3] , \add_in[2][2] , \add_in[2][1] ,
         \add_in[2][0] , \add_in[1][15] , \add_in[1][14] , \add_in[1][13] ,
         \add_in[1][12] , \add_in[1][11] , \add_in[1][10] , \add_in[1][9] ,
         \add_in[1][8] , \add_in[1][7] , \add_in[1][6] , \add_in[1][5] ,
         \add_in[1][4] , \add_in[1][3] , \add_in[1][2] , \add_in[1][1] ,
         \add_in[1][0] , \add_in[0][15] , \add_in[0][14] , \add_in[0][13] ,
         \add_in[0][12] , \add_in[0][11] , \add_in[0][10] , \add_in[0][9] ,
         \add_in[0][8] , \add_in[0][7] , \add_in[0][6] , \add_in[0][5] ,
         \add_in[0][4] , \add_in[0][3] , \add_in[0][2] , \add_in[0][1] ,
         \add_in[0][0] , n60, n61, n73, net17656, net18319, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135;
  wire   [11:0] encoder_out;
  wire   [3:0] mode;
  assign mode[0] = B[1];

  BOOTH_ENCODER_0 enc_i_0 ( .I({mode[0], B[0], 1'b0}), .O(encoder_out[2:0]) );
  BOOTH_ENCODER_3 enc_i_1 ( .I({B[3:2], mode[0]}), .O(encoder_out[5:3]) );
  BOOTH_ENCODER_2 enc_i_2 ( .I({B[5:4], n93}), .O(encoder_out[8:6]) );
  BOOTH_ENCODER_1 enc_i_3 ( .I(B[7:5]), .O(encoder_out[11:9]) );
  MUX51_GENERIC_N16_0 mux_i_0 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({n102, n104, 
        n104, n104, n104, n104, n104, n104, n103, A[6:0]}), .C({n110, n108, 
        n106, n106, n109, n111, n112, n109, n109, \smA[3][12] , \smA[3][11] , 
        \smA[3][10] , \smA[3][9] , n133, n134, n135}), .D({n101, n101, n101, 
        n101, n101, n101, n102, n102, A[6:0], 1'b0}), .E({n113, n106, n107, 
        n107, n107, n105, n108, n108, \smA[3][12] , \smA[3][11] , \smA[3][10] , 
        \smA[3][9] , n133, n134, n135, 1'b1}), .SEL(encoder_out[2:0]), .Y({
        \add_in[0][15] , \add_in[0][14] , \add_in[0][13] , \add_in[0][12] , 
        \add_in[0][11] , \add_in[0][10] , \add_in[0][9] , \add_in[0][8] , 
        \add_in[0][7] , \add_in[0][6] , \add_in[0][5] , \add_in[0][4] , 
        \add_in[0][3] , \add_in[0][2] , \add_in[0][1] , \add_in[0][0] }) );
  MUX51_GENERIC_N16_3 mux_i_1 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({n103, n103, 
        n103, n103, n103, n103, n104, A[6:0], 1'b0, 1'b0}), .C({n110, n112, 
        n111, n113, n110, n111, n112, \smA[3][12] , \smA[3][11] , \smA[3][10] , 
        \smA[3][9] , n133, n134, n135, 1'b1, 1'b1}), .D({n101, n101, n101, 
        n101, n101, n101, A[6:0], 1'b0, 1'b0, 1'b0}), .E({n106, n106, n105, 
        n106, n105, n105, \smA[3][12] , \smA[3][11] , \smA[3][10] , 
        \smA[3][9] , n133, n134, n135, 1'b1, 1'b1, 1'b1}), .SEL(
        encoder_out[5:3]), .Y({\mux_out[1][15] , \mux_out[1][14] , 
        \mux_out[1][13] , \mux_out[1][12] , \mux_out[1][11] , \mux_out[1][10] , 
        \mux_out[1][9] , \mux_out[1][8] , \mux_out[1][7] , \mux_out[1][6] , 
        \mux_out[1][5] , \mux_out[1][4] , \mux_out[1][3] , \mux_out[1][2] , 
        \mux_out[1][1] , \mux_out[1][0] }) );
  MUX51_GENERIC_N16_2 mux_i_2 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({n102, n102, 
        n102, n102, n102, A[6:0], 1'b0, 1'b0, 1'b0, 1'b0}), .C({n113, n113, 
        n114, n114, n111, \smA[3][12] , \smA[3][11] , \smA[3][10] , 
        \smA[3][9] , n133, n134, n135, 1'b1, 1'b1, 1'b1, 1'b1}), .D({n103, 
        n103, n103, n103, A[6:0], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .E({n111, 
        n111, n110, n112, \smA[3][12] , \smA[3][11] , \smA[3][10] , 
        \smA[3][9] , n133, n134, n135, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1}), .SEL(
        encoder_out[8:6]), .Y({\mux_out[2][15] , \mux_out[2][14] , 
        \mux_out[2][13] , \mux_out[2][12] , \mux_out[2][11] , \mux_out[2][10] , 
        \mux_out[2][9] , \mux_out[2][8] , \mux_out[2][7] , \mux_out[2][6] , 
        \mux_out[2][5] , \mux_out[2][4] , \mux_out[2][3] , \mux_out[2][2] , 
        \mux_out[2][1] , \mux_out[2][0] }) );
  MUX51_GENERIC_N16_1 mux_i_3 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({n102, n102, 
        n102, A[6:0], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .C({n110, n113, 
        n113, \smA[3][12] , \smA[3][11] , \smA[3][10] , \smA[3][9] , n133, 
        n134, n135, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1}), .D({n103, n102, 
        A[6:0], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .E({n113, n113, 
        \smA[3][12] , \smA[3][11] , \smA[3][10] , \smA[3][9] , n133, n134, 
        n135, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1}), .SEL(
        encoder_out[11:9]), .Y({\mux_out[3][15] , \mux_out[3][14] , 
        \mux_out[3][13] , \mux_out[3][12] , \mux_out[3][11] , \mux_out[3][10] , 
        \mux_out[3][9] , \mux_out[3][8] , \mux_out[3][7] , \mux_out[3][6] , 
        \mux_out[3][5] , \mux_out[3][4] , \mux_out[3][3] , \mux_out[3][2] , 
        \mux_out[3][1] , \mux_out[3][0] }) );
  RCA_generic_N16_0 add_i_0 ( .A({\mux_out[1][15] , \mux_out[1][14] , 
        \mux_out[1][13] , \mux_out[1][12] , \mux_out[1][11] , \mux_out[1][10] , 
        \mux_out[1][9] , \mux_out[1][8] , \mux_out[1][7] , \mux_out[1][6] , 
        \mux_out[1][5] , \mux_out[1][4] , \mux_out[1][3] , \mux_out[1][2] , 
        \mux_out[1][1] , \mux_out[1][0] }), .B({\add_in[0][15] , 
        \add_in[0][14] , \add_in[0][13] , \add_in[0][12] , \add_in[0][11] , 
        \add_in[0][10] , \add_in[0][9] , \add_in[0][8] , \add_in[0][7] , 
        \add_in[0][6] , \add_in[0][5] , \add_in[0][4] , \add_in[0][3] , 
        \add_in[0][2] , \add_in[0][1] , \add_in[0][0] }), .Ci(mode[0]), .S({
        \add_in[1][15] , \add_in[1][14] , \add_in[1][13] , \add_in[1][12] , 
        \add_in[1][11] , \add_in[1][10] , \add_in[1][9] , \add_in[1][8] , 
        \add_in[1][7] , \add_in[1][6] , \add_in[1][5] , \add_in[1][4] , 
        \add_in[1][3] , \add_in[1][2] , \add_in[1][1] , \add_in[1][0] }) );
  RCA_generic_N16_2 add_i_1 ( .A({\mux_out[2][15] , \mux_out[2][14] , 
        \mux_out[2][13] , \mux_out[2][12] , \mux_out[2][11] , \mux_out[2][10] , 
        \mux_out[2][9] , \mux_out[2][8] , \mux_out[2][7] , \mux_out[2][6] , 
        \mux_out[2][5] , \mux_out[2][4] , \mux_out[2][3] , \mux_out[2][2] , 
        \mux_out[2][1] , \mux_out[2][0] }), .B({\add_in[1][15] , 
        \add_in[1][14] , \add_in[1][13] , \add_in[1][12] , \add_in[1][11] , 
        \add_in[1][10] , \add_in[1][9] , \add_in[1][8] , \add_in[1][7] , 
        \add_in[1][6] , \add_in[1][5] , \add_in[1][4] , \add_in[1][3] , 
        \add_in[1][2] , \add_in[1][1] , \add_in[1][0] }), .Ci(mode[1]), .S({
        \add_in[2][15] , \add_in[2][14] , \add_in[2][13] , \add_in[2][12] , 
        \add_in[2][11] , \add_in[2][10] , \add_in[2][9] , \add_in[2][8] , 
        \add_in[2][7] , \add_in[2][6] , \add_in[2][5] , \add_in[2][4] , 
        \add_in[2][3] , \add_in[2][2] , \add_in[2][1] , \add_in[2][0] }) );
  RCA_generic_N16_1 add_i_2 ( .A({\mux_out[3][15] , \mux_out[3][14] , 
        \mux_out[3][13] , \mux_out[3][12] , \mux_out[3][11] , \mux_out[3][10] , 
        \mux_out[3][9] , \mux_out[3][8] , \mux_out[3][7] , \mux_out[3][6] , 
        \mux_out[3][5] , \mux_out[3][4] , \mux_out[3][3] , \mux_out[3][2] , 
        \mux_out[3][1] , \mux_out[3][0] }), .B({\add_in[2][15] , 
        \add_in[2][14] , \add_in[2][13] , \add_in[2][12] , \add_in[2][11] , 
        \add_in[2][10] , \add_in[2][9] , \add_in[2][8] , \add_in[2][7] , 
        \add_in[2][6] , \add_in[2][5] , \add_in[2][4] , \add_in[2][3] , 
        \add_in[2][2] , \add_in[2][1] , \add_in[2][0] }), .Ci(mode[2]), .S({
        \add_in[3][15] , \add_in[3][14] , \add_in[3][13] , \add_in[3][12] , 
        \add_in[3][11] , \add_in[3][10] , \add_in[3][9] , \add_in[3][8] , 
        \add_in[3][7] , \add_in[3][6] , \add_in[3][5] , \add_in[3][4] , 
        \add_in[3][3] , \add_in[3][2] , \add_in[3][1] , \add_in[3][0] }) );
  XNOR2_X1 U71 ( .A(\add_in[3][15] ), .B(n86), .ZN(P[15]) );
  NAND2_X1 U72 ( .A1(\add_in[3][14] ), .A2(n90), .ZN(n86) );
  AND2_X1 U73 ( .A1(\add_in[3][13] ), .A2(n87), .ZN(n90) );
  INV_X1 U74 ( .A(n88), .ZN(n87) );
  NAND2_X1 U75 ( .A1(\add_in[3][13] ), .A2(n87), .ZN(n92) );
  XNOR2_X1 U76 ( .A(\add_in[3][14] ), .B(n92), .ZN(P[14]) );
  XNOR2_X1 U77 ( .A(\add_in[3][13] ), .B(n88), .ZN(P[13]) );
  NAND2_X1 U78 ( .A1(\add_in[3][12] ), .A2(n89), .ZN(n88) );
  AND2_X1 U79 ( .A1(\add_in[3][11] ), .A2(net18319), .ZN(n89) );
  XOR2_X1 U80 ( .A(\add_in[3][12] ), .B(n91), .Z(P[12]) );
  AND2_X1 U81 ( .A1(\add_in[3][11] ), .A2(net18319), .ZN(n91) );
  XNOR2_X1 U82 ( .A(\add_in[3][11] ), .B(net17656), .ZN(P[11]) );
  AOI21_X1 U83 ( .B1(mode[0]), .B2(B[2]), .A(n61), .ZN(mode[1]) );
  AND2_X1 U84 ( .A1(\add_in[3][10] ), .A2(n97), .ZN(net18319) );
  BUF_X2 U85 ( .A(B[3]), .Z(n93) );
  BUF_X1 U86 ( .A(A[7]), .Z(n98) );
  INV_X1 U87 ( .A(n114), .ZN(n101) );
  INV_X1 U88 ( .A(n115), .ZN(n102) );
  INV_X1 U89 ( .A(n115), .ZN(n103) );
  NAND2_X1 U90 ( .A1(\add_in[3][2] ), .A2(n96), .ZN(n121) );
  NAND2_X1 U91 ( .A1(\add_in[3][3] ), .A2(n122), .ZN(n123) );
  NAND2_X1 U92 ( .A1(\add_in[3][7] ), .A2(n95), .ZN(n130) );
  XOR2_X1 U93 ( .A(\add_in[3][10] ), .B(n97), .Z(P[10]) );
  AND2_X1 U94 ( .A1(\add_in[3][9] ), .A2(n94), .ZN(n97) );
  INV_X1 U95 ( .A(n93), .ZN(n61) );
  INV_X1 U96 ( .A(A[3]), .ZN(\smA[3][9] ) );
  INV_X1 U97 ( .A(A[4]), .ZN(\smA[3][10] ) );
  INV_X1 U98 ( .A(A[6]), .ZN(\smA[3][12] ) );
  INV_X1 U99 ( .A(A[5]), .ZN(\smA[3][11] ) );
  AOI21_X1 U100 ( .B1(B[4]), .B2(n93), .A(n60), .ZN(mode[2]) );
  INV_X1 U101 ( .A(B[5]), .ZN(n60) );
  BUF_X1 U102 ( .A(A[7]), .Z(n99) );
  NAND2_X1 U103 ( .A1(B[7]), .A2(n116), .ZN(n73) );
  BUF_X1 U104 ( .A(A[7]), .Z(n100) );
  AND2_X1 U105 ( .A1(\add_in[3][8] ), .A2(n131), .ZN(n94) );
  AND2_X1 U106 ( .A1(\add_in[3][6] ), .A2(n128), .ZN(n95) );
  AND2_X1 U107 ( .A1(\add_in[3][1] ), .A2(n119), .ZN(n96) );
  NAND2_X1 U108 ( .A1(\add_in[3][8] ), .A2(n131), .ZN(n132) );
  XNOR2_X1 U109 ( .A(\add_in[3][0] ), .B(n73), .ZN(P[0]) );
  NAND2_X1 U110 ( .A1(\add_in[3][4] ), .A2(n124), .ZN(n125) );
  NAND2_X1 U111 ( .A1(\add_in[3][10] ), .A2(n97), .ZN(net17656) );
  NAND2_X1 U112 ( .A1(\add_in[3][5] ), .A2(n126), .ZN(n127) );
  NAND2_X1 U113 ( .A1(\add_in[3][6] ), .A2(n128), .ZN(n129) );
  NAND2_X1 U114 ( .A1(\add_in[3][1] ), .A2(n119), .ZN(n120) );
  NAND2_X1 U115 ( .A1(\add_in[3][0] ), .A2(n117), .ZN(n118) );
  INV_X1 U116 ( .A(n115), .ZN(n104) );
  INV_X1 U117 ( .A(n98), .ZN(n105) );
  INV_X1 U118 ( .A(n98), .ZN(n106) );
  INV_X1 U119 ( .A(n98), .ZN(n107) );
  INV_X1 U120 ( .A(n98), .ZN(n108) );
  INV_X1 U121 ( .A(n98), .ZN(n109) );
  INV_X1 U122 ( .A(n99), .ZN(n110) );
  INV_X1 U123 ( .A(n99), .ZN(n111) );
  INV_X1 U124 ( .A(n99), .ZN(n112) );
  INV_X1 U125 ( .A(n99), .ZN(n113) );
  INV_X1 U126 ( .A(n100), .ZN(n114) );
  INV_X1 U127 ( .A(n100), .ZN(n115) );
  INV_X1 U128 ( .A(A[0]), .ZN(n135) );
  INV_X1 U129 ( .A(A[1]), .ZN(n134) );
  INV_X1 U130 ( .A(A[2]), .ZN(n133) );
  NAND2_X1 U131 ( .A1(B[6]), .A2(B[5]), .ZN(n116) );
  INV_X1 U132 ( .A(n73), .ZN(n117) );
  XNOR2_X1 U133 ( .A(\add_in[3][1] ), .B(n118), .ZN(P[1]) );
  INV_X1 U134 ( .A(n118), .ZN(n119) );
  XNOR2_X1 U135 ( .A(\add_in[3][2] ), .B(n120), .ZN(P[2]) );
  XNOR2_X1 U136 ( .A(\add_in[3][3] ), .B(n121), .ZN(P[3]) );
  INV_X1 U137 ( .A(n121), .ZN(n122) );
  XNOR2_X1 U138 ( .A(\add_in[3][4] ), .B(n123), .ZN(P[4]) );
  INV_X1 U139 ( .A(n123), .ZN(n124) );
  XNOR2_X1 U140 ( .A(\add_in[3][5] ), .B(n125), .ZN(P[5]) );
  INV_X1 U141 ( .A(n125), .ZN(n126) );
  XNOR2_X1 U142 ( .A(\add_in[3][6] ), .B(n127), .ZN(P[6]) );
  INV_X1 U143 ( .A(n127), .ZN(n128) );
  XNOR2_X1 U144 ( .A(\add_in[3][7] ), .B(n129), .ZN(P[7]) );
  XNOR2_X1 U145 ( .A(\add_in[3][8] ), .B(n130), .ZN(P[8]) );
  INV_X1 U146 ( .A(n130), .ZN(n131) );
  XNOR2_X1 U147 ( .A(\add_in[3][9] ), .B(n132), .ZN(P[9]) );
endmodule

