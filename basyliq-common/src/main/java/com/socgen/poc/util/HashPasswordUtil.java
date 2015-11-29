package com.socgen.poc.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Scanner;

public class HashPasswordUtil {
	public static void main(String[] args) throws Exception {
		while (true) {
			Scanner scanner = new Scanner(System.in);
			System.out.print("Enter Password to hash:");
			String password = scanner.nextLine();

			String hexString = hashPassword(password);
			System.out.println("Hex format : " + hexString.toString());
		}
	}

	public static String hashPassword(String password)
			throws NoSuchAlgorithmException {
		MessageDigest md = MessageDigest.getInstance("SHA-256");
		md.update(password.getBytes());

		byte byteData[] = md.digest();

		// convert the byte to hex format method 1
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < byteData.length; i++) {
			sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16)
					.substring(1));
		}

//		System.out.println("Hex format : " + sb.toString());
//		System.out.println("Hex format lenght: " + sb.length());
//
//		// convert the byte to hex format method 2
//		StringBuffer hexString = new StringBuffer();
//		for (int i = 0; i < byteData.length; i++) {
//			String hex = Integer.toHexString(0xff & byteData[i]);
//			if (hex.length() == 1)
//				hexString.append('0');
//			hexString.append(hex);
//		}
		return sb.toString();
	}
}
