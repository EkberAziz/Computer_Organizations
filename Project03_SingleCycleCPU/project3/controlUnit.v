module controlUnit (ALUOp, RegDst, RegWrite, ALUSrc, MemRead, MemWrite,MemToReg, Branch, Jump, Instruction);
   input  [5:0] Instruction;
   output [1:0] ALUOp;
   output       RegDst, RegWrite, ALUSrc, MemRead, MemWrite, MemToReg, Branch, Jump;
   wire [1:0]  ALUOp;
   wire          RegDst, RegWrite, ALUSrc, MemRead, MemWrite, MemToReg, Branch, Jump;

	//addu, subu, mult, div, and, or, xor, sll, sra, srl, slt, sltu, jr
	assign RegDst = (Instruction==6'd0) ? 1'b1 : 1'bz;
	assign RegWrite = (Instruction==6'd0) ? 1'b1 : 1'bz;
	assign ALUSrc = (Instruction==6'd0) ? 1'b0 : 1'bz;
	assign MemRead = (Instruction==6'd0) ? 1'b0 : 1'bz;
	assign MemWrite = (Instruction==6'd0) ? 1'b0 : 1'bz;
	assign MemToReg = (Instruction==6'd0) ? 1'b0 : 1'bz;
	assign Branch = (Instruction==6'd0) ? 1'b0 : 1'bz;
	assign Jump = (Instruction==6'd0) ? 1'b0 : 1'bz;
	assign ALUOp = (Instruction==6'd0) ? 2'b10 : 2'bz;
	
   
endmodule
		