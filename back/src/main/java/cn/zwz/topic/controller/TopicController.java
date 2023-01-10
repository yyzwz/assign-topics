package cn.zwz.topic.controller;

import cn.zwz.basics.utils.PageUtil;
import cn.zwz.basics.utils.ResultUtil;
import cn.zwz.basics.baseVo.PageVo;
import cn.zwz.basics.baseVo.Result;
import cn.zwz.basics.utils.SecurityUtil;
import cn.zwz.data.entity.User;
import cn.zwz.data.utils.ZwzNullUtils;
import cn.zwz.topic.entity.Topic;
import cn.zwz.topic.service.ITopicService;
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
@Api(tags = "毕业设计课题管理接口")
@RequestMapping("/zwz/topic")
@Transactional
public class TopicController {

    @Autowired
    private ITopicService iTopicService;

    @Autowired
    private SecurityUtil securityUtil;

    @RequestMapping(value = "/getOne", method = RequestMethod.GET)
    @ApiOperation(value = "查询单条毕业设计课题")
    public Result<Topic> get(@RequestParam String id){
        return new ResultUtil<Topic>().setData(iTopicService.getById(id));
    }

    @RequestMapping(value = "/count", method = RequestMethod.GET)
    @ApiOperation(value = "查询全部毕业设计课题个数")
    public Result<Long> getCount(){
        return new ResultUtil<Long>().setData(iTopicService.count());
    }

    @RequestMapping(value = "/getAll", method = RequestMethod.GET)
    @ApiOperation(value = "查询全部毕业设计课题")
    public Result<List<Topic>> getAll(){
        return new ResultUtil<List<Topic>>().setData(iTopicService.list());
    }

    @RequestMapping(value = "/getByPage", method = RequestMethod.GET)
    @ApiOperation(value = "查询我发布的毕业设计课题")
    public Result<IPage<Topic>> getByPage(@ModelAttribute Topic topic ,@ModelAttribute PageVo page){
        QueryWrapper<Topic> qw = new QueryWrapper<>();
        if(!ZwzNullUtils.isNull(topic.getTitle())) {
            qw.like("title",topic.getTitle());
        }
        if(!ZwzNullUtils.isNull(topic.getType())) {
            qw.eq("type",topic.getType());
        }
        if(!ZwzNullUtils.isNull(topic.getLevel())) {
            qw.eq("level",topic.getLevel());
        }
        qw.eq("tea_id",securityUtil.getCurrUser().getId());
        IPage<Topic> data = iTopicService.page(PageUtil.initMpPage(page),qw);
        return new ResultUtil<IPage<Topic>>().setData(data);
    }

    @RequestMapping(value = "/getByUserPage", method = RequestMethod.GET)
    @ApiOperation(value = "查询我发布的毕业设计课题")
    public Result<IPage<Topic>> getByUserPage(@ModelAttribute Topic topic ,@ModelAttribute PageVo page){
        QueryWrapper<Topic> qw = new QueryWrapper<>();
        if(!ZwzNullUtils.isNull(topic.getTitle())) {
            qw.like("title",topic.getTitle());
        }
        if(!ZwzNullUtils.isNull(topic.getType())) {
            qw.eq("type",topic.getType());
        }
        if(!ZwzNullUtils.isNull(topic.getLevel())) {
            qw.eq("level",topic.getLevel());
        }
        IPage<Topic> data = iTopicService.page(PageUtil.initMpPage(page),qw);
        return new ResultUtil<IPage<Topic>>().setData(data);
    }

    @RequestMapping(value = "/getByMyPage", method = RequestMethod.GET)
    @ApiOperation(value = "查询我选的毕业设计课题")
    public Result<IPage<Topic>> getByMyPage(@ModelAttribute Topic topic ,@ModelAttribute PageVo page){
        QueryWrapper<Topic> qw = new QueryWrapper<>();
        if(!ZwzNullUtils.isNull(topic.getTitle())) {
            qw.like("title",topic.getTitle());
        }
        if(!ZwzNullUtils.isNull(topic.getType())) {
            qw.eq("type",topic.getType());
        }
        if(!ZwzNullUtils.isNull(topic.getLevel())) {
            qw.eq("level",topic.getLevel());
        }
        qw.eq("check_flag",true);
        qw.eq("check_id",securityUtil.getCurrUser().getId());
        IPage<Topic> data = iTopicService.page(PageUtil.initMpPage(page),qw);
        return new ResultUtil<IPage<Topic>>().setData(data);
    }

    @RequestMapping(value = "/insertOrUpdate", method = RequestMethod.POST)
    @ApiOperation(value = "增改毕业设计课题")
    public Result<Topic> saveOrUpdate(Topic topic){
        if(iTopicService.saveOrUpdate(topic)){
            return new ResultUtil<Topic>().setData(topic);
        }
        return ResultUtil.error();
    }

    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    @ApiOperation(value = "新增毕业设计课题")
    public Result<Topic> insert(Topic topic){
        User currUser = securityUtil.getCurrUser();
        topic.setTeaId(currUser.getId());
        topic.setTeaName(currUser.getNickname());
        iTopicService.saveOrUpdate(topic);
        return new ResultUtil<Topic>().setData(topic);
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    @ApiOperation(value = "编辑毕业设计课题")
    public Result<Topic> update(Topic topic){
        iTopicService.saveOrUpdate(topic);
        return new ResultUtil<Topic>().setData(topic);
    }

    @RequestMapping(value = "/delByIds", method = RequestMethod.POST)
    @ApiOperation(value = "删除毕业设计课题")
    public Result<Object> delByIds(@RequestParam String[] ids){
        for(String id : ids){
            iTopicService.removeById(id);
        }
        return ResultUtil.success();
    }

    @RequestMapping(value = "/checkTopic", method = RequestMethod.POST)
    @ApiOperation(value = "选择课题")
    public Result<Object> checkTopic(@RequestParam String id){
        Topic topic = iTopicService.getById(id);
        if(topic == null) {
            return ResultUtil.error("课题不存在");
        }
        User currUser = securityUtil.getCurrUser();
        topic.setCheckFlag(true);
        topic.setCheckId(currUser.getId());
        topic.setCheckName(currUser.getNickname());
        iTopicService.saveOrUpdate(topic);
        return ResultUtil.success();
    }

    @RequestMapping(value = "/checkNotTopic", method = RequestMethod.POST)
    @ApiOperation(value = "取消选择课题")
    public Result<Object> checkNotTopic(@RequestParam String id){
        Topic topic = iTopicService.getById(id);
        if(topic == null) {
            return ResultUtil.error("课题不存在");
        }
        topic.setCheckFlag(false);
        topic.setCheckId("");
        topic.setCheckName("");
        topic.setAuditFlag(false);
        iTopicService.saveOrUpdate(topic);
        return ResultUtil.success();
    }

    @RequestMapping(value = "/auditTopic", method = RequestMethod.POST)
    @ApiOperation(value = "审核课题")
    public Result<Object> auditTopic(@RequestParam String id){
        Topic topic = iTopicService.getById(id);
        if(topic == null) {
            return ResultUtil.error("课题不存在");
        }
        topic.setAuditFlag(true);
        iTopicService.saveOrUpdate(topic);
        return ResultUtil.success();
    }

    @RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
    @ApiOperation(value = "上传任务书")
    public Result<Object> uploadFile(@RequestParam String id,@RequestParam String file){
        Topic topic = iTopicService.getById(id);
        if(topic == null) {
            return ResultUtil.error("课题不存在");
        }
        topic.setTaskFile(file);
        iTopicService.saveOrUpdate(topic);
        return ResultUtil.success();
    }
}
