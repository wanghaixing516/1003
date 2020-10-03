package com.kgc.service.impl;

import com.kgc.entity.Studentinfo;
import com.kgc.mapper.StudentinfoMapper;
import com.kgc.service.StudentinfoService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class StudentinfoServiceImpl implements StudentinfoService {
    @Resource
    StudentinfoMapper studentinfoMapper;
    @Override
    public List<Studentinfo> selectAll() {
        return studentinfoMapper.selectByExample(null);
    }

    @Override
    public Studentinfo selectById(Integer sid) {
        return studentinfoMapper.selectByPrimaryKey(sid);
    }

    @Override
    public int upd(Studentinfo studentinfo) {
        return studentinfoMapper.updateByPrimaryKey(studentinfo);
    }
}
