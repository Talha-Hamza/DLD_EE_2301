`timescale 1ns / 1ps

module Traffic_controller_tb(
    ); 
    reg input0, input1, input2;
    wire green1;
    wire green2;
    wire red1;
    wire red2;
    wire yellow1;
    wire yellow2;
  
    TrafficLightController lab3(
            .C0(input0),
            .C1(input1),
            .C2(input2),
            .G1(green1),
            .G2(green2),
            .R1(red1),
            .R2(red2),
            .Y1(yellow1),
            .Y2(yellow2)
    );
    
    initial
    begin
        input2 = 0; input1 = 0; input0 = 0;
        #50;
        $display("input 0: %d", input0,"  input 1: %d", input1, "  input 2: %d", input2);
        $display("Light 1:");
        $display("  Green Light: %d", green1, "  Yellow Light: %d", yellow1, "  Red Light: %d", red1);
        $display("Light 2:");
        $display("  Green Light: %d", green2, "  Yellow Light: %d", yellow2," Red Light: %d", red2,);

        
        input2 = 0; input1 = 0; input0 = 1;
        #50;
        $display("input 0: %d", input0,"  input 1: %d", input1, "  input 2: %d", input2);
        $display("Light 1:");
        $display("  Green Light: %d", green1, "  Yellow Light: %d", yellow1, "  Red Light: %d", red1);
        $display("Light 2:");
        $display("  Green Light: %d", green2, "  Yellow Light: %d", yellow2," Red Light: %d", red2,);

        
        input2 = 0; input1 = 1; input0 = 0;
        #50;
        $display("input 0: %d", input0,"  input 1: %d", input1, "  input 2: %d", input2);
        $display("Light 1:");
        $display("  Green Light: %d", green1, "  Yellow Light: %d", yellow1, "  Red Light: %d", red1);
        $display("Light 2:");
        $display("  Green Light: %d", green2, "  Yellow Light: %d", yellow2," Red Light: %d", red2,);

        
        input2 = 0; input1 = 1; input0 = 1;
        #50;
        $display("input 0: %d", input0,"  input 1: %d", input1, "  input 2: %d", input2);
        $display("Light 1:");
        $display("  Green Light: %d", green1, "  Yellow Light: %d", yellow1, "  Red Light: %d", red1);
        $display("Light 2:");
        $display("  Green Light: %d", green2, "  Yellow Light: %d", yellow2," Red Light: %d", red2,);
        
        
        input2 = 1; input1 = 0; input0 = 0;
        #50;
        $display("input 0: %d", input0,"  input 1: %d", input1, "  input 2: %d", input2);
        $display("Light 1:");
        $display("  Green Light: %d", green1, "  Yellow Light: %d", yellow1, "  Red Light: %d", red1);
        $display("Light 2:");
        $display("  Green Light: %d", green2, "  Yellow Light: %d", yellow2," Red Light: %d", red2,);

        input2 = 1; input1 = 0; input0 = 1;
        #50;
        $display("input 0: %d", input0,"  input 1: %d", input1, "  input 2: %d", input2);
        $display("Light 1:");
        $display("  Green Light: %d", green1, "  Yellow Light: %d", yellow1, "  Red Light: %d", red1);
        $display("Light 2:");
        $display("  Green Light: %d", green2, "  Yellow Light: %d", yellow2," Red Light: %d", red2,);

        
        input2 = 1; input1 = 1; input0 = 0;
        #50;
        $display("input 0: %d", input0,"  input 1: %d", input1, "  input 2: %d", input2);
        $display("Light 1:");
        $display("  Green Light: %d", green1, "  Yellow Light: %d", yellow1, "  Red Light: %d", red1);
        $display("Light 2:");
        $display("  Green Light: %d", green2, "  Yellow Light: %d", yellow2," Red Light: %d", red2,);

       
        input2 = 1; input1 = 1; input0 = 1;
        #50;
        $display("input 0: %d", input0,"  input 1: %d", input1, "  input 2: %d", input2);
        $display("Light 1:");
        $display("  Green Light: %d", green1, "  Yellow Light: %d", yellow1, "  Red Light: %d", red1);
        $display("Light 2:");
        $display("  Green Light: %d", green2, "  Yellow Light: %d", yellow2," Red Light: %d", red2,);


    end
endmodule
