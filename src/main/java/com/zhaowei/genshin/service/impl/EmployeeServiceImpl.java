package com.zhaowei.genshin.service.impl;

import com.zhaowei.genshin.entity.Employee;
import com.zhaowei.genshin.mapper.EmployeeMapper;
import com.zhaowei.genshin.service.EmployeeService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 角色表 服务实现类
 * </p>
 *
 * @author zhaowei
 * @since 2023-03-05
 */
@Service
public class EmployeeServiceImpl extends ServiceImpl<EmployeeMapper, Employee> implements EmployeeService {

}
