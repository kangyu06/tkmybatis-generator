package ${package?substring(0,package?last_index_of('$'))}${tableClass.lowerCaseName}.response;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

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
@ApiModel(value = "${tableClass.shortClassName}响应对象")
public class ${tableClass.shortClassName}Rsp {

<#if tableClass.allFields??>
<#list tableClass.allFields as field>
    @ApiModelProperty(value = "${field.remarks!''}")
    private ${field.shortTypeName} ${field.fieldName};

</#list>
</#if>

}




