package com.example.demo;


import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

@Service
public class LoginService {

    public boolean validateUser(String userid, String password) {
  
        return userid.equalsIgnoreCase("ayushi")
                && password.equalsIgnoreCase("2796");
    }

}