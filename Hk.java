//College.java (User class)

class  College {

	public static void main(String[] args) {

		

		//Creating instances for objects HK, BK and PK

		Student s1 = new Student();

		Student s2 = new Student();

		Student s3 = new Student();



		//initializing s1 instance with the object HK values

		s1.sno		= 101;

		s1.sname	= "HK";

		s1.course	= "CJ";

		s1.fee		= 3500;

	 

		//initializing s2 instance with the object BK values

		s2.sno		= 102;

		s2.sname	= "BK";

		s2.course	= "Acting";

		s2.fee		= 4500;

	 

		//initializing s3 instance with the object PK values

		s3.sno		= 103;

		s3.sname	= "PK";

		s3.course	= "Policitcs";

		s3.fee		= 5500;

	 

		System.out.println("s1 object details");

		System.out.println("  s1.sno\t: "	+ s1.sno);

		System.out.println("  s1.sname\t: "	+ s1.sname);

		System.out.println("  s1.course\t: "+ s1.course);

		System.out.println("  s1.fee\t: "	+ s1.fee);



		System.out.println("\ns2 object details");

		System.out.println("  s2.sno\t: "	+ s2.sno);

		System.out.println("  s2.sname\t: "	+ s2.sname);

		System.out.println("  s2.course\t: "+ s2.course);

		System.out.println("  s2.fee\t: "	+ s2.fee);



		System.out.println("\ns3 object details");

		System.out.println("  s3.sno\t: "	+ s3.sno);

		System.out.println("  s3.sname\t: "	+ s3.sname);

		System.out.println("  s3.course\t: "+ s3.course);

		System.out.println("  s3.fee\t: "	+ s3.fee);



	}

}

/*

Save above two java files in a single folder

Compiler and execute College class



>javac College.java

	|-> College.class

	|-> Student.class

	

>java College

	O/P

*/
