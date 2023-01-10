package cn.zwz.topic.entity;

import cn.zwz.basics.baseClass.ZwzBaseEntity;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.annotations.ApiModel;
import lombok.Data;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 * @author 郑为中
 */
@Data
@Entity
@DynamicInsert
@DynamicUpdate
@Table(name = "a_major")
@TableName("a_major")
@ApiModel(value = "专业")
public class Major extends ZwzBaseEntity {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "专业标题")
    private String title;

    @ApiModelProperty(value = "专业负责人Id")
    private String dutyId;

    @Transient
    @TableField(exist=false)
    @ApiModelProperty(value = "专业负责人")
    private String dutyName;

    @ApiModelProperty(value = "专业介绍")
    private String remark;
}