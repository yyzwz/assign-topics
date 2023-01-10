package cn.zwz.topic.controller;

import cn.zwz.basics.utils.PageUtil;
import cn.zwz.basics.utils.ResultUtil;
import cn.zwz.basics.baseVo.PageVo;
import cn.zwz.basics.baseVo.Result;
import cn.zwz.data.utils.ZwzNullUtils;
import cn.zwz.topic.entity.Major;
import cn.zwz.topic.service.IMajorService;
import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author 郑为中
 */
@Slf4j
@RestController
@Api(tags = "专业管理接口")
@RequestMapping("/zwz/major")
@Transactional
public class MajorController {

    @Autowired
    private IMajorService iMajorService;

    @RequestMapping(value = "/getOne", method = RequestMethod.GET)
    @ApiOperation(value = "查询单条专业")
    public Result<Major> get(@RequestParam String id){
        return new ResultUtil<Major>().setData(iMajorService.getById(id));
    }

    @RequestMapping(value = "/count", method = RequestMethod.GET)
    @ApiOperation(value = "查询全部专业个数")
    public Result<Long> getCount(){
        return new ResultUtil<Long>().setData(iMajorService.count());
    }

    @RequestMapping(value = "/getAll", method = RequestMethod.GET)
    @ApiOperation(value = "查询全部专业")
    public Result<List<Major>> getAll(){
        return new ResultUtil<List<Major>>().setData(iMajorService.list());
    }

    @RequestMapping(value = "/getByPage", method = RequestMethod.GET)
    @ApiOperation(value = "查询专业")
    public Result<IPage<Major>> getByPage(@ModelAttribute Major major ,@ModelAttribute PageVo page){
        QueryWrapper<Major> qw = new QueryWrapper<>();
        if(!ZwzNullUtils.isNull(major.getTitle())) {
            qw.like("title",major.getTitle());
        }
        IPage<Major> data = iMajorService.page(PageUtil.initMpPage(page),qw);
        return new ResultUtil<IPage<Major>>().setData(data);
    }

    @RequestMapping(value = "/insertOrUpdate", method = RequestMethod.POST)
    @ApiOperation(value = "增改专业")
    public Result<Major> saveOrUpdate(Major major){
        if(iMajorService.saveOrUpdate(major)){
            return new ResultUtil<Major>().setData(major);
        }
        return ResultUtil.error();
    }

    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    @ApiOperation(value = "新增专业")
    public Result<Major> insert(Major major){
        iMajorService.saveOrUpdate(major);
        return new ResultUtil<Major>().setData(major);
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    @ApiOperation(value = "编辑专业")
    public Result<Major> update(Major major){
        iMajorService.saveOrUpdate(major);
        return new ResultUtil<Major>().setData(major);
    }

    @RequestMapping(value = "/delByIds", method = RequestMethod.POST)
    @ApiOperation(value = "删除专业")
    public Result<Object> delByIds(@RequestParam String[] ids){
        for(String id : ids){
            iMajorService.removeById(id);
        }
        return ResultUtil.success();
    }
}
