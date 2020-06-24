package ${package?substring(0,package?last_index_of('$'))}${tableClass.lowerCaseName}.request;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import javax.validation.constraints.NotNull;

<#if tableClass.allFields??>
    <#list tableClass.allFields as field>
<#if field.typePackage != "java.lang">
import ${field.fullTypeName};
</#if>
    </#list>
</#if>

/**
 * @author generator
 */
@Data
@Builder
@Accessors(chain = true)
@AllArgsConstructor
@NoArgsConstructor
@ApiModel(value = "${tableClass.shortClassName}请求对象")
public class ${tableClass.shortClassName}Req {

<#if tableClass.allFields??>
<#list tableClass.allFields as field>
    @NotNull(message = "${field.remarks!''}不能为Null")
    @ApiModelProperty(value = "${field.remarks!''}")
    private ${field.shortTypeName} ${field.fieldName};

</#list>
</#if>

}




