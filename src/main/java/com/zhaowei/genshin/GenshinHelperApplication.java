package com.zhaowei.genshin;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan({"com.zhaowei"})//扫描指定位置
@MapperScan("com.zhaowei.genshin.mapper")
public class GenshinHelperApplication {

    public static void main(String[] args) {
        SpringApplication.run(GenshinHelperApplication.class, args);
    }

}
