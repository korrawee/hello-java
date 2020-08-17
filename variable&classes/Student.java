public class Student{
	private String studentName;
	private String favoriteSubject;
	private  int  studentAge;
	private String  studentId;
	private char studentGender;	
	public Student(String name){
		studentName = name;
	}
	
	public void setFavSubject(String subject){
		favoriteSubject = subject;
	} 	
	
	public void setAge(int stAge){
		studentAge = stAge;
	}

	public void setId(String stId){
		studentId = stId;
	}	
	
	public void setGender(char gender){
		studentGender = gender;
	}	
	public void studentInfo(){
		System.out.println("--------------------------");
		System.out.println("Student Infomation:");
		System.out.println("Name: " + studentName);
		System.out.println("Student Number:" + studentId);
		System.out.println("Age: " + studentAge);
		System.out.println("Gender: " + studentGender);
		System.out.println("Favorite Subject: " + favoriteSubject);
	}
}	
