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
 * 角色物品需求表
 * </p>
 *
 * @author zhaowei
 * @since 2023-03-05
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@ApiModel(value="EmpItemReq对象", description="角色物品需求表")
public class EmpItemReq implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "主键")
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "角色ID")
    private Integer empId;

    @ApiModelProperty(value = "类型")
    private Integer type;

    @ApiModelProperty(value = "等级")
    private Integer level;

    @ApiModelProperty(value = "物品ID")
    private Integer itemId;

    @ApiModelProperty(value = "需求")
    private Integer required;


}
