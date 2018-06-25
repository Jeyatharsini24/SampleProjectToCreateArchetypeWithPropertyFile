#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
package ${symbol_dollar}{package};

public class MainClass {
	String value = "${symbol_dollar}{namespace}";
	public static void main(String[] args) {
		System.out.println("Hello world");
	}
}