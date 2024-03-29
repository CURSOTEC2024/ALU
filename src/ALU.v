module ALU (
    input [3:0] A,	 //ENTRADA DEL DATO "A" DE 4 BITS
    input [3:0] B,	 //ENTRADA DEL DATO "B" DE 4 BITS	
    input [2:0] SEL, //SELECTOR DE OPERACION
	
    output [3:0] ALU_OUT,
	
    output reg CARRY_OUT,
    output reg OVERFLOW,
    output reg ZERO,
    output reg SIGNO
);		  


reg [3:0] RESULTADO;
assign ALU_OUT = RESULTADO;

always @*	
	case(SEL) 
        3'b000: begin // Suma
			{CARRY_OUT,RESULTADO} = A + B;	
			OVERFLOW = (A[3]==B[3])&(A[3]!=RESULTADO[3]);
  		    ZERO = (RESULTADO==4'b0000);
			SIGNO = RESULTADO[3]==1;	
			
		end	
        3'b001: begin // Resta
 			{CARRY_OUT,RESULTADO} = A - B;	
			OVERFLOW = (A[3] & ~B[3] & ~RESULTADO[3]) | (~A[3] & B[3] & RESULTADO[3]);
  		    ZERO = (RESULTADO==4'b0000);
			SIGNO = RESULTADO[3]==1; 
			
			
        end
        3'b010: begin // AND
    	    RESULTADO = A & B;
			CARRY_OUT = 0;
			OVERFLOW = 0;
  		    ZERO = (RESULTADO==4'b0000);
			SIGNO = RESULTADO[3]==1;
			
        end
        3'b011: begin // OR
    	    RESULTADO = A | B;
			CARRY_OUT = 0;
			OVERFLOW = 0;
  		    ZERO = (RESULTADO==4'b0000);
			SIGNO = RESULTADO[3]==1; 
			
        end
        3'b100: begin // XOR
    	    RESULTADO = A ^ B;
			CARRY_OUT = 0;
			OVERFLOW = 0;
  		    ZERO = (RESULTADO==4'b0000);
			SIGNO = RESULTADO[3]==1; 
			
        end			   
		3'b101: begin // NAND
    	    RESULTADO = ~(A & B);
			CARRY_OUT = 0;
			OVERFLOW = 0;
  		    ZERO = (RESULTADO==4'b0000);
			SIGNO = RESULTADO[3]==1;   
			
        end
		3'b110: begin // XNOR
     	    RESULTADO = ~(A ^ B);
			CARRY_OUT = 0;
			OVERFLOW = 0;
  		    ZERO = (RESULTADO==4'b0000);
			SIGNO = RESULTADO[3]==1;    
			
        end
		3'b111: begin // NOR
    	    RESULTADO = ~(A | B);
			CARRY_OUT = 0;
			OVERFLOW = 0;
  		    ZERO = (RESULTADO==4'b0000);
			SIGNO = RESULTADO[3]==1; 
			
        end		 
		
        default: begin
  		 RESULTADO = 4'bzzzz;	
		   CARRY_OUT = 1'bz;
			OVERFLOW = 1'bz;
  		    ZERO = 1'bz;
			SIGNO = 1'bz ;
        end
    endcase
	endmodule

