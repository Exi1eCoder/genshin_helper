package com.zhaowei.genshin.utils;

import com.baomidou.mybatisplus.extension.api.R;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.HashMap;
import java.util.Map;

@Data
public class ResponseInfo {
    @ApiModelProperty(value = "是否成功")
    private Boolean success;

    @ApiModelProperty(value = "返回码")
    private Integer code;

    @ApiModelProperty(value = "返回消息")
    private String message;

    @ApiModelProperty(value = "返回数据")
    private Map<String, Object> data = new HashMap<String, Object>();

    //构造器私有化
    private ResponseInfo() {
    }

    //成功静态方法
    public static ResponseInfo ok() {
        ResponseInfo responseInfo = new ResponseInfo();
        responseInfo.setSuccess(true);
        responseInfo.setCode(ResultCode.SUCCESS);
        responseInfo.setMessage("成功");
        return responseInfo;
    }

    //失败静态方法
    public static ResponseInfo error() {
        ResponseInfo responseInfo = new ResponseInfo();
        responseInfo.setSuccess(false);
        responseInfo.setCode(ResultCode.ERROR);
        responseInfo.setMessage("失败");
        return responseInfo;
    }

    public ResponseInfo success(Boolean success) {
        this.setSuccess(success);
        return this;
    }

    public ResponseInfo message(String message) {
        this.setMessage(message);
        return this;
    }

    public ResponseInfo code(Integer code) {
        this.setCode(code);
        return this;
    }

    public ResponseInfo data(String key, Object value) {
        this.data.put(key, value);
        return this;
    }

    public ResponseInfo data(Map<String, Object> map) {
        this.setData(map);
        return this;
    }
}
