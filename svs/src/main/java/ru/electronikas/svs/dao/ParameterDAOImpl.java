package ru.electronikas.svs.dao;


import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import ru.electronikas.svs.domain.Parameter;

import java.util.List;

@Repository
public class ParameterDAOImpl implements ParameterDAO {

//    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void add(Parameter parameter) {
        sessionFactory.getCurrentSession().save(parameter);    //3
    }

    @SuppressWarnings("unchecked")
    @Override
    public List<Parameter> listParametersByUser(String user) {
        return sessionFactory.getCurrentSession().createQuery("from parameter")
                .list();
    }

    @Override
        public void delete(Integer parameterId) {
            Parameter parameter = (Parameter) sessionFactory.getCurrentSession().load(Parameter.class, parameterId);
            if (null != parameter) {
                sessionFactory.getCurrentSession().delete(parameter);

            }
    //        sessionFactory.getCurrentSession().createQuery("delete from Word wr where wr.id=:id").setParameter("id",parameterId);
        }

}
