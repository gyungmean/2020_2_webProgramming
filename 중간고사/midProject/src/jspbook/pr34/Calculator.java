package jspbook.pr34;
//20190941 컴퓨터학과 김경민
public class Calculator {
	int op1, op2;
	String operator;
	
	public int getOp1() {
		return op1;
	}
	public void setOp1(int op1) {
		this.op1 = op1;
	}
	public int getOp2() {
		return op2;
	}
	public void setOp2(int op2) {
		this.op2 = op2;
	}
	public String getOoperator() {
		return operator;
	}
	public void setOoperator(String operator) {
		this.operator = operator;
	}
	
	public int calc() {
		int result = 0;
		
		if(operator.equals("+")){
			result = op1 + op2;
		}else if(operator.equals("-")){
			result = op1 - op2;
		}else if(operator.equals("*")){
			result = op1 * op2;
		}else if(operator.equals("/")){
			result = op1 / op2;
		}
		return result;
	}
	
}
