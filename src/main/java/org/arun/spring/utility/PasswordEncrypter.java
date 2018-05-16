package org.arun.spring.utility;

public class PasswordEncrypter {

	public static void main(String[] args) {
		String str = encryption("raghu");
		System.out.println(str);
	}

	public static String encryption(String password) {
		String encrypt = "";

		encrypt = password + "1234567890";

		StringBuffer buffer = new StringBuffer();

		for (int i = 0; i < encrypt.length(); i++) {
			buffer.append(encrypt.charAt(i) + 1);
		}

		return buffer.toString();

	}

}
