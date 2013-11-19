package com.ecommerce.util;

import java.io.File;
import java.io.IOException;

import org.apache.commons.io.FileUtils;

import com.ecommerce.constant.DirectoryPrefix;

public class DirectoryUtil {

	private static final String root = "C:/DEV/Apache/htdocs/";
	
	private static final long maxDirectorySize = 1024 * 1024 * 1; // 1MB
	/**
	 * The upload directory will be prepared (eg. "product_images" directory)  // setUpladDirectory("product_images");
	 * This method will check destination with directories
	 * @param destination "product_images","brand_images" ..
	 * @return File
	 */
	public File prepareUploadDirectory(String destination) throws IOException{
		File destDirectory = new File(root + destination);
		
		if(destination.equals(DirectoryPrefix.PRODUCT_DIRECTORY.getDirectoryPrefix())){
			if(checkDirectorySize(destDirectory)){
				// create new directory with timestamp prefix (eg. "product_images_1384903499")
				// and get its name
				// if the directory does not exist, create it
				
				if (!destDirectory.exists()) {
					System.out.println("Creating new product_images directory as: " + destination + System.currentTimeMillis());
					boolean result = destDirectory.mkdir();  

					if(result){
						System.out.println(DirectoryPrefix.PRODUCT_DIRECTORY.getDirectoryPrefix() + " created under the "+ root + "root");
					}
				}
				
				return null; // Return created directory file as a file object
			}else{
				// Found directory with enough space
				return null; // Return found directory as a file object<
			}
		}else if(destination.equals(DirectoryPrefix.BRAND_DIRECTORY.getDirectoryPrefix())){
			if(checkDirectorySize(destDirectory)){
				// create new directory with timestamp prefix (eg. "product_images_1384903499")
				// and get its name
				return null; // Return created directory file as a file object
			}else{
				// Found directory with enough space
				return null; // Return found directory as a file object<
			}
		}else{
			return null;
		}
		
	}
	
	/**
	 * Check if directorySize greatest than maxDirectorySize
	 * @param directoryName
	 * @return
	 */
	public boolean checkDirectorySize(File directoryName) throws IOException{
		
		File directory = directoryName;
		long size = FileUtils.sizeOfDirectory(directory);
		
		if(size >= DirectoryUtil.maxDirectorySize){
			return true;
		}
		
		return false;
	}
	
}
