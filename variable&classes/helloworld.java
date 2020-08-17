public class helloworld{
	
	public static double calBMI(double w, double h){
		double result = w/(h*h);
		System.out.println("From double type, My BMI: " + result);
		return result;
	}
	public static float calBMI(float w, float h){
		float result = w/(h*h);
		System.out.println("From folat type, My BMI: " + result);
		return result;
	}

	public static void main(String []args){
		char[] array = {'H', 'e', 'l', 'l', 'o', ' ', /*define Array of char*/
				 'W', 'o', 'r', 'l', 'd'};
		String greeting = new String(array); /* define String_obj convert array of char to string*/
		
		float heightF = 172.5f; /*FLOAT*/
		float weightF = 59.5f;
		System.out.printf("Float:\nWeight: %.2f\nHeight: %.2f\n", weightF, heightF);

		double weightD = 59.5; /*DOUBLE*/
		double heightD = 172.5;
		System.out.printf("Double:\nWeight: %.2f\nHeight: %.2f\n\n", weightD, heightD);
		
		calBMI(weightF, heightF); /*Call calBMI method*/
		calBMI(weightD, heightD);	

		System.out.println("Array of char: " + array);
		System.out.println(array);
		System.out.println("String: " + greeting + "\n");

		Student s1 = new Student("Korrawee");	/* Create Student's object*/

		s1.setId("6201012620023"); /* use setter method*/	
		s1.setAge(20);
		s1.setGender('M');
		s1.setFavSubject("Software Developement Practice I");

		s1.studentInfo();
	}
}

