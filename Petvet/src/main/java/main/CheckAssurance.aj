package main;
import java.util.Scanner;

public aspect CheckAssurance {
	pointcut verifyAssurance(): execution(void PetStore.makeAppointment(..));
	
	before(): verifyAssurance() {
		System.out.println("Verifying assurance:");
		Scanner sc = new Scanner(System.in);
		System.out.println("Name of your pet: ");
		String name = sc.nextLine();
		System.out.println("Welcome " + name);
		System.out.println("You are able to use this service");
	}
	
	after(): verifyAssurance() {
		System.out.println("Request was executed successfully");
	}

}
