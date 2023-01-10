package cn.zwz.topic.serviceimpl;

import cn.zwz.topic.mapper.MajorMapper;
import cn.zwz.topic.entity.Major;
import cn.zwz.topic.service.IMajorService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 专业 服务层接口实现
 * @author 郑为中
 */
@Slf4j
@Service
@Transactional
public class IMajorServiceImpl extends ServiceImpl<MajorMapper, Major> implements IMajorService {

    @Autowired
    private MajorMapper majorMapper;
}