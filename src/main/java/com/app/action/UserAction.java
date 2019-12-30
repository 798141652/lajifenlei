package com.app.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.app.dao.UserDao;
import com.app.model.User;
import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")

public class UserAction extends ActionSupport implements SessionAware {

	private static final long serialVersionUID = 1L;
	/* 业务层对象 */
	@Resource
	UserDao userDao;
	private User user;
	private File userPhoto;
	private String UserPhotoFileName;
	private String UserPhotoContentType;
	private List<User> userList;

	private Map<String, Object> session;
	private String prePage;

	public List<User> getUserList() {
		return userList;
	}

	public void setUserList(List<User> userList) {
		this.userList = userList;
	}

	public File getUserPhoto() {
		return userPhoto;
	}

	public void setUserPhoto(File userPhoto) {
		this.userPhoto = userPhoto;
	}

	public String getUserPhotoFileName() {
		return UserPhotoFileName;
	}

	public void setUserPhotoFileName(String userPhotoFileName) {
		UserPhotoFileName = userPhotoFileName;
	}

	public String getUserPhotoContentType() {
		return UserPhotoContentType;
	}

	public void setUserPhotoContentType(String userPhotoContentType) {
		UserPhotoContentType = userPhotoContentType;
	}

	public String getPrePage() {
		return prePage;
	}

	public void setPrePage(String prePage) {
		this.prePage = prePage;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	private String errMessage;

	public String getErrMessage() {
		return errMessage;
	}

	public void setErrMessage(String errMessage) {
		this.errMessage = errMessage;
	}

	public String showDetail() {
		user = userDao.QueryUserInfo(user.getUsername()).get(0);
		return "detail_view";
	}

	public String reg() throws Exception {

		String path = ServletActionContext.getServletContext().getRealPath("/upload");
		/* 处理图片上传 */
		String userPhotoFileName = "";
		if (userPhoto != null) {
			InputStream is = new FileInputStream(userPhoto);
			String fileContentType = this.getUserPhotoContentType();
			System.out.println(fileContentType);
			if (fileContentType.equals("image/jpeg") || fileContentType.equals("image/pjpeg"))
				userPhotoFileName = UUID.randomUUID().toString() + ".jpg";
			else if (fileContentType.equals("image/gif"))
				userPhotoFileName = UUID.randomUUID().toString() + ".gif";
			else if (fileContentType.equals("image/png"))
				userPhotoFileName = UUID.randomUUID().toString() + ".png";

			File file = new File(path, userPhotoFileName);
			OutputStream os = new FileOutputStream(file);
			byte[] b = new byte[1024];
			int bs = 0;
			while ((bs = is.read(b)) > 0) {
				os.write(b, 0, bs);
			}
			is.close();
			os.close();
		}
		if (userPhoto != null)
			user.setPhotopath("upload/" + userPhotoFileName);
		else
			user.setPhotopath("upload/NoImage.jpg");

		userDao.AddUser(user);
		session.put("user", user);
		return "show_view";
	}

	/* 验证用户登录 */
	public String login() {
		ArrayList<User> listUser = userDao.QueryUserInfo(user.getUsername());
		if (listUser.size() == 0) {

			this.errMessage = " 账号不存在 ";
			System.out.print(this.errMessage);
			return "fail";

		} else {

			User db_user = listUser.get(0);
			if (!db_user.getPassword().equals(user.getPassword())) {

				this.errMessage = " 密码不正确! ";
				System.out.print(this.errMessage);
				return "fail";

			} else {

				session.put("user", db_user);
				prePage = (String) session.get("prePage");
				System.out.println("将要跳转到" + prePage);
				session.remove("prePage");
				if (prePage == null)
					return "success";
				else
					return "re-success";
			}
		}
	}

	public String editUser() throws Exception {

		String path = ServletActionContext.getServletContext().getRealPath("/upload");
		/* 处理图片上传 */
		String UserPhotoFileName = "";
		if (userPhoto != null) {
			InputStream is = new FileInputStream(userPhoto);
			String fileContentType = this.getUserPhotoContentType();
			System.out.println(fileContentType);
			if (fileContentType.equals("image/jpeg") || fileContentType.equals("image/pjpeg"))
				UserPhotoFileName = UUID.randomUUID().toString() + ".jpg";
			else if (fileContentType.equals("image/gif"))
				UserPhotoFileName = UUID.randomUUID().toString() + ".gif";
			else if (fileContentType.equals("image/png"))
				UserPhotoFileName = UUID.randomUUID().toString() + ".png";

			File file = new File(path, UserPhotoFileName);
			OutputStream os = new FileOutputStream(file);
			byte[] b = new byte[1024];
			int bs = 0;
			while ((bs = is.read(b)) > 0) {
				os.write(b, 0, bs);
			}
			is.close();
			os.close();
		}
		if (userPhoto != null)
			user.setPhotopath("upload/" + UserPhotoFileName);
		else
			user.setPhotopath("upload/NoImage.jpg");
		
		session.put("user", user);
		userDao.UpdateUser(user);
		return "edit_message";
	}
	/*查询所有的用户信息*/
	public String queryUsers()throws Exception{
		userList = userDao.QueryAllUser();
		return "show_allUser";
	}

	public String logout() {
		session.remove("user");
		return "logout_success";
	}
}
