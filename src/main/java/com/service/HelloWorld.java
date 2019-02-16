package com.service;

import javax.jws.WebParam;
import javax.jws.WebService;

@WebService
public interface HelloWorld {
    public String say(@WebParam(name="str")  String str);
}
