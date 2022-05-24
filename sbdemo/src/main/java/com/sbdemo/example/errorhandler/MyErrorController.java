package com.sbdemo.example.errorhandler;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.web.bind.annotation.RequestMapping;

public class MyErrorController implements ErrorController  {

	    @RequestMapping("/error2")
	    public String handleError() {
	        return "message from error controller";
	    }
}
