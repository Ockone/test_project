package interceptor;

import org.apache.struts2.ServletActionContext;

import com.entity.User;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

@SuppressWarnings("serial")
public class UserLoginInterceptor extends MethodFilterInterceptor {

	// 执行拦截的方法
	protected String doIntercept(ActionInvocation actionInvocation) throws Exception {
		// TODO Auto-generated method stub
		// 判断session中是否保存了后台用户的信息
		User currUser = (User)ServletActionContext.getRequest().getSession()
				.getAttribute("currUser");
		if (currUser == null) {
			// 没有登录就进行访问了
			ActionSupport actionSupport = (ActionSupport) actionInvocation.getAction();
			actionSupport.addActionError("亲，您还没有登录，没有权限访问！");
			return "loginFail";
		} else {
			// 已经登录过了
			return actionInvocation.invoke();
		}
	}
}
