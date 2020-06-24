package ${targetPackage};

import com.ess.framework.api.response.ApiResponse;
import com.ess.framework.boot.gloabl.AbstractController;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.web.bind.annotation.RestController;
import javax.validation.constraints.NotNull;

/**
 * @author generator
 */
@RefreshScope
@Api(value = "${tableClass.shortClassName}Controller", tags = "${tableClass.shortClassName}接口")
@RestController
@RequestMapping("/${tableClass.variableName}")
public class ${tableClass.shortClassName}Controller extends AbstractController implements ${tableClass.shortClassName}FeignClient {

    @Autowired
    ${tableClass.shortClassName}Service service;

    @ApiOperation("演示")
    @GetMapping(value="/demo")
    public ApiResponse<?> demo(@ApiParam("id") @NotNull(message = "id不能为Null") @RequestParam("id") String id){
        return null;
    }
}
