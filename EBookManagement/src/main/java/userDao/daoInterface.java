package userDao;

import userBean.RegisterBean;

public interface daoInterface
{
	public boolean saveData(RegisterBean regBean);
	public RegisterBean loginData(String email,String pass);
}
