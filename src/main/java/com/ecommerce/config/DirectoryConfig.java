package com.ecommerce.config;

import java.io.File;
import java.io.IOException;

import org.apache.commons.io.FileUtils;

import com.ecommerce.constant.DirectoryPrefix;

public class DirectoryConfig {

	private static final String root = "C:/DEV/nginx-1.5.7/root/";
	
	private static final long maxDirectorySize = 1024 * 1024 * 1; // 1MB
	
	private File newDestDir;
	
	private boolean status = false;
	
	public File getNewDestDir(){
		return this.newDestDir;
	}
	
	public void setNewDestDir(File newDestDir){
		this.newDestDir = newDestDir;
	}
	
	/**
	 * The upload directory will be prepared (eg. "product_images" directory)  // setUpladDirectory("product_images");
	 * This method will check destination with directories
	 * @param destination "product_images","brand_images" ..
	 * @return File
	 */
	public File prepareUploadDirectory(String destination) throws IOException{
		
		File rootDirectory = new File(root);
		
		if(destination.equals(DirectoryPrefix.PRODUCT_DIRECTORY.getDirectoryPrefix())){
				// create new directory with timestamp prefix (eg. "product_images_1384903499")
				// and get its name
				// if the directory does not exist, create it
			if(rootDirectory.listFiles().length > 0){
				for(File child : rootDirectory.listFiles()){
					if(child.getName().startsWith(DirectoryPrefix.PRODUCT_DIRECTORY.getDirectoryPrefix())){
						if(checkDirectorySize(child)){
							setNewDestDir(new File(root + destination + "_" + System.currentTimeMillis()));
							getNewDestDir().mkdir();
							return getNewDestDir();
						}
						else{
							return child;
						}
					}
					else{
						status = true;
					}
				}
				if(status){
					setNewDestDir(new File(root + destination + "_" + System.currentTimeMillis()));
					getNewDestDir().mkdir();
					return getNewDestDir();
				}
				return getNewDestDir();
			}
			else{
				setNewDestDir(new File(root + destination + "_" + System.currentTimeMillis()));
				getNewDestDir().mkdir();
				return getNewDestDir();
			}
		}else if(destination.equals(DirectoryPrefix.BRAND_DIRECTORY.getDirectoryPrefix())){
			if(rootDirectory.listFiles().length > 0){
				for(File child : rootDirectory.listFiles()){
					if(child.getName().startsWith(DirectoryPrefix.BRAND_DIRECTORY.getDirectoryPrefix())){
						if(checkDirectorySize(child)){
							setNewDestDir(new File(root + destination + "_" + System.currentTimeMillis()));
							getNewDestDir().mkdir();
							return getNewDestDir();
						}
						else{
							return child;
						}
					}else{
						setNewDestDir(new File(root + destination + "_" + System.currentTimeMillis()));
						getNewDestDir().mkdir();
						return getNewDestDir();
					}
				}
				return newDestDir;
			}else{
				setNewDestDir(new File(root + destination + "_" + System.currentTimeMillis()));
				getNewDestDir().mkdir();
				return getNewDestDir();
			}
		}else{
			return null;
		}
		
	}
	
	/**
	 * Check if directorySize greater than maxDirectorySize
	 * @param file
	 * @return
	 */
	public boolean checkDirectorySize(File file) throws IOException{
		
		File directory = file;
		long size = FileUtils.sizeOfDirectory(directory);
		
		if(size >= DirectoryConfig.maxDirectorySize){
			return true;
		}
		
		return false;
	}
	
}
