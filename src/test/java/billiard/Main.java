package billiard;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.billiard.dao.RoleMapper;
import com.billiard.entity.Role;
import com.billiard.entity.RoleExample;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "classpath:applicationContext.xml"})
public class Main {

	@Autowired
	RoleMapper roleMapper;
	
	@Test
	public void getList() {
		RoleExample example = new RoleExample();
		System.out.println(roleMapper.selectByExample(example));
	}

}
