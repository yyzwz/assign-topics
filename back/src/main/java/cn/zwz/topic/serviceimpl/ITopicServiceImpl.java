package cn.zwz.topic.serviceimpl;

import cn.zwz.topic.mapper.TopicMapper;
import cn.zwz.topic.entity.Topic;
import cn.zwz.topic.service.ITopicService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 毕业设计课题 服务层接口实现
 * @author 郑为中
 */
@Slf4j
@Service
@Transactional
public class ITopicServiceImpl extends ServiceImpl<TopicMapper, Topic> implements ITopicService {

    @Autowired
    private TopicMapper topicMapper;
}