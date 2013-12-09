package com.ecommerce.security;

import java.security.Key;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

public class PasswordEncryption {
	
	private static final String ALGORITHM = "AES";
	private static final byte[] keyValue = new byte[] { 'X', 'y', 'b', 'C', 't', 'm', 'R', 'v', 'Q', 'f', 'z','Y', 'h', 'l', 'w', 'p' };
	
	public static String encrypt(String Data) throws Exception {
		
		Key key = generateKey();
        
        Cipher cipher = Cipher.getInstance(ALGORITHM);
        cipher.init(Cipher.ENCRYPT_MODE, key);
        
        byte[] encPass = cipher.doFinal(Data.getBytes());
        
        String encryptedValue = new BASE64Encoder().encode(encPass);
        
        return encryptedValue;
	}
	
	public static String decrypt(String encryptedPass) throws Exception {
    	
    	Key key = generateKey();
        
        Cipher cipher = Cipher.getInstance(ALGORITHM);
        cipher.init(Cipher.DECRYPT_MODE, key);
        
        byte[] decodedPass = new BASE64Decoder().decodeBuffer(encryptedPass);
        byte[] decPass = cipher.doFinal(decodedPass);
        
        String decryptedValue = new String(decPass);
        
        return decryptedValue;
    }
    private static Key generateKey() throws Exception {
        Key key = new SecretKeySpec(keyValue, ALGORITHM);
        return key;
    }
}
