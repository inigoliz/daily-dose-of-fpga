
module main (
  input i_clk,
  input i_switch,
  output o_led_red,
  output o_led_blue
  );

  reg r_led_red = 1'b0;
  reg r_led_green = 1'b1;
  reg r_switch = 1'b0;

  always @(posedge i_clk)
  begin
    r_switch <= i_switch;

    if (i_switch == 1'b0 && r_switch == 1'b1)
    begin
      r_led_red <= ~r_led_red;
      r_led_green <= ~r_led_green;
    end
  end
  assign o_led_red = r_led_red;
  assign o_led_blue = r_led_green;
endmodule
