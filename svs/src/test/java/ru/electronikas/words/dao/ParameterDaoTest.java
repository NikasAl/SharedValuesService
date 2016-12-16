package ru.electronikas.words.dao;

import org.junit.Assert;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;
import ru.electronikas.svs.dao.ParameterDAO;
import ru.electronikas.svs.domain.Parameter;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations = {"classpath:*/root-context.xml"})
public class ParameterDaoTest {

    @Autowired
    ParameterDAO dao;

    @Test
    @Transactional
    @Ignore
    public void daoTest() {
        List<Parameter> words = dao.listParametersByUser("user1");
        int size = words.size();

        Parameter word = new Parameter();
        word.setName("engword");
        word.setValue("rusword");
        dao.add(word);

        words = dao.listParametersByUser("user1");
        Assert.assertEquals(size + 1,words.size());
    }

}
