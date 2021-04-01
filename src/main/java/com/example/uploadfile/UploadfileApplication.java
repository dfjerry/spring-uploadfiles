package com.example.uploadfile;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.io.File;

@SpringBootApplication
public class UploadfileApplication {

    public static void main(String[] args) {
        new File(UploadingController.uploadingDir).mkdir();//mkdir goi ra de tao thu muc
        SpringApplication.run(UploadfileApplication.class, args);
    }

}
