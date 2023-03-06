package com.zhaowei.genshin.controller;


import com.zhaowei.genshin.entity.Employee;
import com.zhaowei.genshin.service.EmployeeService;
import com.zhaowei.genshin.utils.ResponseInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * <p>
 * 角色表 前端控制器
 * </p>
 *
 * @author zhaowei
 * @since 2023-03-05
 */
@RestController
@RequestMapping("/genshin/employee")
public class EmployeeController {

    @Autowired
    EmployeeService employeeService;

    @GetMapping("findAll")
    public ResponseInfo findAllEmployee(){
        List<Employee> employeeList = employeeService.list(null);
        return ResponseInfo.ok().data("employeeList",employeeList);
    }
}

