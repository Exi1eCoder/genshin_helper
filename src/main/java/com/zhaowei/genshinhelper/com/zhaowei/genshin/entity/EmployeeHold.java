package com.zhaowei.genshin.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 角色持有状态表
 * </p>
 *
 * @author zhaowei
 * @since 2023-03-05
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@ApiModel(value="EmployeeHold对象", description="角色持有状态表")
public class EmployeeHold implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "主键")
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "用户ID")
    private Integer uid;

    @ApiModelProperty(value = "角色ID")
    private Integer eid;

    @ApiModelProperty(value = "持有状态")
    private Integer eStatus;

    @ApiModelProperty(value = "当前等级")
    private Integer currLv;

    @ApiModelProperty(value = "目标等级")
    private Integer tarLv;

    @ApiModelProperty(value = "普通攻击当前等级")
    private Integer s1CurrLv;

    @ApiModelProperty(value = "普通攻击目标等级")
    private Integer s1TarLv;

    @ApiModelProperty(value = "元素战技当前等级")
    private Integer s2CurrLv;

    @ApiModelProperty(value = "元素战技目标等级")
    private Integer s2TarLv;

    @ApiModelProperty(value = "元素爆发当前等级")
    private Integer s3CurrLv;

    @ApiModelProperty(value = "元素爆发目标等级")
    private Integer s3TarLv;


}
